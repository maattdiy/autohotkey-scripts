
; ================================================================================
; Shortcuts
; ================================================================================

; Slack
CapsLock & s::
    WinActivate, ahk_exe slack.exe
    Send, ^k  ; Jump
return

; Notes
CapsLock & \::
CapsLock & Tab::
    Run, chrome.exe -kiosk --profile-directory=Default --app-id=fghmlbbaklalcbeiakgffpodbokndpcj
return

; Calculator
;NumLock::DoubleTapRun("calc")

; Cmd
CapsLock & 3::Run, cmd

; Beyond Compare
CapsLock & b::Run "C:\Program Files (x86)\Beyond Compare 3\BCompare.exe"

; Mail
CapsLock & 2::
    if WinActive("ahk_exe Mailbird.exe")
        Send, !{F4}
    else
        If WinExist("ahk_exe Mailbird.exe")
            WinActivate
        else
            Run "C:\Program Files (x86)\Mailbird\Mailbird.exe"
return

; Notepad++
CapsLock & Shift::
CapsLock & Ctrl::
    If WinExist("ahk_exe notepad++.exe")
        WinActivate
    else
        Run "notepad++"
return

; Folders
CapsLock & Numpad1::Run, %A_DropBox%
CapsLock & Numpad2::Run, %A_DropBox%\Config
CapsLock & NumpadDiv::Send, #{NumpadDiv}  ; Directory Opus Tab group Donwloads

; GitHub
CapsLock & g::Run, chrome.exe --profile-directory="Profile 1" --app-id=abhpbnbobmlihagcelgdhjmpfkegkmaa

; WhatsApp
CapsLock & w::Run, chrome.exe -kiosk --profile-directory=Default --app-id=hnpfjngllnobngcgfapefoaidbinmjnm

; ================================================================================
; Utils
; ================================================================================
; ================================================================================
; Utils
; ================================================================================

; Edit file in Notepad++

#if WinActive("ahk_class dopus.lister")
CapsLock & Space::
    CopyToClipboard2()
    Run, C:\Program Files (x86)\Notepad++\notepad++.exe "%Clipboard%"
return
#if

; Copy
CapsLock & c::Send, ^+c

; Paste (simulated for TS)
CapsLock & v::
Ctrl & b::
    Send, %Clipboard%
return

; Run selected text
CapsLock & Enter::
CapsLock & NumpadEnter::
    CopyToClipboard()
    Run, %Clipboard%
return
