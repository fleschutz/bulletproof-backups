@echo off
chcp 65001 >NUL
title ⏳ Backup in Progress...

set "SOURCE=D:\"
set "TARGET=%~dp0..\DATA\Drive_D\"
set OPTIONS=/MIR /FFT /SL /NJH /NFL /xa:o /r:3 /w:10 /unicode
set LOGFILE=..\DATA\Logbook.csv

cls
echo.
echo       _________________________
echo.
echo            Drive D: Backup
echo       _________________________
echo.
echo.
echo.
echo This script will copy your D: drive...
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
echo Hold on to start the backup... (or abort with [Ctrl] [C])
timeout 5

echo %DATE%; %TIME%; %COMPUTERNAME%; %SOURCE%; Backup started; >>%LOGFILE%
if not exist "%TARGET%" mkdir "%TARGET%"
robocopy %SOURCE% %TARGET% %OPTIONS%
echo %DATE%; %TIME%; %COMPUTERNAME%; %SOURCE%; Backup finished; >>%LOGFILE%

title ✅ Backup of D: done
echo ✅ Backup of drive D: completed successfully.
echo.
echo 💡 When finished eject the drive properly and store it in a separate(!) and secure(!) location.
echo.
pause
exit 0
