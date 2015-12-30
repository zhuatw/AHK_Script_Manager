#!]::

 WinActivate, ahk_exe audacity.exe 
 Send {Space}
 Sleep, 1000
 Send ^+e
 Sleep, 1400
 ControlSetText, Edit1, %clipboard%, ahk_exe audacity.exe
 Send !s
 Sleep, 1000
 tmp = %clipboard%
 tmp =
 clipboard = %tmp%
 Sleep, 1000
 Send ^w
 Sleep, 1000
 Send ^n
 Sleep, 2333
; WinMinimizeAll
 Sleep, 2000
 IfWinNotExist ahk_class TTOTAL_CMD
   Run C:\totalcmd\TOTALCMD64.EXE
 Else
   IfWinNotActive ahk_class TTOTAL_CMD
     WinActivate
   Else
     WinMaximize    
 Sleep, 2000
  WinActivate, ahk_class Emacs
; WinRestore, ahk_class Emacs
 Send {Escape}
Return