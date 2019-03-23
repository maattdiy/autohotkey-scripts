
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
    Run, chrome.exe -kiosk --profile-directory=Default --app-id=fghmlbbaklalcbeiakgffpodbokndpcj
return

; Calculator
CapsLock & 4::Run, calc

; Cmd
CapsLock & '::Run, cmd

; PowerShell
CapsLock & Tab::Run, powershell

; Beyond Compare
CapsLock & b::Run, "C:\Program Files (x86)\Beyond Compare 3\BCompare.exe"

; Mail
CapsLock & 2::#1

; Notepad++
CapsLock & Ctrl::
    If WinExist("ahk_exe notepad++.exe")
        WinActivate
    else
        Run, notepad++
return

; Folders
CapsLock & Numpad1::Run, %A_DropBox%
CapsLock & Numpad2::Run, %A_DropBox%\Config
CapsLock & NumpadDiv::Send, #{NumpadDiv}  ; Directory Opus Tab group Donwloads

; GitHub
CapsLock & g::Run, github
;CapsLock & g::Run, chrome.exe --profile-directory="Profile 1" --app-id=abhpbnbobmlihagcelgdhjmpfkegkmaa

; WhatsApp
CapsLock & w::Run, chrome.exe -kiosk --profile-directory=Default --app-id=hnpfjngllnobngcgfapefoaidbinmjnm

; Visual Studio
CapsLock & 3::Run, devenv

; ================================================================================
; Utils
; ================================================================================

; Edit file in Notepad++
#if WinActive("ahk_class dopus.lister")
CapsLock & Space::
    CopyToClipboard2()
    Run, notepad++ "%Clipboard%"
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

; ================================================================================
; Learn
; ================================================================================

Ctrl & F9::Run, https://cursos.alura.com.br/dashboard, , Max
