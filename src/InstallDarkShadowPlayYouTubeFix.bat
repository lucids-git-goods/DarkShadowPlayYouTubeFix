@echo off
:: BatchGotAdmin
::-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"="
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
::--------------------------------------

::ENTER YOUR CODE BELOW:


xcopy "DarkShadowPlayYouTubeFix.bat" "%ProgramFiles(x86)%\DarkShadowPlayYouTubeFix\DarkShadowPlayYouTubeFix.bat*" 
xcopy "ffmpeg.exe" "%ProgramFiles(x86)%\DarkShadowPlayYouTubeFix\ffmpeg.exe*"

SetLocal
for /f "tokens=2*" %%a in ('reg query "HKEY_CLASSES_ROOT\.mp4" /ve') do set progId=%%b
REG Add "HKEY_CLASSES_ROOT\%progId%\shell\FixShadowPlay" /f /ve /d "Fix ShadowPlayed MP4 for Youtube"
REG Add "HKEY_CLASSES_ROOT\%progId%\shell\FixShadowPlay\command" /f /ve /d "\"%ProgramFiles(x86)%\\DarkShadowPlayYouTubeFix\\DarkShadowPlayYouTubeFix.bat\" \"%%1\""