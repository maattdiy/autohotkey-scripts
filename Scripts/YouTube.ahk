; ================================================================================
; YouTube
; ================================================================================

CapsLock & y::Run, https://www.youtube.com/feed/subscriptions

; https://github.com/rg3/youtube-dl
; choco install youtube-dl
; choco install ffmpeg

; Download as video
CapsLock & PgDn::
    CopyToClipboard()
    Nome := """%(title)s.%(ext)s"""
    RunWait, cmd /k C:\ProgramData\chocolatey\bin\youtube-dl -o %Nome% %Clipboard%, E:\Temp
return

; Download as mp3
CapsLock & PgUp::
    CopyToClipboard()
    RunWait, cmd /k C:\ProgramData\chocolatey\bin\youtube-dl --extract-audio --audio-format mp3 %Clipboard%, E:\Temp
return
