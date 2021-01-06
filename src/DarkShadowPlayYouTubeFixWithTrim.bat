@echo off
set arg1=%1
set /P begin="Begin Timestamp: "
Set /P end="End Timestamp: "

if exist "%~dp0ffmpeg.exe" (
	set ff="%~dp0ffmpeg"
) else (
	set ff="ffmpeg"
)

%ff% -i %arg1% -ss %begin% -to %end% -c:v copy -c:a copy "%~dp1___temp___.mp4"
%ff% -i "%~dp1___temp___.mp4" -bsf:v h264_metadata=video_full_range_flag=1 -c:v copy -c:a copy "%~dp1___temp2___.mp4"
IF NOT %ERRORLEVEL%==9009 (
del %arg1%
del "%~dp1___temp___.mp4"
ren "%~dp1___temp2___.mp4" "%~n1%~x1"
) else (
ECHO error : missing ffmpeg.exe
pause
)