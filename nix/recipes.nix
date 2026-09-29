{ ffmpeg }:
{
  # We were hoping to use m4a, but it supports AAC rather than MP3. MP4 works
  # on Android; Apple's player rejects MP3-in-MP4, so iOS gets the MOV remux.
  mp3_8_0 = {
    encoder = ffmpeg.ffmpeg_8_0;
    movEncoder = ffmpeg.ffmpeg_8_0_3;
    hqArgs = [ "-c:a" "copy" ];
  };
  wav_8_0_3 = {
    encoder = ffmpeg.ffmpeg_8_0_3;
    movEncoder = ffmpeg.ffmpeg_8_0_3;
    hqArgs = [ "-c:a" "aac" "-q:a" "1.69" ];
  };
}
