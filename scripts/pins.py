"""Small editor for the literal hash declarations in our course modules."""
import hashlib
import json
import re

FAKE = 'sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA='


def digest(path):
    h = hashlib.sha256()
    with path.open('rb') as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b''):
            h.update(block)
    return h.hexdigest()


def select(catalog, course=None, track=None):
    rows = [(c['id'], t) for c in catalog for t in c['tracks']
            if (course is None or c['id'] == course)
            and (track is None or t['filename'] == track)]
    if not rows:
        raise ValueError('No tracks selected')
    return rows


def edit(text, filename, field, value):
    # Deliberately support the repository's literal declarations, not arbitrary Nix.
    start = re.search(re.escape(json.dumps(filename)) + r'\s*=\s*\{', text)
    if not start:
        raise ValueError(f'Missing declaration: {filename}')
    end = text.index('\n    };', start.end())
    block = text[start.end():end]
    scope = block.index('computed = {') if field != 'source' else 0
    pattern = re.compile(r'\b' + re.escape(field) + r'\s*=\s*(lib\.fakeHash|"[^"\n]*")\s*;')
    match = pattern.search(block, scope)
    if not match:
        raise ValueError(f'Expected literal {filename}.{field}')
    a, b = match.span(1)
    offset = start.end()
    return text[:offset+a] + json.dumps(value) + text[offset+b:]


def apply(courses, changes, write=False):
    pending = {}
    for course, filename, field, value in changes:
        path = courses / f'{course}.nix'
        text = pending.get(path, path.read_text())
        pending[path] = edit(text, filename, field, value)
        print(f'{course}/{filename}: {field} -> {value}', flush=True)
    if write:
        for path, text in pending.items():
            path.write_text(text)
    print(f'{len(changes)} proposed pins; ' + ('written.' if write else 'preview only (use --write).'))
