<#
    This demo will help you say anything.
    If you can not run his demo, please check if you have set your local policy to run the powershell file. via the following command: 
        Get-ExecutionPolicy -List
    At least you should have currentUser under Unrestricted policy. if not, run the powershell under administrator role. Via the following command:
        Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Unrestricted
    
    Then you can run this script like following:
    
    .Example powershell .\speak.ps1 'say some thing'
#>
param([string]$say='Hi, I can say anything!') #get build command
Write-Host -ForegroundColor Magenta $say
Add-Type -AssemblyName System.speech #添加.NET Speak库
$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
$speak.Speak($say)