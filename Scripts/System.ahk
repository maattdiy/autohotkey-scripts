; ================================================================================
; System
; ================================================================================

; Change to CloudFlare DNS
CapsLock & 8::
    Run, cmd
    WinWaitActive, ahk_exe cmd.exe, , 5
    Sleep 500
    SendInput, netsh interface ip set dns "Wi-Fi" static 1.1.1.1 primary{enter}
return

; Change to PiHole DNS
CapsLock & 9::
    Run, cmd
    WinWaitActive, ahk_exe cmd.exe, , 5
    Sleep 500
    SendInput, netsh interface ip set dns "Wi-Fi" static 192.168.0.50 primary{enter}
return

; Show network adapters
CapsLock & 0::Run ncpa.cpl

; Cancel screen flipping
^!Left::
^!Right::
^!Up::
^!Down::
