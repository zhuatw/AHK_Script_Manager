#SingleInstance Force

;audacity link
AppsKey & RShift::
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
Sleep, 2000

Send, #1
Sleep, 4000
Send {R}
Return

;audacity save
;#IfWinActive ahk_class wxWindowClassNR
^Numpad0::
Send, #1
Send {Space}
Sleep, 2000
Send ^+e
Sleep, 2000
;Send, %clipboard% 
;ControlSetText, Edit1, %clipboard% 
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