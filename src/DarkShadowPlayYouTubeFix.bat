@echo off
set arg1=%1
set /P begin="Begin Timestamp: "
Set /P end="End Timestamp: "
ffmpeg -i %arg1% -ss %begin% -to %end% -c:v copy -c:a copy "%~dp1___temp___.mp4"
ffmpeg -i "%~dp1___temp___.mp4" -bsf:v h264_metadata=video_full_range_flag=1 -c:v copy -c:a copy "%~dp1___temp2___.mp4"
del %arg1%
del "%~dp1___temp___.mp4"
ren "%~dp1___temp2___.mp4" "%~n1%~x1"