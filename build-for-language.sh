#!/usr/bin/env bash
set -euo pipefail

# Run from repo root.
cd "$(dirname "$0")"

dagger call build-course-package --materialized-cache-dir data/materialized-cache --core data/core --course-id "$1" export --path data/courses