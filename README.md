# Defeat-Defender
## Powerfull Batch File To Disable Windows Defender,Firewall,Smartscreen And Execute the payload 
## Usage :
## 1. Edit Defeat-Defender.bat on line number 65 and replace the direct url of your payload
## 2 Run the Defeat-Defender.bat file . It will ask for Admin Permission.If permission Denied The script wont work...
## 3. After it got admin permission it will disable defender 
### 1. Realtime protection
### 2. Automatic Sample Submission
### 3. Windows FireWall
### 4. Windows Smart Screen(Permanently)
## Virus Total Result :
<p align="left">
   <img src="https://raw.githubusercontent.com/swagkarna/TikTok-Phishing-V3/main/Screenshot%20(5).png" width=450px height=550px>
   </p>
### Bypasssing Windows-Defender Techniques :
## Dont Compile the bat file to exe .. Because Defender will flag as virus.So  use winrar to Create "exe" using "SFXOption"And Choose Encrypt Filename and Set Password For your File.
## Use %temp% to extract files in temporary folder
## Behind The Scenes :
## When Batch file is executed it ask for admin permissions.After getting admin privileage it starts to disable windows defender real time protectin , firewall , smartscreen and starts downloading our backdoor from server and it will placed in startup folder.
## The backdoor will be executed after it has downloaded from server..And will be started whenever system starts..
# Note :
## If you want to enable Defender Smart Screen.Use Smart Screen.bat file..
# Discalimer :
## Use this only for educational Purpose...Love you Guys Bye.....
