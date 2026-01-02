@echo off
chcp 65001 >NUL
title ⏳ Repo backup in progress...

set "SOURCE=C:\Repos"
set "TARGET=%~dp0..\DATA\Git_repos\"
set OPTIONS=/MIR /FFT /SL /NJH /NFL /xa:o /r:3 /w:0 /unicode
set LOGFILE=..\docs\Logbook.csv

cls
echo.
echo      ____________________________________
echo.
echo            Backup of Git Repositories
echo      ____________________________________
echo.
echo.
echo.
echo This script will copy your Git repositories...
echo.
echo.
echo         FROM: %SOURCE%
echo.
echo           TO: %TARGET%
echo.
echo        USING: robocopy
echo.
echo WITH OPTIONS: %OPTIONS%
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
timeout 9

echo %DATE%; %TIME%; %COMPUTERNAME%; %SOURCE%; Started; >>%LOGFILE%
if not exist "%TARGET%" mkdir "%TARGET%"
robocopy %SOURCE% %TARGET% %OPTIONS%
echo %DATE%; %TIME%; %COMPUTERNAME%; %SOURCE%; Completed; >>%LOGFILE%

title ✅ Git repos backed up
echo ✅ Backup of Git repositories completed successfully.
echo.
echo 💡 Eject the drive properly(!) (when finished) and store it in a separate and secure location!
echo.
pause
exit 0
