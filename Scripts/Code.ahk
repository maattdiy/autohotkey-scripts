; ================================================================================
; Code
; ================================================================================

; Code navegation
#If WinDev()
RCtrl & Up::Send, ^p              ; Go to file
RCtrl & Right::Send, +{F2}
RCtrl & Left::Send, ^+{F2}
CapsLock & Up::Send, ^p
CapsLock & Right::Send, +{F2}
CapsLock & Left::Send, ^+{F2}
Insert::Send, ^f                   ; Find
CapsLock & Enter::Send, ^+p        ; Commands
CapsLock & Space::Send, !+r        ; Open in Explorer
#If

; Beyond compare navegation
#if WinActive("ahk_exe BCompare.exe")
RCtrl & Down::Send, ^m      ; Next file
RCtrl & Right::Send, ^n     ; Next diff
RCtrl & Left::Send, ^p      ; Prev diff
#If

; ================================================================================
; Code templates
; ================================================================================

; Try
:*:;try::
    SendInput, try {{}{enter}{enter}{}} catch (Exception ex) {{}{enter}
return

; Header/comment
:*:;cab1::
    SendInput, ================================================================================{enter}
    SendInput, {enter}
    SendInput, ================================================================================{enter}
    Send, {Up}{Up}
return

; Sql
:*:;sql::
    SendInput, SELECT * {enter}
    SendInput, FROM {enter}
    SendInput, --WHERE {enter}
    SendInput, --ORDER BY {enter}
    Send, {Up 3}{End}
return
