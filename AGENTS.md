# Repository Guidelines

## Project Structure & Module Organization
- `data/core`: source course assets consumed by delivery apps.
- `data/core-integrity`: generated `.meta.sha256` checksums mirroring `data/core`; kept in repo for verification.
- `.dagger/`: TypeScript Dagger module (`src/index.ts`, `tsconfig.json`, `yarn.lock`) powering integrity tooling; install dependencies inside this subdirectory.
- Root scripts: `create-core-integrity-data.sh` and `check-core-integrity.sh` wrap the Dagger functions for generating and validating checksums.
- `legacy/`: older Node utilities for audio upload/metadata (`transcode.js`, `gen-meta.js`, `prepare-zip.js`, `create-meta-versions.mjs`); see `legacy/README.md` for the release flow.

## Build, Test, and Development Commands
- `yarn install --cwd .dagger` (or `npm install --prefix .dagger`) to set up Dagger TypeScript dependencies.
- `./create-core-integrity-data.sh` to regenerate checksums in `data/core-integrity` from `data/core`.
- `./check-core-integrity.sh` to verify `data/core` matches stored checksums; run after modifying assets or integrity data.
- Direct Dagger usage: `dagger call core-integrity --core data/core --output data/core-integrity` and `dagger call verify-core-integrity --core data/core --integrity data/core-integrity` for CI or debugging.

## Coding Style & Naming Conventions
- TypeScript: ES modules, 2-space indentation, prefer `const`/`async` with camelCase function names (`coreIntegrity`, `verifyCoreIntegrity`); keep Dagger functions side-effect free and deterministic.
- Bash: include `#!/usr/bin/env bash` and `set -euo pipefail`; scripts assume execution from repo root (`cd "$(dirname "$0")"` pattern).
- Data: `.meta.sha256` files should mirror asset paths exactly; avoid renaming assets without regenerating integrity data.

## Testing Guidelines
- No formal unit suite; integrity verification is the primary check.
- After changing assets or Dagger logic, run `./check-core-integrity.sh` and confirm it ends with `core integrity OK`.
- For legacy flows, dry-run Node scripts locally and validate generated `*-meta.json` before uploading.

## Commit & Pull Request Guidelines
- Commit messages stay short and descriptive (history uses concise sentence-case summaries like `Create README.md`).
- PRs should describe scope, impacted assets/scripts, and commands run (especially integrity checks). Link related issues and include sample outputs or screenshots when touching metadata or delivery paths.
