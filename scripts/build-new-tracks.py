"""Build placeholder audio pins, save logs, and preview or accept verified hashes."""
import argparse
import difflib
import importlib.util
import json
from pathlib import Path
import shlex
import shutil
import subprocess
import tempfile

from pins import FAKE, edit, select

spec = importlib.util.spec_from_file_location('accept_hashes', Path(__file__).with_name('accept-hashes.py'))
accept = importlib.util.module_from_spec(spec)
spec.loader.exec_module(accept)


def placeholder(value):
    return value in (FAKE, '0' * 64)


def pending(rows, variants):
    return [(course, track, variant) for course, track in rows for variant in variants
            if placeholder(track['hashes']['computed'][variant])]


def target(repo, course, track, variant):
    # Quote attribute names, including IDs that are not Nix identifiers.
    return f'{repo}#tracks.{json.dumps(course)}.{json.dumps(track["id"])}.{variant}'


def run_logged(command, path):
    print(shlex.join(command), flush=True)
    with path.open('w') as log:
        with subprocess.Popen(command, stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
                              text=True) as process:
            for line in process.stdout:
                print(line, end='', flush=True)
                log.write(line)
                log.flush()
            return process.wait()


def discover(repo, catalog, items, logdir, stage):
    changes = []
    for offset in range(0, len(items), 64):
        batch = items[offset:offset + 64]
        path = logdir / f'{stage}-{offset // 64 + 1}.log'
        command = ['nix', 'build', '--keep-going', '--no-link', '--option', 'log-lines', '1000',
                   *[target(repo, *item) for item in batch]]
        status = run_logged(command, path)
        proposed = accept.parse_mismatches(catalog, path.read_text())
        expected = {(c, t['filename'], v) for c, t, v in batch}
        if {tuple(change[:3]) for change in proposed} != expected or status == 0:
            raise ValueError(f'Incomplete or unexpected build results; inspect {path}')
        changes.extend(proposed)
    return changes


def update(courses, changes):
    for course, filename, variant, value in changes:
        path = courses / f'{course}.nix'
        path.write_text(edit(path.read_text(), filename, variant, value))


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--course')
    p.add_argument('--track')
    p.add_argument('--repo', type=Path, default=Path.cwd())
    p.add_argument('--logs', type=Path, help='Parent directory for saved logs and output GC roots')
    p.add_argument('--write', action='store_true')
    p.add_argument('--dry-run', action='store_true', help='Print selected outputs without building')
    a = p.parse_args()
    repo = a.repo.resolve()
    catalog = json.loads(subprocess.check_output(
        ['nix', 'eval', '--json', f'{repo}#lib.catalog'], text=True))
    rows = select(catalog, a.course, a.track)
    hq = pending(rows, ['hq'])
    derived = pending(rows, ['lq', 'hqMov'])
    items = hq + derived
    if not items:
        print('No placeholder computed hashes selected.')
        return
    for course, track, _ in items:
        if placeholder(track['hashes']['source']):
            raise ValueError(f'Record and import the source first: {course}/{track["filename"]}')
    if a.dry_run:
        for stage, selected in [('HQ', hq), ('LQ/MOV', derived)]:
            for item in selected:
                print(f'{stage}: {target(repo, *item)}')
        print('Discovery runs in a temporary snapshot; accepted outputs are verified afterward.')
        return
    originals = {course: (repo / 'courses' / f'{course}.nix').read_text()
                 for course, _, _ in items}
    parent = (a.logs or repo / 'data/hash-builds').resolve()
    parent.mkdir(parents=True, exist_ok=True)
    logdir = Path(tempfile.mkdtemp(prefix='run-', dir=parent))
    print(f'Logs and verified output roots: {logdir}', flush=True)
    with tempfile.TemporaryDirectory(prefix='lt-hash-build-') as directory:
        snapshot = Path(directory)
        for name in ['flake.nix', 'flake.lock']:
            shutil.copy2(repo / name, snapshot / name)
        for name in ['nix', 'courses', 'scripts']:
            shutil.copytree(repo / name, snapshot / name, ignore=shutil.ignore_patterns(
                '__pycache__', '*.swp', 'tmp*.nix'))
        staged_catalog = json.loads(subprocess.check_output(
            ['nix', 'eval', '--json', f'{snapshot}#lib.catalog'], text=True))
        if staged_catalog != catalog:
            raise ValueError('Catalog changed while taking the snapshot; retry')
        # Temporary HQ acceptance allows the derived pass without changing the
        # user's declarations before the complete proposal has been verified.
        changes = discover(snapshot, catalog, hq, logdir, 'hq')
        update(snapshot / 'courses', changes)
        changes += discover(snapshot, catalog, derived, logdir, 'derived')
        update(snapshot / 'courses', changes[len(hq):])
        for offset in range(0, len(items), 64):
            command = ['nix', 'build', '--keep-going', '--out-link',
                       str(logdir / f'outputs-{offset // 64 + 1}'),
                       *[target(snapshot, *item) for item in items[offset:offset + 64]]]
            if run_logged(command, logdir / f'verify-{offset // 64 + 1}.log'):
                raise ValueError(f'Accepted output verification failed; inspect {logdir}')
        updated = {course: (snapshot / 'courses' / f'{course}.nix').read_text()
                   for course in originals}
        recipe_files = [Path('flake.nix'), Path('flake.lock')]
        recipe_files += [p.relative_to(snapshot) for p in (snapshot / 'nix').rglob('*') if p.is_file()]
        for relative in recipe_files:
            if not (repo / relative).is_file() or (repo / relative).read_bytes() != (snapshot / relative).read_bytes():
                raise ValueError(f'{relative} changed during builds; no pins written')
        for course, original in originals.items():
            path = repo / 'courses' / f'{course}.nix'
            if path.read_text() != original:
                raise ValueError(f'{path} changed during builds; no pins written')
            print(''.join(difflib.unified_diff(original.splitlines(True), updated[course].splitlines(True),
                                             fromfile=str(path), tofile=str(path))), end='')
        if a.write:
            for course, text in updated.items():
                (repo / 'courses' / f'{course}.nix').write_text(text)
    print(f'{len(changes)} verified pins; ' + ('written.' if a.write else 'preview only (use --write).'))


if __name__ == '__main__':
    main()
