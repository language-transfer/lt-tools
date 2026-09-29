{ pkgs }:
let
  mkFFmpeg = version: hash: pkgs.pkgsMusl.stdenv.mkDerivation {
    pname = "lt-ffmpeg-audio";
    inherit version;
    src = pkgs.fetchurl {
      url = "https://ffmpeg.org/releases/ffmpeg-${version}.tar.xz";
      inherit hash;
    };

    # The Alpine reference uses musl. With glibc, even identical decoded PCM
    # produced different AAC bytes. Pinning nixpkgs pins musl and GCC as well.
    nativeBuildInputs = [ pkgs.pkg-config pkgs.nasm ];
    enableParallelBuilding = true;
    configureFlags = [
      "--disable-autodetect"
      "--disable-everything"
      "--enable-shared"
      "--disable-doc"
      "--disable-debug"
      "--disable-ffplay"
      "--enable-ffmpeg"
      "--enable-ffprobe"
      "--enable-avfilter"
      "--enable-swresample"
      "--enable-protocol=file"
      "--enable-demuxer=mp3,mov,wav"
      "--enable-muxer=mp3,mp4,mov,adts,wav,pcm_f32le"
      "--enable-parser=mpegaudio,aac"
      "--enable-decoder=mp3float,aac,pcm_s16le,pcm_s24le,pcm_s32le,pcm_f32le"
      "--enable-encoder=aac,pcm_f32le,pcm_s16le"
      "--enable-filter=aresample,aformat,anull"
      # Match the Alpine build's size optimization and runtime-generated tables.
      "--enable-small"
      "--disable-hardcoded-tables"
    ];
  };
in {
  # The Docker 8.0-alpine tag advanced between the MP3 and WAV builds. These
  # releases emit different version strings, which also change the CAS hashes.
  ffmpeg_8_0 = mkFFmpeg "8.0" "sha256-snUfzLbMTHdwgRPNeLVhBZtvqQSyQWL6C+LWAnPSe44=";
  ffmpeg_8_0_3 = mkFFmpeg "8.0.3" "sha256-YTaBLqbU5ovbon4zwqlDgnEc30+GAv/vBW/3kr1vmBg=";
}
