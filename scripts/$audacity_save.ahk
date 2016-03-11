^>Numpad0::
Send {Space}
Send ^+e
Sleep, 1000
ControlSetText, Edit1, %clipboard%, ahk_exe audacity.exe
Send !s
Sleep, 1000
clipboard =
Sleep, 1000
Send ^w
Sleep, 1000
Send ^n
Sleep, 2000
WinMinimize
Sleep, 1000
WinActivate, ahk_class Emacs
Return