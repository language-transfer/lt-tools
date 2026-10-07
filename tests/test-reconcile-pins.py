"""Check safe insertion and preservation independently of Nix/network access."""
import importlib.util
from pathlib import Path
import sys
import unittest

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / 'scripts'))
spec = importlib.util.spec_from_file_location('reconcile', ROOT / 'scripts/reconcile-pins.py')
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)


class Reconcile(unittest.TestCase):
    def test_preserves_existing_and_unused_pins_and_is_idempotent(self):
        original = (ROOT / 'courses/ingles_completo.nix').read_text()
        existing = [f'ingles_completo{n:03}.wav' for n in range(71)]
        names = existing + ['ingles_completo071.wav']
        result = module.reconcile(original, names, existing, {'ingles_completo071.wav': 'a' * 64})
        self.assertIn('source = "' + 'a' * 64 + '";', result)
        self.assertEqual(result.count('lib.fakeHash'), 3)
        self.assertEqual(result[result.index('    "ingles_completo000.wav"'):],
                         original[original.index('    "ingles_completo000.wav"'):])
        self.assertEqual(module.reconcile(result, names, names, {}), result)
        self.assertEqual(module.reconcile(original, existing[:-1], existing, {}), original)

    def test_placeholder_and_rejections(self):
        text = '{ lib, ... }: {\n  pins = {\n  };\n}\n'
        result = module.reconcile(text, ['new.wav'], [], {})
        self.assertEqual(result.count('lib.fakeHash'), 4)
        for names in [['same.wav', 'same.wav'], ['../bad.wav'], ['${bad}.wav']]:
            with self.assertRaises(ValueError):
                module.reconcile(text, names, [], {})
        with self.assertRaises(ValueError):
            module.reconcile('pins = {};', ['new.wav'], [], {})


if __name__ == '__main__':
    unittest.main()
