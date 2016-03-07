#SingleInstance, Force

;zhua'''''''''''''''''''''''
$CapsLock::Escape

AppsKey & LShift::
Send #{Left}
Return

;Emacs
AppsKey & LControl::
Sleep, 430
WinActivate, ahk_class Emacs
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

;gvim
AppsKey & LAlt::
Sleep, 430
WinActivate, ahk_class Vim
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

;wzi folder Control
AppsKey & f::
IfWinNotExist, ahk_class WizNoteMainFrame
  Send ^!m
WinActivate, ahk_class WizNoteMainFrame
ControlFocus, CWizMultiSelectTreeCtrl1, ahk_class WizNoteMainFrame
Return

AppsKey & t::
IfWinNotExist, ahk_class WizNoteMainFrame
  Send ^!m
WinActivate, ahk_class WizNoteMainFrame
ControlFocus, WizListCtrl1, ahk_class WizNoteMainFrame
Return

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
;;;;;;;;;;;;;;;;;;;Control table
ControlClick, x312 y123, ahk_class WizNoteMainFrame
Send, +{End}
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
AppsKey & z::
IfWinNotExist, ahk_class WizNoteMainFrame
  Send ^!m
WinActivate, ahk_class WizNoteMainFrame
Sleep, 1000
Send, !d 
Send, {Delete} 
Send, {Enter}
Return

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

AppsKey & n::
Send {F8}
Return

AppsKey & p::
Send {F7}
Return

AppsKey & RAlt::
Send {AppSkey}
Return

; AppsKey & m::
; IfWinNotExist, ahk_class WizNoteMainFrame
;   Send ^!m
; WinActivate, ahk_class WizNoteMainFrame
; ControlFocus, WizToolBar1, ahk_class WizNoteMainFrame
; ControlGetPos, x, y
; MouseMove, x+180, y+480 
; Return

; AppsKey & c::
; MouseClick, Right
; Return

; AppsKey & m::
; IfWinNotExist, ahk_class WizNoteMainFrame
;   Send ^!m
; WinActivate, ahk_class WizNoteMainFrame
; Send, !d 
; Send, wzi files index{Enter}
; Sleep, 4300
; ControlClick, WizToolBar3, ahk_class WizNoteMainFrame,,,, NA x74 y19
; Sleep, 2000
; Send {g}
; Send {Enter} 
; Sleep, 3000
; Return

#IfWinActive ahk_class Chrome_WidgetWin_100
{
    AppsKey & w::
    Send !d
    Sleep, 1000
    Send ^c
    Sleep, 1000
    WinGetActiveTitle, Title
    Sleep, 1000
    clipboard = %Title%`r`n[[%clipboard% ]]
    WinActivate, ahk_class Vim 
    Return
}
