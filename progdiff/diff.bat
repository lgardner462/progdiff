powershell -command "& {Set-ExecutionPolicy Remotesigned}"
powershell -noexit %~d0\progdiff\DiffFinder.ps1 -sta
pause