#!/usr/bin/env bash
set -euo pipefail

# Run from repo root.
cd "$(dirname "$0")"

dagger call verify-core-integrity --core data/core --integrity data/core-integrity "$@"
