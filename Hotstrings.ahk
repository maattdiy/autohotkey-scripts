; Hotstrings
; https://autohotkey.com/docs/Hotstrings.htm

; Date
:*:=d::
CapsLock & d::
    FormatTime, CurrentDateTime,, yyyyMMdd
    SendInput %CurrentDateTime%
return

; Time
:*:=t::
:*:=h::
CapsLock & t::
    FormatTime, CurrentDateTime,, HHmmss
    SendInput %CurrentDateTime%
return

; Ping
:*:=pi::
    Send, ping 10.1.1. -t{Right}{Right}{Right}
return

; AutoHotkey
:*:=ah::
    Send, autohotkey{Space}
return
