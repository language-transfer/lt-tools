# Language Transfer content builds

Course definitions and expected file hashes live in `courses/*.nix`. Nix builds
one fixed-output derivation per source and audio variant, then assembles the
JSON metadata and content-addressed release. Media is not stored in Git and is
not licensed under the repository's code license.

The supported builder is **x86_64 Linux**. `flake.lock` pins the toolchain;
`nix/ffmpeg.nix` pins separate FFmpeg 8.0 and 8.0.3 sources and builds against
musl. See [the FFmpeg notes](nix/README.md) for why the libc and versions matter.

## Import sources and existing audio

Import the sources using the hashes recorded in the course modules:

```sh
nix run .#import-source -- data/core

# Optional: reuse an existing directory of computed files.
nix run .#import-computed -- /path/to/cas
nix build .#cas --keep-going
# Imported audio is reused; this checks packaging, not reproducibility.
```

The importer verifies every source against its declared SHA-256, adds the file
to the Nix store, and roots it under `.gc-roots/source/`. It never modifies the
input directory. Course lists and integrity sidecars in that directory are no
longer inputs; the Nix course modules replace them.

`result/` contains `all-courses.json` and objects at `<first-two-hash-chars>/<rest>`.
It uses symlinks to store objects; **dereference symlinks when copying it out**:

```sh
mkdir -p data/courses
cp -RL result/. data/courses/
```

The copied directory is self-contained. Upload hashed objects append-only, then
publish the new `all-courses.json` deliberately. Do not delete old server objects:
existing installations may still reference them. The build does not publish.

To build just one course:

```sh
nix build .#course-arabic --keep-going
# Equivalent: ./build-for-language.sh arabic --keep-going
```

## Compare and publish a release

Compare the exact local release with freshly fetched published metadata:

```sh
nix run .#release-cas -- result
# Also list every added media reference (changed/removed ones are always listed):
nix run .#release-cas -- result --details
```

This fetches `https://downloads.languagetransfer.org/all-courses.json` with a
cache-busting query and no-cache headers, walks its course JSON pointers, and
verifies those JSON hashes. It also checks the local release's object hashes
and pointer sizes. It does not build, import, or download published audio.

The report shows the root and course JSON changes, including old/new course
JSON hashes and semantic changes such as titles, durations, and ordering. It
matches media by course ID, lesson ID, and variant. New variants are additions;
changes to an existing media pointer receive a prominent warning. Old objects
are never invalidated or removed: these are changes to what clients following
the new root will request. Reported bytes count unique media newly referenced
relative to the published tree, not predicted device downloads or an inventory
of everything already uploaded to the bucket. IDs are positional, so inserting
lessons can appear as many changed references.

To review again and then offer an interactive upload:

```sh
nix run .#release-cas -- result --upload
# Defaults to the destination from the old upload instructions:
# --remote lt-r2:lt-app-cas
```

Publishing requires a terminal and typing `publish lt-r2:lt-app-cas` at the
prompt. There is no `--yes` or noninteractive mode. The existing rclone config
supplies credentials; the command includes rclone through Nix. For another
publication, use `--published-root URL` and `--remote REMOTE:PATH` explicitly.
The destination's current root must match the freshly fetched public root.

The uploader snapshots the reviewed root bytes and resolves object symlinks,
then runs `rclone copy --copy-links --immutable --checksum` for hashed objects.
It never syncs or deletes remote files. A conflicting existing object causes a
failure rather than an overwrite. Only after that succeeds does it run
`rclone copyto` for `all-courses.json`, and then check the destination root.
If copying fails, added objects may remain, but the root is not advanced.

The root is rechecked before uploading and before publishing to detect another
release arriving during the review. This is not an atomic compare-and-swap:
use one publisher at a time. If the public CDN and bucket roots disagree, wait
for propagation and compare again. No upload is attempted until confirmation.

## Reuse, regeneration, and retention

Resolution is: matching local store object, configured Nix binary cache, then
our builder. The builder tries the known hash on the CAS and, for audio, runs
the pinned recipe if fetching fails. Nix checks the final bytes against the
expected hash. Sources have no generation step: import them locally, or make
them available on the CAS. A download that succeeds with the wrong bytes fails
Nix's hash check.

A builder's dependencies are prepared before it runs, so source files must be
available even if the builder eventually downloads the finished audio.

```sh
nix build .#hq --keep-going       # All HQ outputs, separate derivations
nix build .#audio --keep-going    # All three variants
nix build .#retained -o .gc-roots/content
```

The retained target keeps both sources and the release alive. A normal `result`
link keeps its release and referenced audio, but source files need the importer
roots or the retained target. Keep those symlinks to preserve the objects across
Nix garbage collection.

Existing audio directories can be imported without re-encoding:

```sh
nix run .#import-computed -- /path/to/cas
```

