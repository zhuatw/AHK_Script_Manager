::zs::
WinWaitClose
WinWaitActive, ahk_exe audacity.exe 
  Send {Space}
  ; Sleep, 1000
  ; Send ^+e
  ; Sleep, 1400
  ; ControlSetText, Edit1, %clipboard%, ahk_exe audacity.exe
  ; Send !s
  ; Sleep, 1000
  ; tmp = %clipboard%
  ; tmp =
  ; clipboard = %tmp%
  ; Sleep, 1000
  ; Send ^w
  ; Sleep, 1000
  ; Send ^n
  ; WinMinimize
  return
