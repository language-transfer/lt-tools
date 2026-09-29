"""Release review/publishing tests with synthetic CAS trees and mocked network/rclone."""
import contextlib
import hashlib
import importlib.util
import io
import json
from pathlib import Path
import subprocess
import sys
import tempfile
import unittest
from unittest.mock import patch

SCRIPTS = Path(__file__).resolve().parents[1] / 'scripts'
sys.path.insert(0, str(SCRIPTS))
spec = importlib.util.spec_from_file_location('release', SCRIPTS / 'release-cas.py')
release = importlib.util.module_from_spec(spec)
spec.loader.exec_module(release)


def fixture(path, *, title='Lesson 1', audio=b'HQ', mov=None, include_hq=True):
    path.mkdir()
    def asset(data, mime):
        h = hashlib.sha256(data).hexdigest()
        dest = release.object_path(path, h)
        dest.parent.mkdir(exist_ok=True)
        dest.write_bytes(data)
        return {'_type': 'file', 'object': h, 'filesize': len(data), 'mimeType': mime}
    variants = {'lq': asset(b'LQ', 'video/mp4')}
    if include_hq:
        variants['hq'] = asset(audio, 'video/mp4')
    if mov is not None:
        variants['hq-mov'] = asset(mov, 'video/quicktime')
    meta = {'buildVersion': 2, 'lessons': [
        {'id': 'example1', 'title': title, 'duration': 42, 'variants': variants}]}
    ptr = asset(json.dumps(meta).encode(), 'application/json')
    index = {'buildVersion': 2, 'casBaseURL': 'https://example.test/cas',
             'courses': [{'id': 'example', 'lessons': 1, 'meta': ptr}]}
    (path / 'all-courses.json').write_text(json.dumps(index))
    return release.local(path)


