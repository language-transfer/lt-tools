# Reproducing the existing audio

These are native Nix builds of FFmpeg, with no Docker or Dagger dependency.
They currently target **x86_64 Linux**, where the reference encodes were made.
`flake.lock` pins nixpkgs, including GCC 14.3 and musl 1.2.5; `ffmpeg.nix`
separately pins the FFmpeg 8.0 and 8.0.3 sources.

```sh
nix build .#ffmpeg_8_0 --out-link /tmp/lt-ffmpeg-8.0
nix build .#ffmpeg_8_0_3 --out-link /tmp/lt-ffmpeg-8.0.3
```

This is a focused audio build: MP3/WAV inputs, AAC encoding, MP4/MOV remuxing,
and ffprobe. Its purpose is reproducing the course recipes, not providing a
general-purpose FFmpeg installation.

## What matched

The legacy Docker `8.0-alpine` tag moved to 8.0.3 between builds. FFmpeg's
version strings appear in the output files and affect their CAS hashes.

| Case tested | HQ/LQ FFmpeg | MOV FFmpeg | Legacy hashes |
| --- | --- | --- | --- |
| Full Arabic 4, MP3 source | 8.0 | 8.0.3 | All three match exactly |
| Full Inglés 039, WAV source | 8.0.3 | 8.0.3 | All three match exactly |

The native glibc build produced different AAC bytes despite identical decoded
PCM. A size-optimized build with runtime-generated tables still differed with
glibc; switching that recipe to musl made it match. Matching Alpine's older
GCC was unnecessary for these comparisons.

After the initial comparisons, the full 678-track catalog passed
`nix run .#test-audio-reproducibility`: all HQ, LQ, and MOV outputs matched
their recorded hashes. Updating nixpkgs can also affect audio bytes; rerun
the reproducibility test when changing the toolchain.
