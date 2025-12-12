#!/usr/bin/env bash
set -euo pipefail

# Run from repo root.
cd "$(dirname "$0")"

dagger call package-all-courses --materialized-cache-dir data/materialized-cache --core data/core export --path data/courses $@