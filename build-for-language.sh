#!/usr/bin/env bash
set -euo pipefail

# Run from repo root.
cd "$(dirname "$0")"

course="${1:?Usage: ./build-for-language.sh COURSE [nix build options]}"
shift
exec nix build ".#course-${course}" "$@"
