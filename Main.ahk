; ================================================================================
; Main script (called in shell:startup)
; ================================================================================

; Settings
#SingleInstance, Force
#NoEnv
SetCapsLockState, AlwaysOff
SetNumLockState, AlwaysOn
CoordMode, Mouse, Screen
SetTitleMatchMode 2
;DetectHiddenWindows, On

; Includes (Libs)
#Include Libs\AHKHID.ahk
#Include Libs\Ini.ahk
#Include Libs\Notify.ahk

; Includes (Core)
#Include Scripts\Core\Functions.ahk
#Include Scripts\Core\VirtualDesktop.ahk
Load()

; Includes (Scripts)
#Include Scripts\AHK.ahk
#Include Scripts\Backup.ahk
#Include Scripts\Browser.ahk
#Include Scripts\Chat.ahk
#Include Scripts\Code.ahk
#Include Scripts\Desktop.ahk
#Include Scripts\HASS.ahk
#Include Scripts\Hotstrings.ahk
#Include Scripts\HotstringsSecret.ahk
#Include Scripts\Info.ahk
#Include Scripts\Lock.ahk
#Include Scripts\Media.ahk
#Include Scripts\Shortcuts.ahk
#Include Scripts\System.ahk
#Include Scripts\YouTube.ahk
#Include Scripts\ExtraKeyboards.ahk

; Includes (Work scripts)
#Include Scripts\Work\Shortcuts.ahk
#Include Scripts\Work\SQL.ahk
#Include Scripts\Work\TS.ahk

Load() {
    global A_DropBox := GetParentPath(GetParentPath(A_ScriptDir))
    LoadVirtualDesktopAccessor()    
}
