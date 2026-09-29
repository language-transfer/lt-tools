"""Record original source hashes; does not import files or encode audio."""
import argparse
import json
from pathlib import Path
from pins import apply, digest, select


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('catalog', type=Path)
    p.add_argument('--core', type=Path, required=True)
    p.add_argument('--courses', type=Path, default=Path('courses'))
    p.add_argument('--course')
    p.add_argument('--track')
    p.add_argument('--write', action='store_true')
    a = p.parse_args()
    changes = []
    for course, track in select(json.loads(a.catalog.read_text()), a.course, a.track):
        filename = track['filename']
        changes.append((course, filename, 'source', digest(a.core / 'courses' / course / 'tracks' / filename)))
    apply(a.courses, changes, a.write)


if __name__ == '__main__':
    main()
