@echo off
set arg1=%1
set /P begin="Begin Timestamp: "
Set /P end="End Timestamp: "

if exist "%~dp0ffmpeg.exe" (
	set ff="%~dp0ffmpeg"
) else (
	set ff="ffmpeg"
)

set fileSuffixA=-1
:fileNameLoopA
set /a fileSuffixA+=1
if exist "%~dp1___temp___%fileSuffixA%.mp4" goto fileNameLoopA

set fileSuffixB=-1
:fileNameLoopB
set /a fileSuffixB+=1
if exist "%~dp1___temp2___%fileSuffixB%.mp4" goto fileNameLoopB

%ff% -i %arg1% -ss %begin% -to %end% -c:v copy -c:a copy "%~dp1___temp___%fileSuffixA%.mp4"
%ff% -i "%~dp1___temp___%fileSuffixA%.mp4" -bsf:v h264_metadata=video_full_range_flag=1 -c:v copy -c:a copy "%~dp1___temp2___%fileSuffixB%.mp4"

IF NOT %ERRORLEVEL%==9009 (
del %arg1%
del "%~dp1___temp___%fileSuffixA%.mp4"
ren "%~dp1___temp2___%fileSuffixB%.mp4" "%~n1%~x1"
) else (
ECHO error : missing ffmpeg.exe
pause
)