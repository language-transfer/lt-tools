#!/usr/bin/env bash
set -euo pipefail

# Run from repo root.
cd "$(dirname "$0")"

dagger call build-course-package --materialized-cache-dir data/materialized-cache --core data/core --course-id spanish export --path data/courses --wipe
dagger call build-course-package --materialized-cache-dir data/materialized-cache --core data/core --course-id arabic export --path data/courses
dagger call build-course-package --materialized-cache-dir data/materialized-cache --core data/core --course-id turkish export --path data/courses
dagger call build-course-package --materialized-cache-dir data/materialized-cache --core data/core --course-id german export --path data/courses
dagger call build-course-package --materialized-cache-dir data/materialized-cache --core data/core --course-id greek export --path data/courses
dagger call build-course-package --materialized-cache-dir data/materialized-cache --core data/core --course-id italian export --path data/courses
dagger call build-course-package --materialized-cache-dir data/materialized-cache --core data/core --course-id swahili export --path data/courses
dagger call build-course-package --materialized-cache-dir data/materialized-cache --core data/core --course-id french export --path data/courses
dagger call build-course-package --materialized-cache-dir data/materialized-cache --core data/core --course-id ingles export --path data/courses
dagger call build-course-package --materialized-cache-dir data/materialized-cache --core data/core --course-id music export --path data/courses