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
import { dag, Directory, File, object, func } from "@dagger.io/dagger";
import { createHash } from "crypto";

const BUILD_VERSION = 2;

type FilePointer = {
  _type: "file";
  object: string;
  filesize: number;
  mimeType: string;
};

type FileWithPointer = {
  file: File;
  pointer: FilePointer;
};

async function hashFile(file: File): Promise<string> {
  const inputName = await file.name();
  const hash = await dag
    .container()
    .from("alpine:3.20")
    .withMountedFile(`/in/${inputName}`, file)
    .withExec([
      "sh",
      "-c",
      [
        "set -euo pipefail",
        `sha256sum "/in/${inputName}" | cut -d" " -f1`,
      ].join("\n"),
    ])
    .stdout();
  return hash.trim();
}

async function hashDirectory(directory: Directory): Promise<string> {
  const hash = await dag
    .container()
    .from("alpine:3.20")
    .withMountedDirectory("/in", directory)
    .withWorkdir("/in")
    .withExec([
      "sh",
      "-c",
      [
        "set -euo pipefail",
        // Hash all files (names + contents) in deterministic order, then hash the list.
        'find . -type f -print | sort | while read -r file; do sha256sum "$file"; done | sha256sum | cut -d" " -f1',
      ].join("\n"),
    ])
    .stdout();

  return hash.trim();
}

async function fileExists(file: File): Promise<boolean> {
  try {
    await file.id();
    return true;
  } catch {
    return false;
  }
}

const MIME_TYPE_MAP = {
  mp4: "video/mp4",
  json: "application/json",
};

async function withFilePointer(file: File): Promise<FileWithPointer> {
  const [name, hash, size] = await Promise.all([
    file.name(),
    hashFile(file),
    file.size(),
  ]);

  const ext = name.split(".").pop() ?? null;
  if (!ext || !MIME_TYPE_MAP[ext as keyof typeof MIME_TYPE_MAP]) {
    throw new Error(`Unsupported file extension: ${ext}`);
  }
  const mimeType = MIME_TYPE_MAP[ext as keyof typeof MIME_TYPE_MAP];

  return {
    file: file.withName(hash),
    pointer: {
      _type: "file",
      object: hash,
      filesize: size,
      mimeType,
    },
  };
}

