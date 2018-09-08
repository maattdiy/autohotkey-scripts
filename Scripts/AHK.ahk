; ================================================================================
; AutoHotkey
; ================================================================================

RunTest() {
    ;SaveReload()
}

SaveReload() {
    Send ^ks ; Save all (VS Code)
    Sleep 500
    ShowOSD("Ok", 500)
    Reload
}

; Edit AHK VS Code project
CapsLock & a::Run, %A_ScriptDir%\AutoHotkey.code-workspace

; Reload
CapsLock & r::
    ShowOSD("Ok", 500)
    Reload
return
#If WinActive("AutoHotkey")
F12::SaveReload()
F11::RunTest()
#If

; Help
#If WinActive("AutoHotkey")
F1::
    Run %A_ProgramFiles%\AutoHotkey\AutoHotkey.chm
    Run %A_ProgramFiles%\AutoHotkey\WindowSpy.ahk
return
#If
