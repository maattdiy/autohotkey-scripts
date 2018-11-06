; ================================================================================
; Home Assistant
; ================================================================================

; Web panel
CapsLock & h::RunHASSWebExternal()

; Save & restart
#If WinActive("hass (Workspace)")
F12::
    HASS_Save()
    HASS_SSH("hassio ha restart")
return
F8::
    HASS_Save()
    WinWait Home Assistant ahk_class Chrome_WidgetWin_1
    WinActivate
    Send, {F5}
return
#If

; Login
#If WinActive("Home Assistant")
F7::Send, hass{Tab}hass2580>{Enter}
#If

; ================================================================================
; Functions
; ================================================================================

HASS_Save() {
    Send ^s
    ShowOSD("Ok", 500)
}

HASS_SSH(cmd) {
    Run, "C:\Program Files\PuTTY\plink.exe" -ssh -pw %A_HASS_PWD% root@192.168.0.50
    Sleep 3000
    Send, %cmd%{Enter}
    Sleep 2000
    Send ^c
}

RunHASSWebLocal() {
    SoundBeep
    Run, chrome.exe --profile-directory=Default --app="https://192.168.0.50:8123/lovelace/0?kiosk&show_tabs", , Max
}

RunHASSWebExternal() {
    Run, chrome.exe --profile-directory=Default --app="%A_HASS_URL_EXT%", , Max
}

RunHASSWorkspace() {
    NotifyEX("Home Assistant", "Config workspace")
    RunHASSWebLocal()
    ;Run, H:\
    Run, \\192.168.0.50\config\hass.code-workspace, , Max
    Sleep 200
    Run, C:\Users\%A_UserName%\AppData\Local\Programs\Opera\launcher.exe
}
