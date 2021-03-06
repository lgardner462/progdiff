Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*  |  Select-Object DisplayName | Export-Csv -Path "C:\Users\$env:USERNAME\Desktop\prog.csv"
Get-WmiObject -Class "win32_quickfixengineering" | Select-Object -Property HotFixId | Export-Csv -Path "C:\Users\$env:USERNAME\Desktop\update.csv"

$a = get-content "C:\Users\$env:USERNAME\Desktop\prog.csv"
$b = get-content "E:\progdiff\masterprog.csv"
$c = get-content "C:\Users\$env:USERNAME\Desktop\update.csv"
$d = get-content "E:\progdiff\masterupdate.csv"

$TestPath = Test-Path D:\progdiff\masterprog.csv
If ($TestPath = $TRUE) {($b = get-content "D:\progdiff\masterprog.csv")}
If ($TestPath = $TRUE) {($d = get-content "D:\progdiff\masterupdate.csv")}
If ($TestPath = $FALSE) {($b = get-content "E:\progdiff\masterprog.csv")}
If ($TestPath = $FALSE) {($d = get-content "E:\progdiff\masterupdate.csv")}
Diff $a $b > "C:\Users\$env:USERNAME\Desktop\ProgramDifference.txt"
Diff $c $d > "C:\Users\$env:USERNAME\Desktop\UpdateDifference.txt"