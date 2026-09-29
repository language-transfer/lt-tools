"""Compare a local CAS release with published metadata; optionally publish interactively."""
import argparse
from collections import Counter
import hashlib
import json
from pathlib import Path
import re
import subprocess
import sys
import tempfile
import uuid
from urllib.parse import urlsplit, urlunsplit
from pins import digest

DEFAULT_ROOT = 'https://downloads.languagetransfer.org/all-courses.json'
DEFAULT_REMOTE = 'lt-r2:lt-app-cas'
HASH = re.compile(r'[0-9a-f]{64}')


def fetch(url, fresh=False):
    if urlsplit(url).scheme not in ('http', 'https'):
        raise ValueError(f'Expected an HTTP(S) URL: {url}')
    if fresh:
        parts = urlsplit(url)
        query = (parts.query + '&' if parts.query else '') + 'release-review=' + uuid.uuid4().hex
        url = urlunsplit(parts._replace(query=query))
    return subprocess.check_output([
        'curl', '--fail', '--silent', '--show-error', '--location',
        '--connect-timeout', '15', '--max-time', '120',
        '--header', 'Cache-Control: no-cache', '--header', 'Pragma: no-cache', url,
    ])


def pointer(value):
    if (not isinstance(value, dict) or value.get('_type') != 'file'
            or not isinstance(value.get('object'), str) or not HASH.fullmatch(value['object'])
            or type(value.get('filesize')) is not int or value['filesize'] < 0):
        raise ValueError(f'Invalid file pointer: {value!r}')
    return value['object']


def object_path(root, h):
    return root / h[:2] / h[2:]


def checked_json(data, ptr):
    h = pointer(ptr)
    if len(data) != ptr['filesize'] or hashlib.sha256(data).hexdigest() != h:
        raise ValueError(f'Metadata does not match its pointer: {h}')
    return json.loads(data)


def keyed(rows, label):
    result = {}
    for row in rows:
        key = row['id']
        if not isinstance(key, str) or key in result:
            raise ValueError(f'Invalid or duplicate {label} ID: {key!r}')
        result[key] = row
    return result


def tree(root_bytes, read_object):
    root = json.loads(root_bytes)
    courses = keyed(root['courses'], 'course')
    metadata, media, objects = {}, {}, {}
    for course_id, course in courses.items():
        h = pointer(course['meta'])
        meta = checked_json(read_object(h), course['meta'])
        lessons = keyed(meta['lessons'], f'{course_id} lesson')
        if course['lessons'] != len(lessons):
            raise ValueError(f'Lesson count mismatch: {course_id}')
        metadata[course_id] = meta
        objects[h] = course['meta']
        for lesson_id, lesson in lessons.items():
            for variant, ptr in lesson['variants'].items():
                h = pointer(ptr)
                if h in objects and objects[h]['filesize'] != ptr['filesize']:
                    raise ValueError(f'Conflicting sizes for object {h}')
                objects[h] = ptr
                media[(course_id, lesson_id, variant)] = ptr
    return {'bytes': root_bytes, 'root': root, 'courses': courses,
            'metadata': metadata, 'media': media, 'objects': objects}


def published(url):
    root_bytes = fetch(url, fresh=True)
    base = json.loads(root_bytes)['casBaseURL'].rstrip('/')
    return tree(root_bytes, lambda h: fetch(base + '/' + h))


def local(directory):
    # Resolve result once so repointing the result symlink cannot change this review.
    directory = directory.resolve(strict=True)
    result = tree((directory / 'all-courses.json').read_bytes(),
                  lambda h: object_path(directory, h).read_bytes())
    files = {}
    for entry in directory.iterdir():
        if entry.name == 'all-courses.json':
            continue
        if not re.fullmatch(r'[0-9a-f]{2}', entry.name) or not entry.is_dir():
            raise ValueError(f'Unexpected release entry: {entry}')
        for path in entry.iterdir():
            h = entry.name + path.name
            if not HASH.fullmatch(h) or not path.is_file():
                raise ValueError(f'Unexpected CAS object: {path}')
            resolved = path.resolve(strict=True)
            if digest(resolved) != h:
                raise ValueError(f'Local file does not match its hash: {path}')
            files[h] = resolved
    for h, ptr in result['objects'].items():
        if h not in files or files[h].stat().st_size != ptr['filesize']:
            raise ValueError(f'Missing or wrong-size local object: {h}')
    result['files'] = files
    result['directory'] = directory
    return result


