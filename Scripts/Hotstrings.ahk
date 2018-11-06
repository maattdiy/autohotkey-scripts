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
:*:;pi10::ping 10.1.1.
:*:;pi19::ping 192.168.1.

;IPs
:*:;\19::\\192.168.0.50\
:*:;\10::\\10.1.1.

; Favorite softwares
:*:;ah::autohotkey{Space}
:*:;ak::autohotkey{Space}
:*:;op::directory opus{Space}
:*:;ha::Home Assistant
