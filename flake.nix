{
  description = "Language Transfer course sources, pinned audio, and CAS packaging";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/1306659b587dc277866c7b69eb97e5f07864d8c4";

  outputs = { nixpkgs, ... }:
    let
      # The legacy encodes and byte-for-byte comparisons were made on x86_64 Linux.
      pkgs = import nixpkgs { system = "x86_64-linux"; };
      helpers = import ./nix/tracks.nix { inherit (pkgs) lib; };
      courses = import ./courses helpers;
      ffmpeg = import ./nix/ffmpeg.nix { inherit pkgs; };
      casBaseURL = "https://downloads.languagetransfer.org/cas";
      pipeline = import ./nix/pipeline.nix { inherit pkgs ffmpeg courses helpers casBaseURL; };
      reproducibility = import ./nix/pipeline.nix {
        inherit pkgs ffmpeg courses helpers casBaseURL;
        fetchFromCAS = false;
      };
      catalog = pkgs.writeText "catalog.json" (builtins.toJSON (map (course: {
        inherit (course) id;
        tracks = helpers.normalize course;
      }) courses));
      catalogApp = name:
        let command = pkgs.writeShellApplication {
          inherit name;
          runtimeInputs = [ pkgs.python3 pkgs.nix ];
          text = ''exec python ${./scripts}/${name}.py ${catalog} "$@"'';
        }; in { type = "app"; program = "${command}/bin/${name}"; };
      importer = kind:
        let
          plan = pkgs.writeText "${kind}-imports.json" (builtins.toJSON pipeline.imports.${kind});
          command = pkgs.writeShellApplication {
            name = "import-${kind}";
            runtimeInputs = [ pkgs.nix pkgs.python3 ];
            text = ''exec python ${./scripts}/import-files.py ${plan} ${kind} "$@"'';
          };
        in { type = "app"; program = "${command}/bin/import-${kind}"; };
    in {
      packages.x86_64-linux = ffmpeg // pipeline.coursePackages // {
        default = pipeline.release;
        cas = pipeline.release;
        inherit (pipeline) core hq audio;
        retained = pkgs.linkFarm "retained-content" [
          { name = "core"; path = pipeline.core; }
          { name = "cas"; path = pipeline.release; }
        ];
      };
      legacyPackages.x86_64-linux = {
        inherit (pipeline) tracks;
        # Implementation detail of test-audio-reproducibility: always run recipes.
        _internal.reproducibilityTracks = reproducibility.tracks;
      };
      apps.x86_64-linux = {
        release-cas =
          let command = pkgs.writeShellApplication {
            name = "release-cas";
            runtimeInputs = [ pkgs.python3 pkgs.curl pkgs.rclone ];
            text = ''
              export SSL_CERT_FILE="${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt"
              exec python ${./scripts}/release-cas.py "$@"
            '';
          }; in { type = "app"; program = "${command}/bin/release-cas"; };
        import-source = importer "source";
        import-computed = importer "computed";
        record-hashes = catalogApp "record-hashes";
        accept-hashes = catalogApp "accept-hashes";
        test-audio-reproducibility = catalogApp "test-audio-reproducibility";
      };
      lib.catalog = map (course: {
        inherit (course) id;
        tracks = helpers.normalize course;
      }) courses;
    };
}
