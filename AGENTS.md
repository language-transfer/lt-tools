# Content build repository

## Build system
- The current pipeline is Nix. `flake.nix` exports the CAS release, per-course packages, aggregate audio targets, and import apps for x86_64 Linux.
- Do not add GitHub Actions or proprietary hosted build services. Build and verify locally with Nix.
- `courses/default.nix` preserves course order. Each course module declares ordered tracks, a recipe default, and source/HQ/LQ/MOV SHA-256 hashes. These are flat file hashes, not NAR hashes.
- `nix/tracks.nix` supplies `series`, `titled`, `restartAt`, and `withRecipe`. Keep ordinary lists concise; use explicit exceptions rather than another list-file syntax.
- `nix/recipes.nix` selects the pinned FFmpeg build and HQ arguments. FFmpeg 8.0 and 8.0.3 are separate packages built with musl; compiler/libc and encoder changes can change audio bytes.
- `nix/pipeline.nix` creates separate fixed-output derivations for every track variant. Expected hashes are authoritative. Never silently accept a new encode or add compatibility behavior for formats that have not shipped.
- `scripts/package.py` writes the existing buildVersion 2 JSON schema, including stable positional lesson IDs, title-counter semantics, MIME types, and durations.

## Local data and retention
- Media is not checked into Git. `data/`, `.gc-roots/`, and result links are ignored.
- Recording hashes, importing files, and building are separate user-run operations. Do not run them unless explicitly requested.
- Hash declarations use `source` and `computed.{hq,lq,hqMov}`, never positional arguments.
- `nix run .#record-hashes -- --core DIR` previews source pins; `--write` updates declarations only. `accept-hashes` similarly previews/writes computed pins from saved Nix error logs.
- Import sources with `nix run .#import-source -- data/core`; it validates hashes and adds explicit GC roots.
- `nix run .#import-computed -- /path/to/cas` finds and imports declared audio files by verified hash. It does not require a second checked-in manifest.

## Verification and publishing
- Normal builds reuse the Nix store/binary caches, then try CAS fetching before encoding; pinned hashes always enforce output integrity.
- `nix run .#test-audio-reproducibility` is a separate test that explicitly rebuilds individual outputs with CAS fetching disabled, in HQ/derived passes with sequential batches of at most 64 outputs; `--dry-run` only prints commands. Its recipe-only derivations live under `_internal.reproducibilityTracks`, not public build targets.
- For intentional changes, use `lib.fakeHash`, review Nix's actual hashes, and update only accepted outputs. Retain stable names to allow reuse of completed mismatch outputs; failed builds do not provide GC roots.
- No permanent short-clip regression fixtures are needed: the expected full-file hashes enforce audio integrity. Verify metadata order, titles, IDs, pointers, and serialization when changing packaging.
- `nix build .#cas` or `./build.sh` produces the release. `nix build .#retained -o .gc-roots/content` roots sources and release together.
- Release files are symlinks into the store. Dereference them when exporting. Upload hashed objects append-only and publish `all-courses.json` deliberately; builds must not publish automatically.

## Release review and upload
- `nix run .#release-cas -- result` compares against a freshly fetched published root and verifies the local CAS. Media changes are matched by course/lesson/variant; show course JSON hash changes even when media is unchanged.
- `--upload` requires an interactive terminal and a typed destination confirmation. Never add an unattended approval flag. Default destination is `lt-r2:lt-app-cas`, matching the historical README. Credentials remain in rclone config.
- Upload hashed objects append-only with rclone copy/immutable; publish `all-courses.json` last, only after successful object upload. Never use sync or delete remote objects. Recheck the baseline before publication; allow only one publisher at a time.
