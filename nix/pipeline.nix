{ pkgs, ffmpeg, courses, helpers, casBaseURL, fetchFromCAS ? true }:
let
  lib = pkgs.lib;
  fixedFile = import ./fixed-file.nix { inherit pkgs casBaseURL fetchFromCAS; };
  recipes = import ./recipes.nix { inherit ffmpeg; };
  hexHash = hash: builtins.convertHash { inherit hash; hashAlgo = "sha256"; toHashFormat = "base16"; };
  buildTrack = course: track:
    let
      recipe = recipes.${track.recipe};
      stem = lib.removeSuffix ".wav" (lib.removeSuffix ".mp3" track.filename);
      source = fixedFile { name = track.filename; hash = track.hashes.source; };
      hq = fixedFile {
        name = "${stem}-hq.mp4";
        hash = track.hashes.computed.hq;
        generate = ''
          ${recipe.encoder}/bin/ffmpeg -nostdin -hide_banner -loglevel error \
            -i ${source} -map_metadata -1 -map_chapters -1 -vn \
            ${lib.escapeShellArgs recipe.hqArgs} -movflags +faststart -f mp4 "$out"
        '';
      };
      lq = fixedFile {
        name = "${stem}-lq.mp4";
        hash = track.hashes.computed.lq;
        generate = ''
          ${recipe.encoder}/bin/ffmpeg -nostdin -hide_banner -loglevel error \
            -i ${hq} -map 0:a -map_metadata -1 -map_chapters -1 -vn \
            -c:a aac -b:a 64k -ac 1 -movflags +faststart -f mp4 "$out"
        '';
      };
      hqMov = fixedFile {
        name = "${stem}-hq.mov";
        hash = track.hashes.computed.hqMov;
        generate = ''
          ${recipe.movEncoder}/bin/ffmpeg -nostdin -hide_banner -loglevel error \
            -i ${hq} -map 0:a:0 -map_metadata -1 -map_chapters -1 \
            -c:a copy -movflags +faststart -f mov "$out"
        '';
      };
      asset = file: hash: mimeType: { inherit file mimeType; hash = hexHash hash; };
    in {
      inherit source hq lq hqMov;
      meta = {
        inherit (track) id title;
        variants = {
          lq = asset lq track.hashes.computed.lq "video/mp4";
          hq = asset hq track.hashes.computed.hq "video/mp4";
          "hq-mov" = asset hqMov track.hashes.computed.hqMov "video/quicktime";
        };
      };
      sourceImport = {
        course = course.id;
        track = track.filename;
        path = "courses/${course.id}/tracks/${track.filename}";
        name = source.name;
        hash = hexHash track.hashes.source;
        # This plan describes store objects to import, not dependencies to build.
        storePath = builtins.unsafeDiscardStringContext source.outPath;
      };
      computedImports = map (quality:
        let file = { inherit hq lq hqMov; }.${quality}; hash = hexHash track.hashes.computed.${quality};
        in {
          inherit hash;
          course = course.id;
          track = track.filename;
          name = file.name;
          path = "${builtins.substring 0 2 hash}/${builtins.substring 2 62 hash}";
          storePath = builtins.unsafeDiscardStringContext file.outPath;
        }
      ) [ "hq" "lq" "hqMov" ];
    };
  builtCourses = map (course:
    let
      tracks = map (buildTrack course) (helpers.normalize course);
      spec = pkgs.writeText "${course.id}-spec.json" (builtins.toJSON {
        inherit (course) id;
        tracks = map (t: t.meta) tracks;
      });
      package = pkgs.runCommand "${course.id}-package" {} ''
        ${pkgs.python3}/bin/python ${../scripts/package.py} course \
          ${spec} "$out" ${ffmpeg.ffmpeg_8_0_3}/bin/ffprobe
      '';
    in { inherit (course) id; inherit tracks package; }
  ) courses;
  allTracks = lib.concatMap (c: c.tracks) builtCourses;
  farm = name: files: pkgs.linkFarm name (map (file: { inherit (file) name; path = file; }) files);
  courseSpec = pkgs.writeText "courses-spec.json" (builtins.toJSON {
    inherit casBaseURL;
    courses = map (c: { inherit (c) id package; }) builtCourses;
  });
  release = pkgs.runCommand "language-transfer-cas" {} ''
    ${pkgs.python3}/bin/python ${../scripts/package.py} release ${courseSpec} "$out"
  '';
in {
  inherit release;
  core = farm "core" (map (t: t.source) allTracks);
  hq = farm "hq" (map (t: t.hq) allTracks);
  audio = farm "audio" (lib.concatMap (t: [ t.hq t.lq t.hqMov ]) allTracks);
  coursePackages = builtins.listToAttrs (map (c: {
    name = "course-${c.id}";
    value = pkgs.runCommand "${c.id}-cas" {} ''
      ln -s ${c.package}/cas "$out"
    '';
  }) builtCourses);
  # Also expose individual files for targeted `nix build --rebuild` comparisons.
  tracks = builtins.listToAttrs (map (c: {
    name = c.id;
    value = builtins.listToAttrs (map (t: {
      name = t.meta.id;
      value = { inherit (t) source hq lq hqMov; };
    }) c.tracks);
  }) builtCourses);
  imports = {
    source = map (t: t.sourceImport) allTracks;
    computed = lib.concatMap (t: t.computedImports) allTracks;
  };
}
