; ================================================================================
; Browser
; ================================================================================

XButton1::
AppsKey::
    RunBrowser()
return

; Browser query
CapsLock & q::
    CopyToClipboard()
    RunBrowser()
    Sleep 300
    Send, ^v{enter}
return