This verifies the declared audio hashes and roots the imported files under
`.gc-roots/computed/`. It tries known paths and hash filenames (including the
release's two-level layout), then scans remaining files by their actual hashes.
It does not interpret Dagger cache keys. Verified matches are imported and rooted even when other files are missing or
invalid. Missing files are listed at the end and the command exits with status 1;
successful imports remain retained. Use `--dry-run` to verify without importing, and `--course ID`
or `--track FILENAME` to select a subset (also supported by `import-source`).
No separate cache manifest is needed; the import plan comes from the course
modules.

## Test audio reproducibility

Normal builds obtain pinned bytes from the Nix store, a binary cache, the CAS,
or the encoding recipe. Nix checks built/downloaded outputs against their pins;
this is always part of the build, not a separate verification command.

The separate reproducibility test forces the recipes to run even when outputs
are already cached. It disables CAS fetching for those recipes and uses
`--rebuild` on individual outputs, testing HQ first and then LQ/MOV. A mismatch
fails the test; it never changes pins. Each pass runs sequential batches of at
most 64 outputs, with Nix handling parallelism inside each batch. Progress labels
show the pass and batch number. A failed batch stops the test before later
batches or dependent passes.

```sh
nix run .#test-audio-reproducibility
# Limit the test to a course or track:
nix run .#test-audio-reproducibility -- --course arabic --track arabic004.mp3
# Print the commands without building anything:
nix run .#test-audio-reproducibility -- --course arabic --dry-run
```

Use `--stage hq` or `--stage derived` to run just one pass. This test is optional
and separate from producing a release; normal builds retain all cache reuse.

## New tracks and changed recipes

Add a filename to the course's `tracks` list and a named declaration to `pins`:

```nix
"arabic039.mp3" = {
  source = lib.fakeHash;
  computed = {
    hq = lib.fakeHash;
    lq = lib.fakeHash;
    hqMov = lib.fakeHash;
  };
};
```

For new course modules, also add them to `courses/default.nix` and make the
files visible to Git (`git add -N courses/new-course.nix`) so the flake sees them.
Keep source files outside Git, under `CORE/courses/COURSE/tracks/FILENAME`.
Record the source hash, review it, then import its bytes:

```sh
nix run .#record-hashes -- --core /path/to/core --course arabic --track arabic039.mp3
# Repeat with --write to accept the proposed source hash.
nix run .#import-source -- /path/to/core --course arabic --track arabic039.mp3
```

Build HQ first. A `lib.fakeHash` deliberately produces a hash-mismatch error
containing the actual hash. Save the log and use the helper to preview changes:

```sh
set -o pipefail
nix build .#hq --keep-going 2>&1 | tee /tmp/lt-hq.log
nix run .#accept-hashes -- /tmp/lt-hq.log
nix run .#accept-hashes -- /tmp/lt-hq.log --write

nix build .#audio --keep-going 2>&1 | tee /tmp/lt-derived.log
nix run .#accept-hashes -- /tmp/lt-derived.log
nix run .#accept-hashes -- /tmp/lt-derived.log --write

git diff -- courses
nix build .#cas --keep-going
```

The helper only accepts recognizable computed-output mismatches, reports old
and proposed hashes, and rejects conflicting results. It never runs a build.
Review the log for other failures too; accepting reported hashes does not mean
all selected tracks succeeded. Logs must come from the current recipes: the
helper cannot determine whether a saved log is stale.

A placeholder establishes a new expectation. Changing an existing computed
hash changes the bytes clients cache. For recipe changes, use `test-audio-reproducibility` to
explicitly rebuild existing outputs and inspect failures. To discover replacement
hashes, set only the intended fields to `lib.fakeHash`, then use the two-pass
workflow above. Review the course diff to see exactly which variants change;
ordinary builds never rewrite pins. HQ changes can affect both derived variants.
Keep derivation names stable when accepting hashes; Nix may reuse completed
hash-mismatch outputs, but they are not GC-rooted by a failed build. A successful
build/import and its retained roots establish retention.

## Course modules

`courses/default.nix` controls course order. Each imported module declares its
ID, default recipe, ordered tracks, and per-file hashes:

```nix
{ lib, series, ... }:
{
  id = "example";
  recipe = "mp3_8_0";
  tracks = series "example" "mp3" 1 3;
  pins = {
    "example001.mp3" = {
      source = lib.fakeHash;
      computed = { hq = lib.fakeHash; lq = lib.fakeHash; hqMov = lib.fakeHash; };
    };
    # Entries for 002 and 003 as well.
  };
}
```

`series` has inclusive bounds and three-digit padding. Lists concatenate with
`++`, so filename exceptions are ordinary strings between ranges. The helpers
`titled`, `restartAt`, and `withRecipe` accept either a filename or another
helper's result:

```nix
[
  (titled "Track 0" "ingles_completo000.wav")
  (restartAt 1 "ingles_completo001.wav")
] ++ series "ingles_completo" "wav" 2 70

# Override the course recipe for a particular track:
(withRecipe "wav_8_0_3" "replacement.wav")
```

The title counter starts at 1, resets before that track's title, and increments
after every track including titled tracks. IDs remain `<courseId><position+1>`;
changing a displayed title or counter does not change its positional ID.

Recipes are defined in `nix/recipes.nix`: MP3 HQ is stream-copied with FFmpeg 8.0;
WAV HQ uses native AAC `-q:a 1.69` with 8.0.3. LQ uses the same encoder as its
HQ recipe, with AAC 64 kbps mono. MOV always remuxes HQ with 8.0.3, without
re-encoding. Hashes remain authoritative regardless of the selected recipe.

## Output format

`all-courses.json` contains `{ buildVersion: 2, casBaseURL, courses }`, where each
course is `{ id, meta, lessons }`. Its course metadata contains
`{ buildVersion: 2, lessons }`, with lesson ID, title, duration in seconds, and
`lq`, `hq`, and `hq-mov` variant pointers. File pointers are
`{ _type: "file", object, filesize, mimeType }`.

MP4 pointers use `video/mp4`, MOV uses `video/quicktime`, JSON uses
`application/json`. Audio hashes are verified by Nix; metadata hashes derive
from the serialized JSON. The app uses `hq-mov` for iOS high quality and `hq`
for Android. Build version 2 remains unchanged.

The `browser/` directory contains a viewer for the resulting CAS.
