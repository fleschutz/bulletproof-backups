@echo off
chcp 65001 >NUL
title ⏳ Backup in Progress...

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
echo        FROM: %SOURCE%
echo.
echo          TO: %TARGET%
echo.
echo     OPTIONS: %OPTIONS% (for robocopy)
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

echo %DATE%; %TIME%; %COMPUTERNAME%; %SOURCE%; Started; >>%LOGFILE%
if not exist "%TARGET%" mkdir "%TARGET%"
robocopy %SOURCE% %TARGET% %OPTIONS%
echo %DATE%; %TIME%; %COMPUTERNAME%; %SOURCE%; Completed; >>%LOGFILE%

title ✅ Git repos backed up
echo ✅ Backup of Git repositories completed successfully.
echo.
echo 💡 When finished eject the drive properly and store it in a separate(!) and secure(!) location.
echo.
pause
exit 0
