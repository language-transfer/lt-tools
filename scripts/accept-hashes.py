"""Preview or accept computed hashes reported in a saved Nix build log."""
import argparse
import json
import re
from pathlib import Path
from pins import apply, select


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('catalog', type=Path)
    p.add_argument('log', type=Path)
    p.add_argument('--courses', type=Path, default=Path('courses'))
    p.add_argument('--write', action='store_true')
    a = p.parse_args()
    names = {}
    for course, track in select(json.loads(a.catalog.read_text())):
        stem = Path(track['filename']).stem
        for field, suffix in [('hq', '-hq.mp4'), ('lq', '-lq.mp4'), ('hqMov', '-hq.mov')]:
            name = stem + suffix
            if name in names:
                raise ValueError(f'Ambiguous output name: {name}')
            names[name] = (course, track['filename'], field, track['hashes']['computed'][field])
    log = re.sub(r'\x1b\[[0-9;]*m', '', a.log.read_text())
    matches = re.findall(r"hash mismatch in fixed-output derivation ['\"](/nix/store/[^'\"\n]+\.drv)['\"]:\s*specified:\s*\S+\s*got:\s*(sha256-[A-Za-z0-9+/=]+)", log)
    changes = {}
    for drv, value in matches:
        name = Path(drv).name.split('-', 1)[1][:-4]
        if name not in names:
            raise ValueError(f'Unrecognized output in log: {name}')
        course, filename, field, old = names[name]
        key = (course, filename, field)
        if key in changes and changes[key] != value:
            raise ValueError(f'Conflicting results for {name}')
        changes[key] = value
        print(f'{name}: {old} -> {value}')
    if not changes:
        raise ValueError('No recognized fixed-output hash mismatches in log')
    apply(a.courses, [(*key, value) for key, value in changes.items()], a.write)


if __name__ == '__main__':
    main()