type WithUpdatedCache<T> = {
  item: T;
  cacheDirectory: Directory;
};

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
  private async remuxToMp4(
    materializedCacheDir: Directory,
    input: File
  ): Promise<WithUpdatedCache<FileWithPointer>> {
    const cacheKey = `cache-${await this.hashArgs(
      "remux",
      await hashFile(input)
    )}`;
    const cachedFile = materializedCacheDir.file(cacheKey);
    if (await fileExists(cachedFile)) {
      return {
        item: await withFilePointer(cachedFile.withName("output.mp4")),
        cacheDirectory: materializedCacheDir,
      };
    }

    const outputPath = `/out/output.mp4`;

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

    const updatedCacheDir = materializedCacheDir.withFile(
      cacheKey,
      container.file(outputPath)
    );

    const file = await withFilePointer(container.file(outputPath));

    return {
      item: file,
      cacheDirectory: updatedCacheDir,
    };
  }

  /**
   * Get media duration in seconds using ffprobe.
   */
  private async fileDurationSeconds(file: File): Promise<number> {
    const inputName = await file.name();
    const duration = await dag
      .container()
      .from("ghcr.io/jrottenberg/ffmpeg:8.0-alpine")
      .withMountedFile(`/in/${inputName}`, file)
      .withExec([
        "ffprobe",
        "-v",
        "error",
        "-show_entries",
        "format=duration",
        "-of",
        "default=nk=1:nw=1",
        `/in/${inputName}`,
      ])
      .stdout();

    return Number(duration.trim());
  }

  /**
   * Remux a single lesson from core by course ID and lesson index.
   */
  private async remuxLesson(
    materializedCacheDir: Directory,
    core: Directory,
    courseId: string,
    lesson: number
  ): Promise<WithUpdatedCache<FileWithPointer>> {
    const lessonFile = await this.getLessonFile(core, courseId, lesson);
    return await this.remuxToMp4(materializedCacheDir, lessonFile);
  }

  /**
   * Create a low-quality audio-only mp4 from a single track.
   */
  private async lowQualityTrack(
    materializedCacheDir: Directory,
    file: File
  ): Promise<WithUpdatedCache<File>> {
    const cacheKey = `cache-${await this.hashArgs(
      "lowQualityTrack",
      await hashFile(file)
    )}`;
    const cached = materializedCacheDir.file(cacheKey);
    if (await fileExists(cached)) {
      return {
        item: cached,
        cacheDirectory: materializedCacheDir,
      };
    }

    const inputName = await file.name();
    const outputName = `lq.mp4`;
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

    const updatedCacheDir = materializedCacheDir.withFile(
      cacheKey,
      container.file(outputPath)
    );

    return {
      item: container.file(outputPath),
      cacheDirectory: updatedCacheDir,
    };
  }

  /**
   * Create a low-quality mp4 audio-only file for a single lesson.
   */
  private async lowQualityLesson(
    materializedCacheDir: Directory,
    core: Directory,
    courseId: string,
    lesson: number
  ): Promise<WithUpdatedCache<FileWithPointer>> {
    let updatedCacheDir = materializedCacheDir;
    const remuxed = await this.remuxLesson(
      updatedCacheDir,
      core,
      courseId,
      lesson
    );
    updatedCacheDir = remuxed.cacheDirectory;

    const lowQualityTrack = await this.lowQualityTrack(
      materializedCacheDir,
      remuxed.item.file
    );
    updatedCacheDir = lowQualityTrack.cacheDirectory;

    return {
      item: await withFilePointer(lowQualityTrack.item),
      cacheDirectory: updatedCacheDir,
    };
  }

  /**
   * Package all courses into one flat directory with hashed assets and metas.
   */
  private async packageAllCoursesInner(
    materializedCacheDir: Directory,
    core: Directory,
    baseUrl: string = "https://downloads.languagetransfer.org/cas"
  ): Promise<WithUpdatedCache<Directory>> {
    let updatedCacheDir = materializedCacheDir;

    const courses = await this.getCoreCourseIds(core);
    let outDir = dag.directory();
    const coursesIndex: Array<{
      id: string;
      meta: FilePointer;
      lessons: number;
    }> = [];

    for (const courseId of courses) {
      const pkg = await this.buildCoursePackage(
        updatedCacheDir,
        core,
        courseId
      );
      updatedCacheDir = pkg.cacheDirectory;

      for (const asset of pkg.item.assets) {
        outDir = outDir.withFile(".", asset);
      }

      outDir = outDir.withFile(".", pkg.item.metaFile.file);

      coursesIndex.push({
        id: courseId,
        meta: pkg.item.metaFile.pointer,
        lessons: pkg.item.lessonCount,
      });
    }

    const allCourses = {
      buildVersion: BUILD_VERSION,
      caseBaseURL: baseUrl,
      courses: coursesIndex,
    };

    outDir = outDir.withNewFile(
      "all-courses.json",
      JSON.stringify(allCourses, null, 2)
    );

    return {
      item: outDir,
      cacheDirectory: updatedCacheDir,
    };
  }

  @func()
  async packageAllCourses(
    materializedCacheDir: Directory,
    core: Directory,
    baseUrl: string = "https://downloads.languagetransfer.org/cas"
  ): Promise<Directory> {
    const { item } = await this.packageAllCoursesInner(
      materializedCacheDir,
      core,
      baseUrl
    );
    return item;
  }

  @func()
  async packageAllCoursesCache(
    materializedCacheDir: Directory,
    core: Directory,
    baseUrl: string = "https://downloads.languagetransfer.org/cas"
  ): Promise<Directory> {
    const { cacheDirectory } = await this.packageAllCoursesInner(
      materializedCacheDir,
      core,
      baseUrl
    );
    return cacheDirectory;
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

  private getLessonId(courseId: string, lessonIndex: number): string {
    return `${courseId}${lessonIndex + 1}`;
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

  private async buildCoursePackage(
    materializedCacheDir: Directory,
    core: Directory,
    courseId: string
  ): Promise<
    WithUpdatedCache<{
      assets: File[];
      metaFile: FileWithPointer;
      lessonCount: number;
    }>
  > {
    let updatedCacheDir = materializedCacheDir;

    const tracks = await this.getCourseTrackList(core, courseId);
    const lessonsMeta: Array<{
      id: string;
      title: string;
      variants: {
        lq: FilePointer;
        hq: FilePointer;
      };
      duration: number;
    }> = [];
    const assets: Array<File> = [];

    for (let i = 0; i < tracks.length; i++) {
      const hq = await this.remuxLesson(updatedCacheDir, core, courseId, i);
      updatedCacheDir = hq.cacheDirectory;
      const lq = await this.lowQualityLesson(
        updatedCacheDir,
        core,
        courseId,
        i
      );
      updatedCacheDir = lq.cacheDirectory;

      assets.push(hq.item.file, lq.item.file);

      const duration = await this.fileDurationSeconds(hq.item.file);

      const lessonId = this.getLessonId(courseId, i);
      const title = `Lesson ${i + 1}`;

      lessonsMeta.push({
        id: lessonId,
        title,
        variants: {
          lq: lq.item.pointer,
          hq: hq.item.pointer,
        },
        duration,
      });
    }

    const meta = {
      buildVersion: BUILD_VERSION,
      lessons: lessonsMeta,
    };

    const metaFilename = `${courseId}-meta.json`;
    const metaFile = dag
      .directory()
      .withNewFile(metaFilename, JSON.stringify(meta, null, 2))
      .file(metaFilename);

    return {
      item: {
        assets,
        metaFile: await withFilePointer(metaFile),
        lessonCount: tracks.length,
      },
      cacheDirectory: updatedCacheDir,
    };
  }

  /**
   * Build a deterministic hash for a function call from pre-hashed string args.
   */
  private async hashArgs(
    functionName: string,
    ...args: string[]
  ): Promise<string> {
    const payload = JSON.stringify(args);
    return `${functionName}-${createHash("sha256")
      .update(payload)
      .digest("hex")}`;
  }
}
