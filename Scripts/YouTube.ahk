; ================================================================================
; YouTube
; ================================================================================

CapsLock & y::Run, https://www.youtube.com/feed/subscriptions

; https://github.com/rg3/youtube-dl
; cinst youtube-dl
; cinst ffmpeg

; Download as video
CapsLock & PgDn::
    Send, ^l
    CopyToClipboard()
    Nome := """%(title)s.%(ext)s"""
    RunWait, cmd /k youtube-dl -o %Nome% %Clipboard%, E:\Temp
return

; Download as mp3
CapsLock & PgUp::
    Send, ^l
    CopyToClipboard()
    RunWait, cmd /k youtube-dl --extract-audio --audio-format mp3 %Clipboard%, E:\Temp
return
