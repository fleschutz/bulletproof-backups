@echo off
chcp 65001 >NUL
title ⏳ Backup of E: in progress...

set "SOURCE=E:\"
set "TARGET=%~dp0..\DATA\Drive_E\"
set OPTIONS=/MIR /FFT /SL /NJH /NFL /xa:o /r:3 /w:10 /unicode
set LOGFILE=..\docs\Logbook.csv

cls
echo.
echo       ____________________________
echo.
echo            Backup of Drive E:
echo       ____________________________
echo.
echo.
echo.
echo This script will copy your E: drive...
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
echo Hold on to start the backup... (or abort with [Ctrl] [C])
timeout 9

echo %DATE%; %TIME%; %COMPUTERNAME%; %SOURCE%; Started; >>%LOGFILE%
if not exist "%TARGET%" mkdir "%TARGET%"
robocopy %SOURCE% %TARGET% %OPTIONS%
echo %DATE%; %TIME%; %COMPUTERNAME%; %SOURCE%; Completed; >>%LOGFILE%

title ✅ Drive E: backed up
echo ✅ Backup of drive E: completed successfully.
echo.
echo 💡 Eject the drive properly(!) (when finished) and store it in a separate and secure location!
echo.
pause
exit 0
