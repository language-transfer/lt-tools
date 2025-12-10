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
import {
  dag,
  Container,
  Directory,
  File,
  object,
  func,
} from "@dagger.io/dagger";

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
   * Remux a media file into an mp4 with metadata stripped using a pinned ffmpeg.
   * We were hoping to use m4a, but it supports only AAC, not MP3 codec. MP4 should
   * work fine, even though it sort of signifies video file.
   */
  @func()
  async remux(input: File, outputName = "output.mp4"): Promise<File> {
    const outputPath = `/out/${outputName}`;

    // ffmpeg infers stuff from file extension on the output side...
    // does it for inputs? not sure. this is a leaky abstraction compared to
    // coming up with our own filename, but /shrug maybe the right call
    const inputFilename = await input.name();

    const container = dag
      .container()
      .from("ghcr.io/jrottenberg/ffmpeg:8.0-alpine")
      .withMountedFile(inputFilename, input)
      .withExec([
        "sh",
        "-c",
        [
          "set -euo pipefail",
          "mkdir -p /out",
          [
            "ffmpeg",
            "-hide_banner",
            "-loglevel",
            "error",
            "-i",
            inputFilename,
            "-map_metadata",
            "-1",
            "-map_chapters",
            "-1",
            "-vn",
            "-c:a",
            "copy",
            "-movflags",
            "+faststart",
            outputPath,
          ].join(" "),
        ].join("\n"),
      ]);

    return container.file(outputPath);
  }

  async getCourseIndices(course: Directory): Promise<number[]> {
    const listTxt = await course.file("list.txt").contents();
    return listTxt
      .split("\n")
      .filter((line) => line.trim() !== "")
      .map((_, idx) => idx);
  }

  async getCourseNames(course: Directory): Promise<string[]> {
    const listTxt = await course.file("list.txt").contents();
    return listTxt.split("\n").filter((line) => line.trim() !== "");
  }

  @func()
  async remuxCourse(course: Directory): Promise<Directory> {
    // course directory has:
    //   list.txt
    // tracks/
    //   track filenames as in list.txt, one per line

    const list = (await course.file("list.txt").contents())
      .split("\n")
      .filter((line) => line.trim() !== "");
    const tracksDir = course.directory("tracks");
    const files = list.map((file) => tracksDir.file(file));

    const tasks = files.map(async (file, i) => {
      const newName = `${i}.mp4`;
      const remuxed = await this.remux(file, newName);
      return { fileName: newName, remuxed };
    });

    const remuxedFiles = await Promise.all(tasks);

    let outDir = dag.directory();
    for (const { fileName, remuxed } of remuxedFiles) {
      outDir = outDir.withFile(fileName, remuxed);
    }

    return outDir;
  }

  /**
   * Create a low-quality audio-only mp4 from a single track.
   */
  @func()
  async lowQualityTrack(file: File, index: number): Promise<File> {
    const inputName = await file.name();
    const outputName = `${index}-lq.mp4`;
    const outputPath = `/out/${outputName}`;

    const container = dag
      .container()
      .from("ghcr.io/jrottenberg/ffmpeg:8.0-alpine")
      .withMountedFile(`/in/${inputName}`, file)
      .withExec([
        "sh",
        "-c",
        [
          "set -euo pipefail",
          `INPUT="/in/${inputName}"`,
          `OUTPUT="${outputPath}"`,
          "mkdir -p /out",
          [
            "ffmpeg",
            "-hide_banner",
            "-loglevel",
            "error",
            '-i "$INPUT"',
            "-map 0:a",
            "-map_metadata -1",
            "-map_chapters -1",
            "-vn",
            "-c:a aac",
            "-b:a 64k",
            "-ac 1",
            "-movflags +faststart",
            '"$OUTPUT"',
          ].join(" "),
        ].join("\n"),
      ]);

    return container.file(outputPath);
  }

  /**
   * Create low-quality mp4 audio-only files for a course using indexed names.
   */
  @func()
  async lowQualityCourse(course: Directory): Promise<Directory> {
    const list = (await course.file("list.txt").contents())
      .split("\n")
      .filter((line) => line.trim() !== "");

    const remuxedCourse = await this.remuxCourse(course);

    const tasks = list.map(async (_, i) => {
      const remuxedTrack = remuxedCourse.file(`${i}.mp4`);
      const encoded = await this.lowQualityTrack(remuxedTrack, i);
      return { fileName: `${i}-lq.mp4`, encoded };
    });

    const encodedFiles = await Promise.all(tasks);

    let outDir = dag.directory();
    for (const { fileName, encoded } of encodedFiles) {
      outDir = outDir.withFile(fileName, encoded);
    }

    return outDir;
  }

  @func()
  async remuxAllCourses(core: Directory): Promise<Directory> {
    const list = (await core.file("list.txt").contents())
      .split("\n")
      .filter((line) => line.trim() !== "");
    const coursesDir = core.directory("courses");
    const courses = list.map((course) => coursesDir.directory(course));

    const tasks = courses.map(async (courseDir, i) => {
      const courseName = list[i];
      const remuxedCourse = await this.remuxCourse(courseDir);
      return { courseName, remuxedCourse };
    });

    const remuxedCourses = await Promise.all(tasks);

    let outDir = dag.directory();
    for (const { courseName, remuxedCourse } of remuxedCourses) {
      outDir = outDir.withDirectory(courseName, remuxedCourse);
    }

    return outDir;
  }

  
}
