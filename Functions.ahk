; Functions

RunBrowser() {
    If WinExist("ahk_exe opera.exe")
        WinActivate
    else
        Run opera
    WinWaitActive, ahk_exe opera.exe, , 5
    Sleep 300
    Send, ^t
}

DoubleTapRun(cmd){
    if DoubleTap()
        Run %cmd%
}

DoubleTapSend(keys){
    if DoubleTap()
        Send %keys%
}

DoubleTap(){
    return (A_ThisHotkey = A_PriorHotkey) && (A_TimeSincePriorHotkey < 300)
}

MouseIsOver(WinTitle) {
    MouseGetPos,,, Win
    return WinExist(WinTitle . " ahk_id " . Win)
}

MouseIsOverTaskbar() {
    return MouseIsOver("ahk_class Shell_TrayWnd")
}

MouseIsTop() {
    MouseGetPos,x,y
    return (y <= 1)
}

MouseIsLeft() {
    MouseGetPos,x,y
    return (x <= 5) and (y <= 800)
}

MonitorOn() {
    SendMessage 0x112, 0xF170, -1, , Program Manager
}

MonitorOff() {
    SendMessage 0x112, 0xF170, 2, , Program Manager
}
