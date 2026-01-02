@echo off
chcp 65001 >NUL
title ⏳ Home backup in progress...

set "SOURCE=%HOMEDRIVE%%HOMEPATH%\"
set "TARGET=%~dp0..\DATA\Home_dir\"
set OPTIONS=/MIR /FFT /SL /NJH /NFL /xa:o /r:3 /w:10 /unicode
set LOGFILE=..\docs\Logbook.csv

cls
echo.
echo      ______________________________
echo.
echo           Home Folder Backup
echo      ______________________________
echo.
echo.
echo.
echo This script will copy your Home folder...
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
echo Hold on to start the backup... (or abort with [Ctrl] [C])
timeout 9

echo %DATE%; %TIME%; %COMPUTERNAME%; %SOURCE%; Started; >>%LOGFILE%
if not exist "%TARGET%" mkdir "%TARGET%"
robocopy %SOURCE% %TARGET% %OPTIONS%
echo %DATE%; %TIME%; %COMPUTERNAME%; %SOURCE%; Completed; >>%LOGFILE%

title ✅ Home folder backed up
echo ✅ Backup of your Home folder completed successfully.
echo.
echo 💡 Eject the drive properly (when finished) and store it in a separate and secure location!
echo.
pause
exit 0
