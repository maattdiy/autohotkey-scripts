; ================================================================================
; Home Assistant
; ================================================================================

; Web panel
CapsLock & h::RunHASSWebLocal()

; Save & restart
#If WinActive("hass (Workspace)")
F12::
    Send ^s
    Sleep 500
    RunWait, cmd /k ping 192.168.0.50 -t
    ;Run, chrome.exe -kiosk --profile-directory=Default --app-id=jpglnfnbjlllkifkmhdfjcfaicoldpbb
return
#If

RunHASSWebLocal() {
    SoundBeep
    Run, chrome.exe --profile-directory=Default --app="https://192.168.0.50:8123/"
}

RunHASSWorkspace() {
    NotifyEX("Home Assistant", "Config workspace")
    RunHASSWebLocal()
    ;Run, H:\
    Run, \\192.168.0.50\config\hass.code-workspace, , Max
    Sleep 200
    Run, C:\Users\%A_UserName%\AppData\Local\Programs\Opera\launcher.exe
}