def compare(old, new):
    changes = []
    for key in sorted(old['media'].keys() | new['media'].keys()):
        before, after = old['media'].get(key), new['media'].get(key)
        status = ('added' if before is None else 'removed' if after is None else
                  'changed' if before['object'] != after['object'] else 'unchanged')
        changes.append({'key': key, 'status': status, 'before': before, 'after': after})
    return changes


def describe_json(before, after, path=''):
    """Show semantic JSON differences, matching lessons by stable ID."""
    if before == after:
        return
    if isinstance(before, dict) and isinstance(after, dict):
        for key in sorted(before.keys() | after.keys()):
            name = f'{path}.{key}' if path else key
            if key not in before:
                print(f'    + {name}')
            elif key not in after:
                print(f'    - {name}')
            else:
                describe_json(before[key], after[key], name)
    elif path == 'lessons' and isinstance(before, list) and isinstance(after, list):
        left, right = keyed(before, 'lesson'), keyed(after, 'lesson')
        if list(left) != list(right):
            print('    lessons: membership/order changed')
        for key in sorted(left.keys() | right.keys()):
            if key not in left:
                print(f'    + lesson {key}')
            elif key not in right:
                print(f'    - lesson {key}')
            else:
                # Variant pointers are covered by the media report below.
                describe_json({k: v for k, v in left[key].items() if k != 'variants'},
                              {k: v for k, v in right[key].items() if k != 'variants'}, f'lesson {key}')
    else:
        print(f'    {path}: {json.dumps(before, ensure_ascii=False)} -> {json.dumps(after, ensure_ascii=False)}')


def report(old, new, details=False):
    print(f'Local release: {new["directory"]}')
    print('JSON changes:')
    print('  all-courses.json: ' + ('unchanged' if old['bytes'] == new['bytes'] else 'changed'))
    describe_json({k: v for k, v in old['root'].items() if k != 'courses'},
                  {k: v for k, v in new['root'].items() if k != 'courses'})
    if list(old['courses']) != list(new['courses']):
        print('    course membership/order changed')
    for course in sorted(old['courses'].keys() | new['courses'].keys()):
        before, after = old['courses'].get(course), new['courses'].get(course)
        a = before['meta']['object'] if before else None
        b = after['meta']['object'] if after else None
        if before == after:
            continue
        print(f'  {course}/meta.json: {a or "(absent)"} -> {b or "(absent)"}')
        if before and after:
            describe_json(old['metadata'][course], new['metadata'][course])
            describe_json({k: v for k, v in before.items() if k != 'meta'},
                          {k: v for k, v in after.items() if k != 'meta'}, 'index')
    changes = compare(old, new)
    counts = Counter(row['status'] for row in changes)
    print('\nMedia references: ' + ', '.join(f'{counts[k]} {k}' for k in ['unchanged', 'added', 'changed', 'removed']))
    if counts['changed']:
        print(f'!!! EXISTING MEDIA REFERENCES CHANGED: {counts["changed"]} existing lesson/variant references point to different media.')
    else:
        print('No existing lesson/variant changes its media hash.')
    if counts['removed']:
        print(f'!!! REMOVALS: {counts["removed"]} media references disappear from the new release (stored objects remain).')
    grouped = Counter((row['key'][0], row['key'][2], row['status']) for row in changes if row['status'] != 'unchanged')
    for (course, variant, status), count in sorted(grouped.items()):
        print(f'  {course} / {variant}: {count} {status}')
    old_hashes = {p['object'] for p in old['media'].values()}
    for row in changes:
        if row['status'] in ('changed', 'removed') or (details and row['status'] == 'added'):
            a, b = row['before'], row['after']
            print(f'  {row["status"]}: {"/".join(row["key"])}: {a["object"] if a else "(absent)"} -> {b["object"] if b else "(absent)"}')
            if b and b['object'] in old_hashes:
                print('    Target bytes already occur elsewhere in the published release.')
        elif row['status'] == 'unchanged' and row['before'] != row['after']:
            print(f'  Pointer metadata changed (same bytes): {"/".join(row["key"])}')
    new_media = {p['object']: p['filesize'] for p in new['media'].values() if p['object'] not in old_hashes}
    print(f'Unique media newly referenced: {len(new_media)} files, {sum(new_media.values()) / 1024**2:.2f} MiB.')
    extras = new['files'].keys() - new['objects'].keys()
    print(f'Local hashed objects: {len(new["files"])} ({len(extras)} not referenced by this root).')
    if old['root']['casBaseURL'] != new['root']['casBaseURL']:
        print('!!! CAS base URL changes; availability at the new URL must be established separately.')
    return counts


