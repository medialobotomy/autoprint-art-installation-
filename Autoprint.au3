;
; AutoIt Version: 3.3
; Language:       English
; Platform:       Win10
; Author:        Media Lobotomy
;
; Script Function:
;   Prints pictures in a loop.
;

AutoItSetOption("SendKeyDelay", 400)

Opt("WinTitleMatchMode", 3)
;WinActivate("[CLASS:VLC video output 0D8F3938]", "VLC media player") ;Switch to vlc
;WinActivate("Camera", "")
;WinActivate("VLC media player", "") ;Switch to vlc
;Opt("WinTitleMatchMode", 1)
;Sleep(2000000)

Sleep(2000)

$LoopMe = 0

While ($LoopMe < 100)
    $LoopMe = $LoopMe + 1
;    Run("C:\Users\Film\Pictures\Camera Roll")

    ;Activate captures folder (needs to be open), and open the last picture (the most recent if sorted by date) in IrfanView
    ;Then use IrfanView to print (to default printer), pause for 3 minutes, and repeat...
;    If $Stage = 1 And WinActivate("Captures", "") <> 0 Then
        Send("{PGDN}")
        Send("{END}")
        Send("+{F10}") ;Keyboard shortcut for rightclicking (shift+f10)
        Send("hi") ;Should select 'open with' menu and then 'i' for IrfanView
        Sleep(1000)
;        Opt("WinTitleMatchMode", 2)
;        WinActivate("IrfanView", "") ;Switch to IrfanView
;        Opt("WinTitleMatchMode", 3)
        Sleep(1000)
        Send("^p") ;Ctrl-p, to open up print menu.
        Send("{ENTER}") ;OK/start print
        Send("{ESC}") ;Exits IrfanView.
;    EndIf

    Sleep(180000) ;Pause for 3 minutes
WEnd

; Finished!
h
