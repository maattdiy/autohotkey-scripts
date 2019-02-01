; ================================================================================
; Media
; ================================================================================

#If MouseIsLeft()
WheelUp::Send {Volume_Up}
WheelDown::Send {Volume_Down}
RButton::Send {Media_Next}
LButton::
	IfWinNotExist ahk_exe Spotify.exe
	{		
		Run, %A_AppData%\Spotify\Spotify.exe, , Min
		ShowOSD("Spotify", 500)
		WinWaitActive, ahk_exe Spotify.exe, , 20

		if ErrorLevel
			return
		else
			MoveActiveWindowToDesktop()
	}
	Send {Media_Play_Pause}
return
#If
