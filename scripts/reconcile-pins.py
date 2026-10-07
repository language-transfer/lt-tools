"""Add missing pin declarations after editing tracks; optionally hash new sources."""
import argparse
import difflib
import json
from pathlib import Path
import re
import subprocess
import tempfile

from pins import digest


def evaluate(repo, path, normalized=False):
    expr = f'''let
      f = builtins.getFlake {json.dumps('git+file://' + str(repo))};
      h = import (builtins.toPath {json.dumps(str(repo / 'nix/tracks.nix'))}) {{ lib = f.inputs.nixpkgs.lib; }};
      c = import (builtins.toPath {json.dumps(str(path))}) h;
    in ''' + ('h.normalize c' if normalized else '''{
      inherit (c) id;
      filenames = map (t: if builtins.isString t then t else t.filename) c.tracks;
      pins = builtins.attrNames c.pins;
    }''')
    return json.loads(subprocess.check_output(
        ['nix', 'eval', '--impure', '--json', '--expr', expr], text=True))


def reconcile(text, filenames, existing, sources):
    if len(filenames) != len(set(filenames)):
        raise ValueError('Duplicate track filenames')
    # Only insert at the repository's literal pins block. Nix validates the
    # result and evaluated pin names below; unfamiliar layouts fail closed.
    matches = list(re.finditer(r'^  pins = \{\n', text, re.MULTILINE))
    if len(matches) != 1:
        raise ValueError('Expected exactly one literal, two-space-indented pins block')
    missing = [name for name in filenames if name not in existing]
    blocks = []
    for name in missing:
        if not re.fullmatch(r'[A-Za-z0-9][A-Za-z0-9_.-]*', name):
            raise ValueError(f'Unsupported filename: {name!r}')
        source = json.dumps(sources[name]) if name in sources else 'lib.fakeHash'
        blocks.append(f'''    {json.dumps(name)} = {{
      source = {source};
      computed = {{
        hq = lib.fakeHash;
        lq = lib.fakeHash;
        hqMov = lib.fakeHash;
      }};
    }};
''')
    offset = matches[0].end()
    return text[:offset] + ''.join(blocks) + text[offset:]


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--repo', type=Path, default=Path.cwd())
    parser.add_argument('--course', required=True)
    parser.add_argument('--core', type=Path, help='Hash source files for newly added pins')
    parser.add_argument('--write', action='store_true')
    args = parser.parse_args()
    if not re.fullmatch(r'[A-Za-z0-9_-]+', args.course):
        parser.error('Invalid course ID')
    repo = args.repo.resolve()
    path = repo / 'courses' / f'{args.course}.nix'
    original = path.read_text()
    catalog = evaluate(repo, path)
    if catalog['id'] != args.course:
        raise ValueError('Course ID does not match filename')
    missing = [n for n in catalog['filenames'] if n not in catalog['pins']]
    sources = {}
    for name in missing:
        if not re.fullmatch(r'[A-Za-z0-9][A-Za-z0-9_.-]*', name):
            raise ValueError(f'Unsupported filename: {name!r}')
        if args.core:
            sources[name] = digest(args.core / 'courses' / args.course / 'tracks' / name)
    updated = reconcile(original, catalog['filenames'], catalog['pins'], sources)
    # Keep relative imports resolving beside the original course. Never replace
    # the original until evaluation and semantic checks have succeeded.
    with tempfile.NamedTemporaryFile(mode='w', suffix='.nix', dir=path.parent) as candidate:
        candidate.write(updated)
        candidate.flush()
        checked = evaluate(repo, Path(candidate.name))
        if checked != {**catalog, 'pins': sorted(set(catalog['pins']) | set(missing))}:
            raise ValueError('Edit changed course identity, tracks, or unexpected pins')
        evaluate(repo, Path(candidate.name), normalized=True)
    unused = sorted(set(catalog['pins']) - set(catalog['filenames']))
    if unused:
        print('Retaining unused pins: ' + ', '.join(unused))
    print(''.join(difflib.unified_diff(original.splitlines(True), updated.splitlines(True),
                                   fromfile=str(path), tofile=str(path))), end='')
    if args.write and updated != original:
        if path.read_text() != original:
            raise ValueError('Course changed during reconciliation; retry')
        path.write_text(updated)
    print(f'{len(missing)} new pins; ' + ('written.' if args.write else 'preview only (use --write).'))


if __name__ == '__main__':
    main()
