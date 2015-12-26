#SingleInstance Force
#NoTrayIcon
#NoEnv

$CapsLock::Escape
;;;;;;;;;;;;;;;;;;;;;;;;
;;~Escape::^Space
;;如第一dfdf个esc
AppsKey::
Send {Escape}
Send ^{Space}

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
;;;;;;;;;;;;;;;;;;;;;;;;

;;;只复制文件名不含扩展名
#IfWinActive, ahk_class TTOTAL_CMD
^3::  ;*** 可以自己设置你想用的快捷键
Clipboard := ""
PostMessage, 1075, 2017
ClipWait, 1
Clipboard := RegExReplace(Clipboard, "(.+)\..+", "$1")