Get-WmiObject -Class Win32_Product  | Select-Object -Property Name  > D:\progdiff\proglist.txt

Get-WmiObject -Class "win32_quickfixengineering" | Select-Object -Property HotFixId  > D:\progdiff\hotfixes.$(hostname).txt

diff (get-content "D:\progdiff\proglist.txt") (get-content "D:\progdiff\masterproglist.txt") -SyncWindow 100  > D:\progdiff\progdiff.txt

diff (get-content "D:\progdiff\hotfixes.$(hostname).txt") (get-content "D:\progdiff\masterhotfixlist.txt") -SyncWindow 100  > D:\progdiff\updatediff.txt
