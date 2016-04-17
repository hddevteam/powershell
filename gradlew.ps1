<#
    version 0.1
    Before you go:
    You need to install this module first, type the following command in the powershell to install it: 
        Install-Module -Name BurntToast
        
    How to use it? You may need to put this file under the project folder. Run it in the Terminal window.
    
    .Example powershell .\gradlew.ps1 -tasks timers4me:installRelease
#>
param([string]$tasks='timers4me:assembleDebug') #get build command

Write-Host -ForegroundColor Magenta "Build Tasks: $tasks"

$gradlew = '.\gradlew.bat'

#必须用&符号，并且命令要单独写
$cmdOutput = & $gradlew $tasks | Out-String -Stream #get the gradlew result
$cmdOutput
$buildResult = $cmdOutput[-3]
$buildDuration = $cmdOutput[-1]

#例如第1行输出 timers4me:assembleDebug build success
$firstLine = $tasks + ' ' + $buildResult 
#export build duration in secondline
$secondLine = $buildDuration
New-BurntToastNotification -FirstLine $firstLine -SecondLine $secondLine -Sound SMS

