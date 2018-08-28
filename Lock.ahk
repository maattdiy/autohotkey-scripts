; Lock/unlock functions

; Variables
locked:=False

; Lock
Scrolllock::
    locked:=True
    WinMinimizeAll
    DllCall("LockWorkStation")
    Sleep, 7000
    MonitorOff()
return

; Lock (Pause)
Pause::
    if (locked=False) {
        locked:=True
        ;BlockInput, On
        WinMinimizeAll
        Sleep, 1000

        Gui, Color, Black
        Gui +AlwaysOnTop -SysMenu +Owner +ToolWindow -Caption
        Gui, Show, x0 y0 w%A_ScreenWidth% h%A_ScreenHeight%
        MonitorOff()        
    } else {
        locked:=False
        ;BlockInput, Off        
        Gui, Hide
        MonitorOn()
        Sleep, 2000
        WinMinimizeAllUndo
    }
return
