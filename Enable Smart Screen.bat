takeown /f "%systemroot%\System32\smartscreen.exe" /a
icacls "%systemroot%\System32\smartscreen.exe" /reset
icacls "%systemroot%\System32\smartscreen.exe" /setowner *S-1-5-80-956008885-3418522649-1831038044-1853292631-2271478464