;;Autohotkey 中文论坛 - 改进的分半屏显示窗口脚本 WIZ ahk_class Emacs 1920 1036
#w::
DetectHiddenWindows, on
SysGet, Mon1, Monitorworkarea, 1
IfWinNotActive ,ahk_class Emacs
{
  WinActivate ,ahk_class Emacs
  ; WinMove, ahk_class Emacs,,Mon1Right/2,0,Mon1Right/2,Mon1Bottom
}
Else
;WinMaximize
{
  WinGetPos, X, Y, Width, Height, ahk_class Emacs
  ;印象中当计算机在最大化时 X 可能不会是零，但是有可能会成负数的，不会是正数的
  If X <= 0
  {
  WinMove, ahk_class Emacs,,Mon1Right/2,0,Mon1Right/2,Mon1Bottom
  WinActivate, ahk_class Chrome_WidgetWin_1
  WinMove, ahk_class Chrome_WidgetWin_1,,0,0,Mon1Right/2,Mon1Bottom
  WinActivate, ahk_class Emacs
  }
Else
  WinMove, ahk_class Emacs,,0,0,Mon1Right,Mon1Bottom
}

Return
