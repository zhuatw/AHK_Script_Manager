#SingleInstance Force
#NoTrayIcon
#NoEnv

;;;;;;;;;;;;;;;;;;;;;;;;
::zclip::
ClipBoard :=
Return

;;;;;;;;;;;;;;;;;;;;;;;;
::ztc::
DetectHiddenWindows, on
IfWinNotExist ahk_class TTOTAL_CMD
  Run C:\totalcmd\TOTALCMD64.EXE
Else
  IfWinNotActive ahk_class TTOTAL_CMD
    WinActivate
  Else
    WinMaximize    
Return

;;;;;;;;;;;;;;;;;;;;;;;;
::zmute::
Send {Volume_Mute}
Return

;;;;;;;;;;;;;;;;;;;;;;;;
::ztop::  ;激活并置顶当前窗体，直至，esc退出。

SetTimer subTimer, 500
WinGetActiveTitle, OutputVar
WinSet, AlwaysOnTop, On,%OutputVar%
Return

subTimer:
  IfWinNotActive, %OutputVar%, , WinActivate, %OutputVar%,
Return
::xtop::
WinSet, AlwaysOnTop, Off,%OutputVar%
exitapp 