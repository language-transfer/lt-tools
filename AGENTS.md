# Repository Briefing

## Data & Layout
- `data/core` is the 5–10GB canonical course data; it is not in git. Integrity snapshots live in `data/core-integrity` as `.meta.sha256` mirrors and should be regenerated whenever `data/core` changes.
- Course lists come from `data/core/list.txt`; each course has `courses/<id>/list.txt` plus `tracks/` media.
- Outputs are content-addressed: assets are renamed to their SHA-256 hash and stored under a two-character prefix directory; `all-courses.json` is the stable index that points at those hashes.

## Dagger Module (`.dagger/src/index.ts`)
- Core integrity helpers: `coreIntegrity(core)` builds the `.meta.sha256` tree; `verifyCoreIntegrity(core, integrity)` diffs expected vs. stored and prints `core integrity OK` on success.
- Packaging pipeline (p-limit to 8 concurrent operations):
  - Remux each lesson via pinned `ghcr.io/jrottenberg/ffmpeg:8.0-alpine` to metadata-free MP4 (`remuxLesson`/`remuxToMp4`); durations are read with `ffprobe`.
  - Low-quality AAC mono variant per lesson (`lowQualityLesson`/`lowQualityTrack`).
  - Metadata files (`<course>-meta.json` and `all-courses.json`) include `buildVersion` (currently 2), lesson durations, and file pointers `{object, filesize, mimeType}`; only `mp4` and `json` MIME types are allowed.
  - Caching is explicit: pass a writable `materializedCacheDir`; cache keys are hashed per operation and returned by the `*Cache` functions (`packageAllCoursesCache`, `buildCoursePackageCache`) to persist between runs.
- Public Dagger functions for consumers: package a single course (`buildCoursePackage`) or all courses (`packageAllCourses`), plus their cache-writer counterparts; `baseUrl` defaults to `https://downloads.languagetransfer.org/cas`.

## Scripts & Commands
- Install Dagger deps inside `.dagger`: `yarn install --cwd .dagger`.
- Integrity: `./create-core-integrity-data.sh` regenerates checksums; `./check-core-integrity.sh` verifies `data/core` vs `data/core-integrity`.
- Builds: `./build.sh` produces the full CAS dump; `./build-cache.sh` materializes cached steps. Language-scoped variants (`build-for-language.sh`, `build-cache-for-language.sh`) exist for partial runs.

## Conventions
- TypeScript: ESM, 2-space indent, deterministic/pure Dagger functions; keep MIME map/pointer shapes consistent.
- Bash scripts start with `#!/usr/bin/env bash`, use `set -euo pipefail`, and assume repo root (`cd "$(dirname "$0")"`).
- `.meta.sha256` files must mirror asset paths exactly; regenerate after any asset rename or addition.

## Validation
- After modifying assets or Dagger logic, run `./check-core-integrity.sh` and expect `core integrity OK`.
- When changing packaging behavior, consider running `dagger call packageAllCourses --core data/core --materialized-cache-dir <dir>` plus the corresponding `*Cache` call to refresh cache artifacts.
