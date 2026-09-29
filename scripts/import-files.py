"""Verify declared hashes, import local files into Nix, and retain GC roots."""
import argparse
import json
from pathlib import Path
import subprocess
import sys
from pins import digest


def locate(directory, items):
    files = None
    checked = {}
    found = {}

    def inspect(path):
        if path.is_file() and path not in checked:
            value = digest(path)
            checked[path] = value
            found.setdefault(value, path)

    # Try known paths/full hash names first. Filenames are hints, never proof.
    for item in items:
        for path in [directory / item['path'], directory / item['hash'],
                     directory / item['hash'][:2] / item['hash'][2:]]:
            inspect(path)
    missing = {item['hash'] for item in items} - found.keys()
    if missing:
        files = sorted(p for p in directory.rglob('*') if p.is_file())
        for path in files:
            if any(value in path.name for value in missing):
                inspect(path)
        missing -= found.keys()
        for path in files:
            if not missing:
                break
            inspect(path)
            missing.discard(checked[path])
    return found


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('plan', type=Path)
    p.add_argument('kind', choices=['source', 'computed'])
    p.add_argument('directory', type=Path)
    p.add_argument('--roots', type=Path, default=Path('.gc-roots'))
    p.add_argument('--course')
    p.add_argument('--track')
    p.add_argument('--dry-run', action='store_true')
    a = p.parse_args()
    items = [item for item in json.loads(a.plan.read_text())
             if (a.course is None or item['course'] == a.course)
             and (a.track is None or item['track'] == a.track)]
    if not items:
        raise ValueError('No files selected')
    if any(item['hash'] == '0' * 64 for item in items):
        raise ValueError('Record real hashes before importing; selection includes lib.fakeHash')
    found = locate(a.directory, items)
    root = (a.roots / a.kind).resolve()
    if not a.dry_run:
        root.mkdir(parents=True, exist_ok=True)
    missing = []
    for item in items:
        if item['hash'] not in found:
            missing.append(item)
            continue
        source = found[item['hash']]
        if not a.dry_run:
            store_path = subprocess.check_output([
                'nix', 'store', 'add', '--mode', 'flat', '--hash-algo', 'sha256',
                '--name', item['name'], str(source.resolve()),
            ], text=True).strip()
            if store_path != item['storePath']:
                raise ValueError(f'Unexpected store path: {store_path} != {item["storePath"]}')
            subprocess.run(['nix-store', '--realise', store_path, '--add-root',
                            str(root / item['name']), '--indirect'], check=True,
                           stdout=subprocess.DEVNULL)
        print(f'{"Verified" if a.dry_run else "Imported"} {item["name"]} from {source}', flush=True)
    print(f'{len(items) - len(missing)} files; ' + ('no store changes.' if a.dry_run else f'rooted at {root}'), flush=True)
    for item in missing:
        print(f'Missing {item["name"]}: {item["hash"]}', file=sys.stderr)
    if missing:
        print(f'{len(missing)} files missing or invalid in {a.directory}; verified matches were ' +
              ('not imported (--dry-run).' if a.dry_run else 'imported and retained.'), file=sys.stderr)
    return 1 if missing else 0


if __name__ == '__main__':
    sys.exit(main())
