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

  /**
   * Remux a single lesson from core by course ID and lesson index.
   */
  @func()
  async remuxLesson(
    core: Directory,
    courseId: string,
    lesson: number
  ): Promise<File> {
    const lessonFile = await this.getLessonFile(core, courseId, lesson);
    return this.remux(lessonFile, `${lesson}.mp4`);
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
   * Create a low-quality mp4 audio-only file for a single lesson.
   */
  @func()
  async lowQualityLesson(
    core: Directory,
    courseId: string,
    lesson: number
  ): Promise<File> {
    const remuxed = await this.remuxLesson(core, courseId, lesson);
    return this.lowQualityTrack(remuxed, lesson);
  }

  /**
   * Create low-quality mp4 audio-only files for a course using indexed names.
   */
  @func()
  async lowQualityCourse(
    core: Directory,
    courseId: string
  ): Promise<Directory> {
    const tracks = await this.getCourseTrackList(core, courseId);

    const tasks = tracks.map(async (_, i) => {
      const encoded = await this.lowQualityLesson(core, courseId, i);
      return { fileName: `${i}-lq.mp4`, encoded };
    });

    const encodedFiles = await Promise.all(tasks);

    let outDir = dag.directory();
    for (const { fileName, encoded } of encodedFiles) {
      outDir = outDir.withFile(fileName, encoded);
    }

    return outDir;
  }

  /**
   * Remux an entire course by ID.
   */
  @func()
  async remuxCourseById(
    core: Directory,
    courseId: string
  ): Promise<Directory> {
    const tracks = await this.getCourseTrackList(core, courseId);
    const tasks = tracks.map(async (_, i) => {
      const remuxed = await this.remuxLesson(core, courseId, i);
      return { fileName: `${i}.mp4`, remuxed };
    });

    const remuxedFiles = await Promise.all(tasks);

    let outDir = dag.directory();
    for (const { fileName, remuxed } of remuxedFiles) {
      outDir = outDir.withFile(fileName, remuxed);
    }

    return outDir;
  }

  @func()
  async remuxAllCourses(core: Directory): Promise<Directory> {
    const courses = await this.getCoreCourseIds(core);

    const tasks = courses.map(async (courseName) => {
      const remuxedCourse = await this.remuxCourseById(core, courseName);
      return { courseName, remuxedCourse };
    });

    const remuxedCourses = await Promise.all(tasks);

    let outDir = dag.directory();
    for (const { courseName, remuxedCourse } of remuxedCourses) {
      outDir = outDir.withDirectory(courseName, remuxedCourse);
    }

    return outDir;
  }

  /**
   * Helpers
   */
  private getCourseDir(core: Directory, courseId: string): Directory {
    return core.directory("courses").directory(courseId);
  }

  private async getCoreCourseIds(core: Directory): Promise<string[]> {
    const listTxt = await core.file("list.txt").contents();
    return listTxt
      .split("\n")
      .map((line) => line.trim())
      .filter((line) => line !== "");
  }

  private async getCourseTrackList(
    core: Directory,
    courseId: string
  ): Promise<string[]> {
    const listTxt = await this.getCourseDir(core, courseId)
      .file("list.txt")
      .contents();
    const tracks = listTxt
      .split("\n")
      .map((line) => line.trim())
      .filter((line) => line !== "");

    if (tracks.length === 0) {
      throw new Error(`course "${courseId}" has no tracks`);
    }

    return tracks;
  }

  private async getLessonFile(
    core: Directory,
    courseId: string,
    lesson: number
  ): Promise<File> {
    const tracks = await this.getCourseTrackList(core, courseId);

    if (lesson < 0 || lesson >= tracks.length) {
      throw new Error(
        `lesson index ${lesson} out of bounds for course "${courseId}" (0..${
          tracks.length - 1
        })`
      );
    }

    const trackName = tracks[lesson];
    return this.getCourseDir(core, courseId)
      .directory("tracks")
      .file(trackName);
  }
}
