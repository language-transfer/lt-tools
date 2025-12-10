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
   */
  @func()
  async verifyCoreIntegrity(
    core: Directory,
    integrity: Directory
  ): Promise<string> {
    const expectedIntegrity = await this.coreIntegrity(core);

    return dag
      .container()
      .from("alpine:3.20")
      .withMountedDirectory("/expected", expectedIntegrity)
      .withMountedDirectory("/actual", integrity)
      .withExec([
        "sh",
        "-c",
        [
          "set -euo pipefail",
          "diff -ruN /expected /actual",
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
