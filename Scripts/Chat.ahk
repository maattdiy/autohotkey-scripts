; ================================================================================
; Chat
; ================================================================================

; Oi, bom dia/tarde
:*:;oi::
    SendInput, oi{,}{Space}

    FormatTime, Time,, hhmm
    if (Time <= "1200")
        SendInput, bom dia
    else
        SendInput, boa tarde

    SendInput, +{enter}
return

#If Not WinDev()
;F9::Send, ?{enter}
F10::Send, Ok{enter}
F11::Send, :{+}1:{enter} ; Like
#if
