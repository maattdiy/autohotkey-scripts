; ================================================================================
; Desktop/Explorer/Windows
; ================================================================================

; Show desktop
XButton2::Send #d
CapsLock & d::Send #d

; Virtual Desktops (Native switch with mouse scroll in taskbar)
#If MouseIsOverTaskbar()
WheelUp::Send {Ctrl Down}{LWin Down}{Left}{LWin Up}{Ctrl Up}
WheelDown::Send {Ctrl Down}{LWin Down}{Right}{LWin Up}{Ctrl Up}
#If

; Virtual Desktops (Dll switch with Win keys)
LWin & Right::SwitchToNextDesktop()
LWin & Left::SwitchToPrevDesktop()
LWin & Up::MoveActiveWindowToDesktop(2)
LWin & Down::MoveActiveWindowToDesktop(1)

; Explorer
CapsLock & e::Send, #e
RWin::Send, !{Tab}

; Minimize
#IfWinNotActive, ahk_class WorkerW
CapsLock & Down::WinMinimize, A
#If

; Close
CapsLock & x::Send, !{F4}
