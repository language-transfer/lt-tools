"""Test that the audio recipes reproduce pinned bytes, even when outputs are cached."""
import argparse
import json
from pathlib import Path
import shlex
import subprocess
from pins import select


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('catalog', type=Path)
    p.add_argument('--course')
    p.add_argument('--track')
    p.add_argument('--stage', choices=['hq', 'derived', 'all'], default='all')
    p.add_argument('--dry-run', action='store_true')
    a = p.parse_args()
    rows = select(json.loads(a.catalog.read_text()), a.course, a.track)
    stages = [['hq'], ['lq', 'hqMov']] if a.stage == 'all' else [['hq'] if a.stage == 'hq' else ['lq', 'hqMov']]
    # Bound each Nix process's set of requested outputs, not just running jobs.
    batch_size = 64
    for variants in stages:
        targets = [f'.#_internal.reproducibilityTracks.{course}.{track["id"]}.{variant}'
                   for course, track in rows for variant in variants]
        total = (len(targets) + batch_size - 1) // batch_size
        stage = 'HQ' if variants == ['hq'] else 'LQ/MOV'
        for offset in range(0, len(targets), batch_size):
            batch = targets[offset:offset + batch_size]
            command = ['nix', 'build', '--rebuild', '--keep-going', '--no-link', *batch]
            print(f'{stage}: batch {offset // batch_size + 1}/{total} ({len(batch)} outputs)', flush=True)
            print(shlex.join(command), flush=True)
            if not a.dry_run:
                # A failed batch stops the test, including any dependent pass.
                subprocess.run(command, check=True)



if __name__ == '__main__':
    main()
