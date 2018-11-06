; ================================================================================
; Information
; ================================================================================

; Info
RShift & RCtrl::
    FormatTime, CurrentDateTime1,, dd ddd - MMM
    FormatTime, CurrentDateTime2,, dd/MM/yyyy - HH:mm:ss
    info := CurrentDateTime1 . "`n" . CurrentDateTime2 . "`n" . A_IPAddress1 . "`n" . A_ComputerName
    ShowOSD(info, 5000)
return

; Information about selected char
CapsLock & i::
    Send ^c
    ClipWait
    sel := Clipboard
    info := "Idx: " . (Asc(UCase(sel))-64) . "`n" . "Asc: " . Asc(sel)
    ShowOSD(info, 3000)
return
