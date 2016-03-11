#SingleInstance, Force

;zhua'''''''''''''''''''''''
$CapsLock::Escape

AppsKey & k::
Send {Up}
Return

AppsKey & j::
Send {Down}
Return

AppsKey & h::
Send {Left}
Return

AppsKey & l::
send {Right}
Return

AppsKey & p::
Send {F7}
Return

AppsKey & n::
Send {F8}
Return

AppsKey & LShift::
Send #{Left}
Return

AppsKey & F1::
WinMaximize, A
Return

AppsKey & F2::
WinMinimize, A
Return

AppsKey & F3::
Send, {Home}
Return

AppsKey & F4::
Send, {End}
Return

AppsKey & F7::
Send, {home}+{end}{Delete}
ClipWait, 0
Return

AppsKey & F8::
Send, {home}+{end}^c
ClipWait, 0
Return

^Numpad0::
SoundSet, +1, ,mute
Return

;Emacs
AppsKey & LControl::
Sleep, 430
WinActivate, ahk_class Emacs
Return

;gvim
AppsKey & LAlt::
Sleep, 430
WinActivate, ahk_class Vim
Return

;;;audacity link
AppsKey & F5::
clipboar = %clipboard% 

Send ^+!y
WinWaitActive,ahk_class YodaoMainWndClass
Send, %clipboard%
Sleep, 1000
Send {End}
Sleep, 1000
Send {Enter} 

Run, http://dict.cn/%clipboard%
Send {Enter} 
Sleep, 3000

Send, #1
Sleep, 4000
Send {R}
Return

;;;audacity save
AppsKey & F6::
Send, #1
Send {Space}
Sleep, 2000
Send ^+e
Sleep, 2000
ControlSetText, Edit1, %clipboard%, ahk_exe audacity.exe
IfWinActive, 警告
{
  Send, !n
  Exit
}
Sleep, 2000
Send !s
Sleep, 2000
Send ^w
Sleep, 2000
Send !n
Sleep, 2000
WinMinimizeAll
Sleep, 1000
WinActivate, ahk_class Emacs
clipboard =
Return

;;yuodao
AppsKey & RShift::
Send ^+!d
Return

AppsKey & RAlt::
Send {AppSkey}
Return

;wzi emacs
AppsKey & e::
IfWinNotExist, ahk_class WizNoteMainFrame
  Send ^!m
WinActivate, ahk_class WizNoteMainFrame
Sleep, 400
ControlClick, x312 y96, ahk_class WizNoteMainFrame
;ControlClick, WizToolBar3, ahk_class WizNoteMainFrame,,,, NA x74 y19
Send {e}
Send {Enter} 
Return

;wzi gvim
AppsKey & v::
IfWinNotExist, ahk_class WizNoteMainFrame
  Send ^!m
WinActivate, ahk_class WizNoteMainFrame
Sleep, 400
ControlClick, x312 y96, ahk_class WizNoteMainFrame
;ControlClick, WizToolBar3, ahk_class WizNoteMainFrame,,,, NA x74 y19
Send {g}
Send {Enter} 
Return

;wzi folder
AppsKey & f::
IfWinNotExist, ahk_class WizNoteMainFrame
  Send ^!m
WinActivate, ahk_class WizNoteMainFrame
ControlFocus, CWizMultiSelectTreeCtrl1, ahk_class WizNoteMainFrame
Return

;wzi list
AppsKey & t::
IfWinNotExist, ahk_class WizNoteMainFrame
  Send ^!m
WinActivate, ahk_class WizNoteMainFrame
ControlFocus, WizListCtrl1, ahk_class WizNoteMainFrame
Return

;;^!v clipboard wiz new file

;wzi Delete file
AppsKey & d::
IfWinNotExist, ahk_class WizNoteMainFrame
  Send ^!m
WinActivate, ahk_class WizNoteMainFrame
Sleep, 430
ControlClick, WizToolBar3, ahk_class WizNoteMainFrame,,,, NA x380 y19
Return

;wzi rename
AppsKey & r::
IfWinNotExist, ahk_class WizNoteMainFrame
  Send ^!m
WinActivate, ahk_class WizNoteMainFrame
Sleep, 400
ControlClick, x312 y123, ahk_class WizNoteMainFrame
;Send, +{End}
Return

;wzi copy name
AppsKey & c::
IfWinNotExist, ahk_class WizNoteMainFrame
  Send ^!m
WinActivate, ahk_class WizNoteMainFrame
Sleep, 400
ControlClick, x312 y123, ahk_class WizNoteMainFrame
Send, ^c
ClipWait
Send, {End}
Sleep, 1000
WinActivate, ahk_class Emacs
Return

;wzi search file
AppsKey & s::
IfWinNotExist, ahk_class WizNoteMainFrame
  Send ^!m
WinActivate, ahk_class WizNoteMainFrame
Sleep, 1000
Send, !d 
Sleep, 1000
Send, ^v{Enter}
Sleep, 1430
Send, !d 
Send, {Delete} 
Return

;wzi wait search file
AppsKey & w::
IfWinNotExist, ahk_class WizNoteMainFrame
  Send ^!m
WinActivate, ahk_class WizNoteMainFrame
Sleep, 1000
Send, !d 
Send, {Delete} 
Send, {Enter}
Return

;;;;;;;;;;;;;;;;; web page for orgmode
#IfWinActive ahk_class Chrome_WidgetWin_100
{
  ;;wait
  AppsKey & t::
  Send,!d 
  Sleep, 400
  clipboard =
  Send, ^c
  ClipWait
  WinGetActiveTitle, Title
  Sleep, 1000
  StringTrimRight, Title, Title, 9
  clipboard = %Title%`r`n[[%clipboard% ]]
  Return

  ;;wiz
  AppsKey & w::
  Send,!d 
  Sleep, 400
  clipboard =
  Send, ^c
  ClipWait
  WinGetActiveTitle, Title
  Sleep, 1000
  StringTrimRight, Title, Title, 9
  clipboard = %Title%`r`nwzi`r`n[[%clipboard% ]]
  Sleep, 1000
  Send, ^!v
  Return

  ;;collect
  AppsKey & c::
  Send,!d 
  Sleep, 400
  clipboard =
  Send, ^c
  ClipWait
  WinGetActiveTitle, Title
  Sleep, 1000
  StringTrimRight, Title, Title, 9
  clipboard = %Title%`r`n[[%clipboard% ]]
  Sleep, 1000
  Send, ^!v
  ;WinActivate, ahk_class Vim 
  Return
}
