# Defeat-Defender.
### Powerfull Batch File To Disable Windows Defender,Firewall,Smartscreen And Execute the payload 
### Usage :
1. Edit Defeat-Defender.bat on this <a href="https://github.com/swagkarna/Defeat-Defender/blob/831848de2abb2ccd1fa1ee1d1ab1d0ba9a0c2a4a/Defeat-Defender.bat#L86">line</a>  and replace the direct url of your payload
2. Run the script "Defeat-Defender.bat" . It will ask for Admin Permission.If permission Granted The script will work Silently and dismantle all protection...
---
## After it got admin permission it will disable defender 
 1. PUAProtection 
 2. Automatic Sample Submission
 3. Windows FireWall
 4. Windows Smart Screen(Permanently)
 5. Disable Quickscan
6. Add exe file  to exclusions in defender settings
7. Disable Ransomware Protection
---
## Virus Total Result[06/05/2021] :
<p align="left">
   <img src="https://raw.githubusercontent.com/swagkarna/Defeat-Defender/main/Screenshot%20(127).png" width=750px height=500px>
   </p>
 
 Request : Please Dont upload sample anywhere...Its been fifth time i am again making this script fud 
 
---


## Bypasssing Windows-Defender Techniques :


Recently Windows Introduced new Feature called "Tamper Protection".Which Prevents the disable of real-time protection and modifying defender registry keys using powershell or cmd...If you need to disable real-time protection you need to do manually....But We will disable Real Time Protection using NSudo without trigerring Windows Defender

---
## After Running Defeat-Defender Script
<p align="left">
   <img src="https://raw.githubusercontent.com/swagkarna/Defeat-Defender/main/Screenshot%20(122).png" width=750px height=500px>
   <img src="https://raw.githubusercontent.com/swagkarna/Defeat-Defender/main/Screenshot%20(111).png" width=750px height=500px>
   <img src="https://raw.githubusercontent.com/swagkarna/Defeat-Defender/main/Screenshot%20(112).png" width=750px height=500px>
   </p>
   
Tested on Windows Version 20H2

---

## After Reboot
<p align="left">
   <img src="https://raw.githubusercontent.com/swagkarna/Defeat-Defender/main/Screenshot%20(132).png" width=750px height=500px>
   <img src="https://raw.githubusercontent.com/swagkarna/Defeat-Defender/main/Screenshot%20(131).png" width=750px height=500px>
 </p>
 
 Note : After Victim reboot or shutdown his device you will see these following screenshots..`Real-Time protection` will be disabled forever untill Victim Turns on `Tamper-Protection` Manually

---
## Behind The Scenes :

 When Batch file is executed it ask for admin permissions.After getting admin privileage it starts to disable windows defender real time protectin , firewall , smartscreen and starts  downloading our backdoor from server and it will placed in startup folder.The backdoor will be executed after it has downloaded from server..And will be started whenever system starts..
 
 
---
## Check out this article :
 https://secnhack.in/create-fud-fully-undetectable-payload-for-windows-10/
 
---
## Video Tutorial[spanish] :
### [![IMAGE ALT TEXT](http://img.youtube.com/vi/eND9q7EpDSk/0.jpg)](http://www.youtube.com/watch?v=eND9q7EpDSk "Defeat-Defender")

---

# Note :
### If you want to enable Defender Smart Screen.Use Smart Screen.bat file..
---
# Discalimer :
### Use this only for educational Purpose...Love you Guys Bye.....

---

## Contact :
<a href=mailto:swagkarna@gmail.com><img src="https://img.shields.io/badge/Gmail-swagkarna-green?style=for-the-badge" /></a>
<a href=https://twitter.com/swagkarna><img src="https://img.shields.io/badge/Twitter-@swagkarna-blue?style=for-the-badge" /></a>

---
<p align="center">  
<img src="https://raw.githubusercontent.com/swagkarna/Defeat-Defender/main/42796435.png" width="150px" height="150px"></img>
</p>
<h2 align="center">Inspired From <a href="https://www.youtube.com/channel/UCYS9sTrPpcIVDxz2yVPbuLw">TechChip</a></h2>

---

### Special thanks to  <a href="https://www.linkedin.com/posts/jeffrey-d-howard-6b578225_defeat-defender-powerful-batch-script-to-activity-6792216498413944832-mWEa">Jeffrey-d-howard</a>(Senior Vulnerability Management Lead) For Posting Defeat-Defender on his linked page

---
### ❤️Supporters❤️
[![Stargazers repo roster for @swagkarna/Defeat-Defender](https://reporoster.com/stars/swagkarna/Defeat-Defender)](https://github.com/swagkarna/Defeat-Defender/stargazers)

[![Forkers repo roster for @swagkarna/Defeat-Defender](https://reporoster.com/forks/swagkarna/Defeat-Defender)](https://github.com/swagkarna/Defeat-Defender/network/members)

---

