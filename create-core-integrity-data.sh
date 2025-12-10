#!/usr/bin/env bash
set -euo pipefail

# Run from repo root.
cd "$(dirname "$0")"

dagger call core-integrity \
  --core "data/core" \
  export --wipe --path "data/core-integrity" \
  "$@"
