{ lib }:
let
  asTrack = track: if builtins.isString track then { filename = track; } else track;
in rec {
  inherit lib;
  series = prefix: extension: first: last:
    assert first <= last;
    map (n: "${prefix}${lib.fixedWidthNumber 3 n}.${extension}") (lib.range first last);

  titled = title: track: (asTrack track) // { inherit title; };
  restartAt = number: track: (asTrack track) // { inherit number; };
  withRecipe = recipe: track: (asTrack track) // { inherit recipe; };

  normalize = course:
    assert lib.assertMsg (course.tracks != []) "Course ${course.id} has no tracks";
    (lib.foldl' (state: entry:
      let
        track = asTrack entry;
        number = track.number or state.number;
        hashes = course.pins.${track.filename} or
          (throw "Missing hashes for ${course.id}/${track.filename}");
      in {
        number = number + 1;
        tracks = state.tracks ++ [ (track // {
          inherit hashes;
          recipe = track.recipe or course.recipe;
          title = track.title or "Lesson ${toString number}";
          id = "${course.id}${toString (builtins.length state.tracks + 1)}";
        }) ];
      }
    ) { number = 1; tracks = []; } course.tracks).tracks;
}
