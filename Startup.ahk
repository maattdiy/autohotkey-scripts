#SingleInstance, Force
#NoTrayIcon
#NoEnv

Run, %A_ScriptDir%\Main.ahk, %A_ScriptDir%
if FileExist("C:\Windows\System32\drivers\keyboard.sys")
    Run, %A_ScriptDir%\Utils\intercept\intercept.exe /apply, %A_ScriptDir%\Utils\intercept, Hide

ExitApp
