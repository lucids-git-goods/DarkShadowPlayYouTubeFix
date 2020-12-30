echo off
set arg1=%1
"%~dp0ffmpeg"  -i %arg1% -bsf:v h264_metadata=video_full_range_flag=1 -c:v copy -c:a copy  "%~dp1___temp___.mp4"
del %arg1%
ren "%~dp1___temp___.mp4" "%~n1%~x1"