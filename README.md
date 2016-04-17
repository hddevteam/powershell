# Powershell scripts created to improve productivity

##speak.ps1
This tool can callout the tts and say it in command line.
  If you can not run his demo, please check if you have set your local policy to run the powershell file. via the following command: 
    Get-ExecutionPolicy -List
  At least you should have currentUser under Unrestricted policy. if not, run the powershell under administrator role. Via the following command:
    Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Unrestricted
  Then you can run this script like following:
    .Example powershell .\speak.ps1 'say some thing'

## gradlew.ps1
You may use this tool in command line and get Windows 10 toast(tested on my surface :)) when it is done.
- Before you go:
    You need to install this module first, type the following command in the powershell to install it: 
        Install-Module -Name BurntToast
        
    How to use it? You may need to put this file under the project folder. Run it in the Terminal window like the following.
        .Example powershell .\gradlew.ps1 -tasks timers4me:installRelease
