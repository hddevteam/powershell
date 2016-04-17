$cmd = "ipconfig.exe"
$cmdOutput = & $cmd /all | Out-String -Stream //必须把命令行参数单独写出来
$lastLine = $cmdOutput[-1]
$lastSecondLine = $cmdOutput[-2]
$lastSecondLine
$lastLine
# $cmdOutput
"Count: " 
$cmdOutput.Count

