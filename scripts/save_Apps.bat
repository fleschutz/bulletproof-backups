@echo off
chcp 65001 >NUL
title ⏳ Backup in Progress...

set "TARGET_FILE=%~dp0..\DATA\My_Apps.json"

cls
echo.
echo      _______________________________
echo.
echo         Backup of Installed Apps
echo      _______________________________
echo.
echo.
echo.
echo This script saves a list of your installed applications...
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

winget export -o %TARGET_FILE%

title ✅ Apps saved
echo.
echo ✅ List of installed apps exported to %TARGET_FILE%.
echo.
echo 💡 For recovery use 'winget import My_Apps.json' to re-install them.
echo.
pause
exit 0
