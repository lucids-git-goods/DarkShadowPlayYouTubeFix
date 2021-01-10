echo off
set arg1=%1

if exist "%~dp0ffmpeg.exe" (
	set ff="%~dp0ffmpeg"
) else (
	set ff="ffmpeg"
)

set fileSuffix=-1
:fileNameLoop
set /a fileSuffix+=1
if exist "%~dp1___temp___%fileSuffix%.mp4" goto fileNameLoop

%ff%  -i %arg1% -bsf:v h264_metadata=video_full_range_flag=1 -c:v copy -c:a copy  "%~dp1___temp___%fileSuffix%.mp4"
IF NOT %ERRORLEVEL%==9009 ( 
del %arg1%
ren "%~dp1___temp___%fileSuffix%.mp4" "%~n1%~x1"
) else (
ECHO error : missing ffmpeg.exe
pause
)
