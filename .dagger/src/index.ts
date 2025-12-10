/**
 * A generated module for QuickStart functions
 *
 * This module has been generated via dagger init and serves as a reference to
 * basic module structure as you get started with Dagger.
 *
 * Two functions have been pre-created. You can modify, delete, or add to them,
 * as needed. They demonstrate usage of arguments and return types using simple
 * echo and grep commands. The functions can be called from the dagger CLI or
 * from one of the SDKs.
 *
 * The first line in this comment block is a short description line and the
 * rest is a long description with more detail on the module's purpose or usage,
 * if appropriate. All modules should have a short description.
 */
import { dag, Container, Directory, object, func } from "@dagger.io/dagger";

@object()
export class LtTools {
  /**
   * Generate sha256 checksums for everything in data/core.
   *
   * Returns a directory mirroring the core structure with .meta.sha256 files so
   * you can export it into data/core-integrity.
   */
  @func()
  async coreIntegrity(core: Directory): Promise<Directory> {
    return dag
      .container()
      .from("alpine:3.20")
      .withMountedDirectory("/core", core)
      .withWorkdir("/core")
      .withExec([
        "sh",
        "-c",
        [
          "set -euo pipefail",
          "mkdir -p /out",
          // Hash every file and store alongside the relative path.
          "find . -type f -print0 | while IFS= read -r -d '' file; do",
          '  hash=$(sha256sum "$file" | cut -d" " -f1);',
          '  out="/out/${file#./}.meta.sha256";',
          '  mkdir -p "$(dirname "$out")";',
          '  printf "%s  %s\n" "$hash" "$file" > "$out";',
          "done",
        ].join("\n"),
      ])
      .directory("/out");
  }

  /**
   * Verify data/core against existing integrity files.
   *
   * Fails if hashes differ, if a checksum is missing for a core file,
   * or if a checksum points to a missing core file.
   */
  @func()
  async verifyCoreIntegrity(
    core: Directory,
    integrity: Directory
  ): Promise<string> {
    return dag
      .container()
      .from("alpine:3.20")
      .withMountedDirectory("/core", core)
      .withMountedDirectory("/integrity", integrity)
      .withExec([
        "sh",
        "-c",
        [
          "set -euo pipefail",
          "sums=$(mktemp)",
          "cores=$(mktemp)",
          'trap \'rm -f "$sums" "$cores"\' EXIT',
          "find /integrity -type f -name '*.meta.sha256' -print0 > \"$sums\"",
          'find /core -type f -print0 > "$cores"',
          "errors=0",
          "while IFS= read -r -d '' sumfile; do",
          "  rel=${sumfile#/integrity/}",
          '  corefile="/core/${rel%.meta.sha256}"',
          "  expected=$(cut -d' ' -f1 \"$sumfile\")",
          '  if [ ! -f "$corefile" ]; then',
          '    echo "missing core file: ${rel%.meta.sha256}" >&2',
          "    errors=1",
          "    continue",
          "  fi",
          "  actual=$(sha256sum \"$corefile\" | cut -d' ' -f1)",
          '  if [ "$actual" != "$expected" ]; then',
          '    echo "hash mismatch: ${rel%.meta.sha256}" >&2',
          "    errors=1",
          "  fi",
          'done < "$sums"',
          "while IFS= read -r -d '' corefile; do",
          "  rel=${corefile#/core/}",
          '  sumfile="/integrity/${rel}.meta.sha256"',
          '  if [ ! -f "$sumfile" ]; then',
          '    echo "missing checksum: ${rel}" >&2',
          "    errors=1",
          "  fi",
          'done < "$cores"',
          'if [ "$errors" -ne 0 ]; then',
          '  exit "$errors"',
          "fi",
          'echo "core integrity OK"',
        ].join("\n"),
      ])
      .stdout();
  }

  /**
   * Returns a container that echoes whatever string argument is provided
   */
  @func()
  containerEcho(stringArg: string): Container {
    return dag.container().from("alpine:latest").withExec(["echo", stringArg]);
  }

  /**
   * Returns lines that match a pattern in the files of the provided Directory
   */
  @func()
  async grepDir(directoryArg: Directory, pattern: string): Promise<string> {
    return dag
      .container()
      .from("alpine:latest")
      .withMountedDirectory("/mnt", directoryArg)
      .withWorkdir("/mnt")
      .withExec(["grep", "-R", pattern, "."])
      .stdout();
  }
}