class Release(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.root = Path(self.temp.name)
        self.old = fixture(self.root / 'old')

    def report(self, new):
        output = io.StringIO()
        with contextlib.redirect_stdout(output):
            counts = release.report(self.old, new)
        return counts, output.getvalue()

    def test_identical_release(self):
        counts, text = self.report(self.old)
        self.assertEqual(counts['unchanged'], 2)
        self.assertIn('all-courses.json: unchanged', text)
        self.assertNotIn('!!!', text)

    def test_metadata_only_change_and_added_variant_are_not_media_replacements(self):
        new = fixture(self.root / 'new', title='A better title', mov=b'MOV')
        counts, text = self.report(new)
        self.assertEqual(counts['changed'], 0)
        self.assertEqual(counts['added'], 1)
        self.assertIn('example/meta.json:', text)
        self.assertIn(self.old['courses']['example']['meta']['object'], text)
        self.assertIn(new['courses']['example']['meta']['object'], text)
        self.assertIn('title:', text)
        self.assertIn('hq-mov: 1 added', text)
        self.assertNotIn('!!!', text)

    def test_replaced_and_removed_media_are_highlighted(self):
        new = fixture(self.root / 'new', audio=b'NEW HQ')
        counts, text = self.report(new)
        self.assertEqual(counts['changed'], 1)
        self.assertIn('!!! EXISTING MEDIA REFERENCES CHANGED', text)
        self.assertIn('example/example1/hq:', text)
        removed = fixture(self.root / 'removed', include_hq=False)
        counts, text = self.report(removed)
        self.assertEqual(counts['removed'], 1)
        self.assertIn('!!! REMOVALS', text)

    def test_local_hashes_sizes_missing_files_and_metadata_are_checked(self):
        media = self.old['media'][('example', 'example1', 'hq')]
        file = self.old['files'][media['object']]
        file.write_bytes(b'broken')
        with self.assertRaisesRegex(ValueError, 'does not match its hash'):
            release.local(self.root / 'old')
        file.unlink()
        with self.assertRaisesRegex(ValueError, 'Missing or wrong-size'):
            release.local(self.root / 'old')
        ptr = self.old['courses']['example']['meta']
        with self.assertRaisesRegex(ValueError, 'Metadata does not match'):
            release.checked_json(b'{}', ptr)

    def test_fetch_root_busts_http_cache(self):
        with patch.object(release.subprocess, 'check_output', return_value=b'{}') as fetch:
            release.fetch('https://example.test/all-courses.json', fresh=True)
        args = fetch.call_args.args[0]
        self.assertIn('Cache-Control: no-cache', args)
        self.assertIn('?release-review=', args[-1])

    def test_published_walk_verifies_json_without_fetching_media(self):
        def fetch(url, fresh=False):
            if fresh:
                return self.old['bytes']
            return self.old['files'][url.rsplit('/', 1)[1]].read_bytes()
        with patch.object(release, 'fetch', side_effect=fetch) as request:
            actual = release.published('https://example.test/all-courses.json')
        self.assertEqual(actual['media'], self.old['media'])
        self.assertEqual(request.call_count, 2)

    def publish(self, new, *, confirm=True, run_effect=None, fetch_effect=None, remote_effect=None):
        with contextlib.redirect_stdout(io.StringIO()), \
             patch.object(release.sys.stdin, 'isatty', return_value=True), \
             patch.object(release.sys.stdout, 'isatty', return_value=True), \
             patch('builtins.input', return_value='publish test:cas' if confirm else 'no'), \
             patch.object(release, 'remote_root', side_effect=remote_effect or [self.old['bytes'], self.old['bytes'], self.old['bytes'], new['bytes']]), \
             patch.object(release, 'fetch', side_effect=fetch_effect or [self.old['bytes'], self.old['bytes']]), \
             patch.object(release.subprocess, 'run', side_effect=run_effect) as run:
            release.publish(self.old, new, 'https://example.test/all-courses.json', 'test:cas')
            return run.call_args_list

    def test_upload_confirmation_and_root_last(self):
        new = fixture(self.root / 'new', mov=b'MOV')
        commands = []
        def run(args, check):
            commands.append(args)
            if args[1] == 'copy':
                stage = Path(args[2])
                self.assertFalse((stage / 'all-courses.json').exists())
                self.assertEqual(len(list(stage.glob('*/*'))), len(new['files']))
                self.assertTrue(all(p.is_symlink() for p in stage.glob('*/*')))
            else:
                self.assertEqual(Path(args[2]).read_bytes(), new['bytes'])
        self.publish(new, run_effect=run)
        self.assertEqual([cmd[1] for cmd in commands], ['copy', 'copyto'])
        self.assertIn('--immutable', commands[0])
        self.assertIn('--copy-links', commands[0])
        self.assertEqual(commands[1][3], 'test:cas/all-courses.json')
        self.assertEqual(self.publish(new, confirm=False), [])

    def test_upload_failure_never_publishes_root(self):
        new = fixture(self.root / 'new', mov=b'MOV')
        calls = []
        def fail(args, check):
            calls.append(args)
            raise subprocess.CalledProcessError(1, args)
        with self.assertRaises(subprocess.CalledProcessError):
            self.publish(new, run_effect=fail)
        self.assertEqual(len(calls), 1)
        self.assertEqual(calls[0][1], 'copy')

    def test_stale_baseline_aborts_before_upload_or_root_update(self):
        new = fixture(self.root / 'new', mov=b'MOV')
        with self.assertRaisesRegex(ValueError, 'Destination root differs'):
            self.publish(new, remote_effect=[b'other root'])
        with self.assertRaisesRegex(ValueError, 'changed during review'):
            self.publish(new, fetch_effect=[b'other root'])
        calls = []
        with self.assertRaisesRegex(ValueError, 'changed during upload'):
            self.publish(new, fetch_effect=[self.old['bytes'], b'other root'],
                         run_effect=lambda args, check: calls.append(args))
        self.assertEqual(len(calls), 1)
        self.assertEqual(calls[0][1], 'copy')

    def test_noninteractive_upload_refused(self):
        with patch.object(release.sys.stdin, 'isatty', return_value=False), \
             patch.object(release.subprocess, 'run') as run:
            with self.assertRaisesRegex(ValueError, 'interactive terminal'):
                release.publish(self.old, self.old, 'https://example.test/root', 'test:cas')
            run.assert_not_called()


if __name__ == '__main__':
    unittest.main()
