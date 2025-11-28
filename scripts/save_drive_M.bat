@echo off
chcp 65001 >NUL
title ⏳ Backup of M: in progress...

set "SOURCE=M:\"
set "TARGET=%~dp0..\DATA\Drive_M\"
set OPTIONS=/MIR /FFT /SL /NJH /NFL /xa:o /r:3 /w:10 /unicode
set LOGFILE=..\docs\Logbook.csv

cls
echo.
echo       ____________________________
echo.
echo            Backup of Drive M:
echo       ____________________________
echo.
echo.
echo.
echo This script will copy your M: drive...
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
echo.
echo Hold on to start the backup... (or abort with [Ctrl] [C])
timeout 5

echo %DATE%; %TIME%; %COMPUTERNAME%; %SOURCE%; Started; >>%LOGFILE%
if not exist "%TARGET%" mkdir "%TARGET%"
robocopy %SOURCE% %TARGET% %OPTIONS%
echo %DATE%; %TIME%; %COMPUTERNAME%; %SOURCE%; Completed; >>%LOGFILE%

title ✅ Drive M: backed up
echo ✅ Backup of drive M: completed successfully.
echo.
echo 💡 Eject the drive properly(!) (when finished) and store it in a separate and secure location!
echo.
pause
exit 0
