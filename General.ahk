
; Browser
XButton1::RunBrowser()

; Show desktop
XButton2::#d

; Minimize
CapsLock & Down::WinMinimize, A

; Explorer
RControl::DoubleTapSend("#e")

; Calculator
NumLock::DoubleTapRun("calc")

; Go to file
CapsLock & Up::
    if WinActive("ahk_exe Code.exe") or WinActive("ahk_exe devenv.exe")
        Send ^p
return

; Reload
CapsLock & r::
    Send ^s
    Sleep 500
    Reload
return

; Edit AHK project
CapsLock & a::
    Run, %A_ScriptDir%\AutoHotkey.code-workspace
return

; Browser Query
CapsLock & q::
    Send, ^c
    WinActivate, ahk_exe chrome.exe
    Sleep, 800
    Send, ^t
    Sleep, 100
    Send, ^v{enter}
return

; Slack
CapsLock & s::
    WinActivate, ahk_exe slack.exe
    Send, ^k
return

; Ok
CapsLock & o::
    Send, Ok{enter}
return

; Ok (Like)
CapsLock & 1::
	Send, :{+}1:{enter}
return

; Cmd
CapsLock & c::
    Run, cmd
return

; Paste (simulated for TS)
CapsLock & v::
    Send, %Clipboard%
return

; Close
CapsLock & x::
    Send, !{F4}
return

; HASS
CapsLock & h::
    Run, chrome.exe -kiosk --profile-directory=Default --app-id=jpglnfnbjlllkifkmhdfjcfaicoldpbb
return

; Virtual Desktops
#If MouseIsOverTaskbar()
WheelUp::Send {Ctrl Down}{LWin Down}{Left}{LWin Up}{Ctrl Up}
WheelDown::Send {Ctrl Down}{LWin Down}{Right}{LWin Up}{Ctrl Up}
#If
