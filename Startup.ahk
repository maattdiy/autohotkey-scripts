#SingleInstance, Force
#NoTrayIcon
#NoEnv

; Run the Main script, with all includes
Run, %A_ScriptDir%\Main.ahk, %A_ScriptDir%

; Check for exclusive keyboard driver
if FileExist("C:\Windows\System32\drivers\keyboard.sys")
    Run, %A_ScriptDir%\Utils\intercept\intercept.exe /apply, %A_ScriptDir%\Utils\intercept, Hide

ExitApp
