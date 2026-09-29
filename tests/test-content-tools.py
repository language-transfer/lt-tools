"""Synthetic tests for pin editing/import planning; never run Nix or FFmpeg."""
import hashlib
import importlib.util
import json
from pathlib import Path
import subprocess
import sys
import tempfile
import unittest
from unittest.mock import patch
import contextlib
import io

SCRIPTS = Path(__file__).resolve().parents[1] / 'scripts'
sys.path.insert(0, str(SCRIPTS))
from pins import edit, FAKE
spec = importlib.util.spec_from_file_location('import_files', SCRIPTS / 'import-files.py')
imports = importlib.util.module_from_spec(spec)
spec.loader.exec_module(imports)

TEMPLATE = '''{ lib, ... }: {
  pins = {
    "example001.mp3" = {
      source = lib.fakeHash; # preserve this comment
      computed = {
        hq = lib.fakeHash;
        lq = lib.fakeHash;
        hqMov = lib.fakeHash;
      };
    };
  };
}
'''


class Tools(unittest.TestCase):
    def test_edit_preserves_other_fields_and_comments(self):
        changed = edit(TEMPLATE, 'example001.mp3', 'lq', 'a' * 64)
        self.assertIn('lq = "' + 'a' * 64 + '";', changed)
        self.assertEqual(changed.count('lib.fakeHash'), 3)
        self.assertIn('# preserve this comment', changed)
        with self.assertRaises(ValueError):
            edit(TEMPLATE, 'missing.mp3', 'hq', 'b' * 64)

    def test_find_by_content_and_split_hash_and_reject_filename_lie(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            hashes = [hashlib.sha256(value).hexdigest() for value in [b'one', b'two']]
            (root / hashes[0]).write_bytes(b'wrong')
            (root / 'cache-arbitrary-key').write_bytes(b'one')
            split = root / hashes[1][:2] / hashes[1][2:]
            split.parent.mkdir()
            split.write_bytes(b'two')
            items = [{'path': 'missing', 'hash': h} for h in hashes]
            found = imports.locate(root, items)
            self.assertEqual(found[hashes[0]].name, 'cache-arbitrary-key')
            self.assertEqual(found[hashes[1]], split)
            found = imports.locate(root, items + [{'path': 'missing', 'hash': 'f' * 64}])
            self.assertNotIn('f' * 64, found)
            self.assertIn(hashes[0], found)

    def test_partial_import_roots_matches_and_reports_missing(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            (root / 'valid').write_bytes(b'valid audio')
            (root / 'invalid').write_bytes(b'')
            items = [{'path': name, 'name': name, 'hash': value,
                      'storePath': '/nix/store/test-' + name}
                     for name, value in [('invalid', 'f' * 64),
                                         ('valid', hashlib.sha256(b'valid audio').hexdigest())]]
            plan = root / 'plan.json'
            plan.write_text(json.dumps(items))
            roots = root / 'roots'
            argv = ['import-files', str(plan), 'computed', str(root), '--roots', str(roots)]
            for dry in [False, True]:
                out, err = io.StringIO(), io.StringIO()
                with patch.object(sys, 'argv', argv + (['--dry-run'] if dry else [])), \
                     patch.object(imports.subprocess, 'check_output', return_value='/nix/store/test-valid\n') as add, \
                     patch.object(imports.subprocess, 'run') as retain, \
                     contextlib.redirect_stdout(out), contextlib.redirect_stderr(err):
                    self.assertEqual(imports.main(), 1)
                self.assertIn('1 files;', out.getvalue())
                self.assertIn('Missing invalid:', err.getvalue())
                if dry:
                    add.assert_not_called()
                    retain.assert_not_called()
                else:
                    add.assert_called_once()
                    retain.assert_called_once()
                    self.assertIn(str(roots / 'computed/valid'), retain.call_args.args[0])

    def test_reproducibility_forces_recipes_and_stops_after_hq_failure(self):
        spec = importlib.util.spec_from_file_location('reproducibility', SCRIPTS / 'test-audio-reproducibility.py')
        test_audio = importlib.util.module_from_spec(spec)
        spec.loader.exec_module(test_audio)
        with tempfile.TemporaryDirectory() as directory:
            catalog = Path(directory) / 'catalog.json'
            catalog.write_text(json.dumps([{'id': 'example', 'tracks': [
                {'id': 'example1', 'filename': 'example001.mp3'}]}]))
            argv = ['test-audio-reproducibility', str(catalog), '--course', 'example']
            with patch.object(sys, 'argv', argv), \
                 patch.object(test_audio.subprocess, 'run') as run, \
                 contextlib.redirect_stdout(io.StringIO()):
                test_audio.main()
            self.assertEqual(run.call_count, 2)
            commands = [call.args[0] for call in run.call_args_list]
            for command in commands:
                self.assertIn('--rebuild', command)
                self.assertIn('--no-link', command)
            self.assertEqual(commands[0][-1], '.#_internal.reproducibilityTracks.example.example1.hq')
            self.assertEqual(commands[1][-2:], [
                '.#_internal.reproducibilityTracks.example.example1.lq',
                '.#_internal.reproducibilityTracks.example.example1.hqMov'])
            with patch.object(sys, 'argv', argv), \
                 patch.object(test_audio.subprocess, 'run', side_effect=subprocess.CalledProcessError(1, 'nix')) as run, \
                 contextlib.redirect_stdout(io.StringIO()):
                with self.assertRaises(subprocess.CalledProcessError):
                    test_audio.main()
            self.assertEqual(run.call_count, 1)
            with patch.object(sys, 'argv', argv + ['--dry-run']), \
                 patch.object(test_audio.subprocess, 'run') as run, \
                 contextlib.redirect_stdout(io.StringIO()):
                test_audio.main()
            run.assert_not_called()

    def test_reproducibility_batches_cover_every_output_in_stage_order(self):
        spec = importlib.util.spec_from_file_location('reproducibility', SCRIPTS / 'test-audio-reproducibility.py')
        test_audio = importlib.util.module_from_spec(spec)
        spec.loader.exec_module(test_audio)
        with tempfile.TemporaryDirectory() as directory:
            catalog = Path(directory) / 'catalog.json'
            tracks = [{'id': f'example{i}', 'filename': f'example{i}.mp3'} for i in range(65)]
            catalog.write_text(json.dumps([{'id': 'example', 'tracks': tracks}]))
            argv = ['test-audio-reproducibility', str(catalog)]
            with patch.object(sys, 'argv', argv), \
                 patch.object(test_audio.subprocess, 'run') as run, \
                 contextlib.redirect_stdout(io.StringIO()) as output:
                test_audio.main()
            batches = [[arg for arg in call.args[0] if arg.startswith('.#')]
                       for call in run.call_args_list]
            self.assertEqual([len(batch) for batch in batches], [64, 1, 64, 64, 2])
            expected = [f'.#_internal.reproducibilityTracks.example.{track["id"]}.{variant}'
                        for variants in [['hq'], ['lq', 'hqMov']]
                        for track in tracks for variant in variants]
            self.assertEqual([target for batch in batches for target in batch], expected)
            self.assertIn('HQ: batch 2/2 (1 outputs)', output.getvalue())
            self.assertIn('LQ/MOV: batch 3/3 (2 outputs)', output.getvalue())
            with patch.object(sys, 'argv', argv), \
                 patch.object(test_audio.subprocess, 'run', side_effect=[None, subprocess.CalledProcessError(1, 'nix')]) as run, \
                 contextlib.redirect_stdout(io.StringIO()):
                with self.assertRaises(subprocess.CalledProcessError):
                    test_audio.main()
            self.assertEqual(run.call_count, 2)

    def test_mismatch_preview_and_write(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            (root / 'example.nix').write_text(TEMPLATE)
            track = {'filename': 'example001.mp3', 'id': 'example1',
                     'hashes': {'source': FAKE, 'computed': dict.fromkeys(['hq', 'lq', 'hqMov'], FAKE)}}
            catalog = root / 'catalog.json'
            catalog.write_text(json.dumps([{'id': 'example', 'tracks': [track]}]))
            log = root / 'build.log'
            actual = 'sha256-' + 'B' * 43 + '='
            log.write_text(f"error: hash mismatch in fixed-output derivation '/nix/store/abc-example001-hq.mp4.drv':\n  specified: {FAKE}\n  got: {actual}\n")
            cmd = [sys.executable, str(SCRIPTS / 'accept-hashes.py'), str(catalog), str(log), '--courses', str(root)]
            subprocess.run(cmd, check=True, capture_output=True)
            self.assertEqual((root / 'example.nix').read_text(), TEMPLATE)
            subprocess.run(cmd + ['--write'], check=True, capture_output=True)
            self.assertIn(f'hq = "{actual}";', (root / 'example.nix').read_text())
            log.write_text(log.read_text().replace('example001', 'unknown'))
            result = subprocess.run(cmd + ['--write'], capture_output=True)
            self.assertNotEqual(result.returncode, 0)


if __name__ == '__main__':
    unittest.main()
