; ================================================================================
; Hotstrings
; https://autohotkey.com/docs/Hotstrings.htm
; ================================================================================

; Date
:*:;d::
    FormatTime, CurrentDateTime,, yyyyMMdd
    SendInput %CurrentDateTime%
return

; Time
:*:;tm::
:*:;hr::
    FormatTime, CurrentDateTime,, HHmmss
    SendInput %CurrentDateTime%
return

; Now
:*:;n::
    FormatTime, CurrentDateTime,, MM/dd/yyyy HH:mm:ss
    SendInput %CurrentDateTime%
return

; Ping
:*:;pi::
    Send, ping 10.1.1. -t{Right 3}
return

; AutoHotkey
:*:;ah::autohotkey{Space}
:*:;ak::autohotkey{Space}

; Directory Opus
:*:;op::directory opus{Space}
