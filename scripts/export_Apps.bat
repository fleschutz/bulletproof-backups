@echo off
chcp 65001 >NUL
title ⏳ Export in Progress...

set "TARGET_FILE=%~dp0..\DATA\My_Apps.json"
set LOGFILE=..\docs\Logbook.csv

cls
echo.
echo      _________________________________
echo.
echo          Export of Installed Apps
echo      _________________________________
echo.
echo.
echo.
echo This script exports a list of your installed applications...
echo.
echo.
echo.
echo   TO: %TARGET_FILE%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo Hold on to start the backup... (or abort with [Ctrl] [C])
timeout 5

echo %DATE%; %TIME%; %COMPUTERNAME%; "Apps"; Started; >>%LOGFILE%
winget export -o %TARGET_FILE%
echo %DATE%; %TIME%; %COMPUTERNAME%; "Apps"; Completed; >>%LOGFILE%

title ✅ Apps exported
echo.
echo ✅ List of installed apps exported to %TARGET_FILE%.
echo.
echo 💡 For recovery use 'winget import My_Apps.json' to re-install them.
echo.
pause
exit 0