def remote_root(remote):
    return subprocess.check_output(['rclone', 'cat', remote.rstrip('/') + '/all-courses.json'])


def publish(old, new, root_url, remote):
    if not sys.stdin.isatty() or not sys.stdout.isatty():
        raise ValueError('Publishing requires an interactive terminal; there is no unattended confirmation option.')
    remote = remote.rstrip('/')
    if not remote or remote.startswith('-') or ':' not in remote:
        raise ValueError('Expected an rclone destination such as lt-r2:lt-app-cas')
    # Ensure the configured destination really contains the root we just reviewed.
    if remote_root(remote) != old['bytes']:
        raise ValueError('Destination root differs from the fresh public root. Recheck the destination or retry after publication/cache propagation.')
    print(f'\nDestination: {remote}')
    print('Upload hashed objects without replacing/deleting existing objects, then replace all-courses.json LAST.')
    token = f'publish {remote}'
    if input(f'Type "{token}" to proceed: ').strip() != token:
        print('Cancelled. Nothing uploaded.')
        return
    # Staging fixes the reviewed root bytes and symlink targets without copying audio.
    with tempfile.TemporaryDirectory(prefix='lt-cas-release-') as directory:
        stage = Path(directory)
        objects = stage / 'objects'
        objects.mkdir()
        for h, source in new['files'].items():
            destination = object_path(objects, h)
            destination.parent.mkdir(exist_ok=True)
            destination.symlink_to(source)
        index = stage / 'all-courses.json'
        index.write_bytes(new['bytes'])
        # Refuse to proceed with a stale comparison, including changes during confirmation.
        if fetch(root_url, fresh=True) != old['bytes'] or remote_root(remote) != old['bytes']:
            raise ValueError('Published root changed during review; rerun the comparison.')
        subprocess.run(['rclone', 'copy', str(objects), remote, '--copy-links',
                        '--immutable', '--checksum', '--progress'], check=True)
        # Protect against edits to a mutable local export during the upload.
        for h, source in new['files'].items():
            if digest(source) != h:
                raise ValueError(f'Local object changed during upload: {h}; root was not published.')
        if fetch(root_url, fresh=True) != old['bytes'] or remote_root(remote) != old['bytes']:
            raise ValueError('Published root changed during upload; objects were added, but root was not replaced. Review again.')
        subprocess.run(['rclone', 'copyto', str(index), remote + '/all-courses.json',
                        '--checksum', '--progress'], check=True)
        if remote_root(remote) != new['bytes']:
            raise ValueError('Destination root verification failed after upload.')
    print('Published. Old hashed objects were retained; public caches may take time to refresh.')


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('directory', nargs='?', type=Path, default=Path('result'))
    p.add_argument('--published-root', default=DEFAULT_ROOT)
    p.add_argument('--details', action='store_true', help='List every added media reference as well as changed/removed ones')
    p.add_argument('--upload', action='store_true', help='Offer interactive publishing after the report')
    p.add_argument('--remote', default=DEFAULT_REMOTE)
    a = p.parse_args()
    print(f'Fetching fresh published metadata: {a.published_root}', flush=True)
    old = published(a.published_root)
    print(f'Checking local release hashes: {a.directory}', flush=True)
    new = local(a.directory)
    report(old, new, a.details)
    if a.upload:
        publish(old, new, a.published_root, a.remote)
    else:
        print('\nComparison only. Use --upload to review again and offer interactive publishing.')


if __name__ == '__main__':
    try:
        main()
    except (ValueError, OSError, KeyError, subprocess.CalledProcessError) as error:
        print(f'Error: {error}', file=sys.stderr)
        sys.exit(1)
