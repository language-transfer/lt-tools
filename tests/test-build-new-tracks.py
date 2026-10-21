"""Exercise discovery and staged acceptance without building media."""
import contextlib
import base64
import importlib.util
import io
import json
from pathlib import Path
import sys
import tempfile
import unittest
from unittest.mock import patch

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / 'scripts'))
spec = importlib.util.spec_from_file_location('build_new', ROOT / 'scripts/build-new-tracks.py')
build = importlib.util.module_from_spec(spec)
spec.loader.exec_module(build)
FAKE = build.FAKE
TRACK = {'filename': 'example001.wav', 'id': 'example1', 'hashes': {
    'source': 'a' * 64, 'computed': dict.fromkeys(['hq', 'lq', 'hqMov'], FAKE)}}
CATALOG = [{'id': 'example', 'tracks': [TRACK]}]
SUFFIX = {'hq': 'hq.mp4', 'lq': 'lq.mp4', 'hqMov': 'hq.mov'}


def mismatch(variant):
    return (f"error: hash mismatch in fixed-output derivation '/nix/store/abc-example001-{SUFFIX[variant]}.drv':\n"
            f'  specified: {FAKE}\n  got: sha256-BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB=\n')


class BuildNew(unittest.TestCase):
    def test_incomplete_or_unexpected_discovery_is_rejected(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            def run(command, path):
                path.write_text(mismatch('lq'))
                return 1
            with patch.object(build, 'run_logged', side_effect=run), contextlib.redirect_stdout(io.StringIO()):
                with self.assertRaises(ValueError):
                    build.discover(root, CATALOG, [('example', TRACK, 'hq')], root, 'hq')

    def test_preview_stages_hq_then_verifies_without_editing_original(self):
        self.workflow(False, False)

    def test_write_only_after_verification(self):
        self.workflow(True, False)

    def test_verification_failure_leaves_original_unchanged(self):
        self.workflow(True, True)

    def workflow(self, write, fail):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            (root / 'courses').mkdir()
            (root / 'nix').mkdir()
            (root / 'scripts').mkdir()
            for name in ['flake.nix', 'flake.lock']:
                (root / name).write_text('{}')
            path = root / 'courses/example.nix'
            original = '''{ lib, ... }: {
  pins = {
    "example001.wav" = {
      source = "''' + 'a' * 64 + '''";
      computed = {
        hq = lib.fakeHash;
        lq = lib.fakeHash;
        hqMov = lib.fakeHash;
      };
    };
  };
}
'''
            path.write_text(original)
            stages = []
            def run(command, log):
                stages.append(log.name)
                self.assertEqual(path.read_text(), original)
                if log.name.startswith('derived'):
                    installable = next(x for x in command if '#tracks.' in x)
                    snapshot = Path(installable.split('#')[0])
                    self.assertNotIn('hq = lib.fakeHash;', (snapshot / 'courses/example.nix').read_text())
                    log.write_text(mismatch('lq') + mismatch('hqMov'))
                elif log.name.startswith('hq'):
                    log.write_text(mismatch('hq'))
                else:
                    log.write_text('verification')
                    return int(fail)
                return 1
            argv = ['build-new', '--repo', str(root)] + (['--write'] if write else [])
            with patch.object(sys, 'argv', argv), \
                 patch.object(build.subprocess, 'check_output', return_value=json.dumps(CATALOG)), \
                 patch.object(build, 'run_logged', side_effect=run), contextlib.redirect_stdout(io.StringIO()):
                if fail:
                    with self.assertRaises(ValueError):
                        build.main()
                else:
                    build.main()
            self.assertEqual(stages, ['hq-1.log', 'derived-1.log', 'verify-1.log'])
            self.assertEqual(path.read_text() == original, not write or fail)
            if write and not fail:
                expected = base64.b64decode('B' * 43 + '=').hex()
                for variant in ['hq', 'lq', 'hqMov']:
                    self.assertIn(f'{variant} = "{expected}";', path.read_text())
                self.assertNotIn('sha256-', path.read_text())
            self.assertEqual(len(list((root / 'data/hash-builds').glob('run-*/*.log'))), 3)


if __name__ == '__main__':
    unittest.main()
