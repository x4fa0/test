@echo off
echo Command is executing, please wait...
set customDate=%date:~0,4%_%date:~5,2%_%date:~8,2%
set dateTime=%date:~0,4%-%date:~5,2%-%date:~8,2% %time:~0,2%:%time:~3,2%:%time:~6,2%
set testLogDir=E:\Logs\Test\
set sourceFile=D:\Temp
set daysAgo=7
echo ---------------------- DEL START %dateTime% ----------------------- >> %testLogDir%test_%customDate%.log
forfiles /p %sourceFile% /s /m *.txt /d -%daysAgo% /c "cmd /c del /f @path" >> %testLogDir%test_%customDate%.log
echo ====================== DEL SUCCESS %dateTime% ===================== >> %testLogDir%test_%customDate%.log
echo. >> %testLogDir%test_%customDate%.log
echo. >> %testLogDir%test_%customDate%.log
echo The command has been executed.
pause
