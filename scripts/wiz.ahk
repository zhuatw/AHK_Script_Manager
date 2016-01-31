#SingleInstance Force
;wiz_vim
::zwv::
WinActivate, ahk_class WizNoteMainFrame
Sleep, 400
ControlClick, x312 y96, ahk_class WizNoteMainFrame
Send {Down 2}
Send {Down}
Send {Enter} 
Return

;wiz_runemacs_edit
::zwe::
 WinActivate, ahk_class WizNoteMainFrame
 Sleep, 400
 ControlClick, x312 y96, ahk_class WizNoteMainFrame
 Send {Down 3}
 Send {Enter} 
Return

;wiz_rename
::zwr::
WinActivate, ahk_class WizNoteMainFrame
Sleep, 400
ControlClick, x312 y123, ahk_class WizNoteMainFrame
Return

;search
::zws::
WinActivate, ahk_class WizNoteMainFrame
Sleep, 400
Send, !d 
Return

;folder
::zwf::
WinActivate, ahk_class WizNoteMainFrame
Click, 183,138 
Sleep, 400
Return

;Delete file
::zwd::
WinActivate, ahk_class WizNoteMainFrame
Sleep, 800
Click, 607,95
Return