; ================================================================================
; Script for exclusive keypad (call in shell:startup)
; ================================================================================

#SingleInstance, Force
#NoEnv

global A_AppPath := "C:\Temp\Clipboard Text.txt"
global A_Text := ""

; ================================================================================
; Driver
; https://github.com/TaranVH/2nd-keyboard/tree/master/Intercept
; ================================================================================

; Check for exclusive keyboard driver
if FileExist("C:\Windows\System32\drivers\keyboard.sys")
    Run, %A_ScriptDir%\Utils\intercept\intercept.exe /apply, %A_ScriptDir%\Utils\intercept, Hide

; ================================================================================
; Keys mapping
; ================================================================================

#if (getKeyState("F23", "P"))
F23::return
NumpadDot::return
NumLock::return
Numpad1::AddKey("1")
Numpad2::AddKey("2")
Numpad3::AddKey("3")
Numpad4::AddKey("4")
Numpad5::AddKey("5")
Numpad6::AddKey("6")
Numpad7::AddKey("7")
Numpad8::AddKey("8")
Numpad9::AddKey("9")
Numpad0::AddKey("0")
NumpadEnter::ProcessKeys()
NumpadClear::RemoveKey()
NumpadSub::RemoveKey()
BackSpace::RemoveKey()
#if

; ================================================================================
; Functions
; ================================================================================

AddKey(k) {
    SoundBeep
    A_Text := A_Text . k
}

RemoveKey() {
    SoundBeep
    if (A_Text != "") {
        StringLeft, A_Text, A_Text, StrLen(A_Text) - 1
    }
}

ProcessKeys() {
    SoundBeep
    Register()
    A_Text := ""
}

Register() {
    Clipboard := A_Text
    Run %A_AppPath%
}
