::zword::
#SingleInstance Force
DetectHiddenWindows, on
SysGet, Mon1, Monitorworkarea, 1

IfWinNotExist ahk_class YodaoMainWndClass
{
  ; Run C:\Users\Administrator\AppData\Local\Youdao\Dict\Application\YodaoDict.exe
  Run %HOMEPATH%\AppData\Local\Youdao\Dict\Application\YodaoDict.exe
  WinWaitActive
  Sleep, 11000 ;第一次开就多待几秒
  Send ^+!y
}
Else
;  IfWinNotActive ahk_class YodaoMainWndClass
{
    Send ^+!y
    WinMove, ahk_class YodaoMainWndClass,,Mon1Right/2,0,Mon1Right/2,Mon1Bottom/2
}
;猎豹
IfWinNotExist ahk_class Chrome_WidgetWin_100
  {
    Run %HOMEPATH%\AppData\Local\liebao\liebao.exe
    WinWaitActive
    WinMove, ahk_class Chrome_WidgetWin_100,,0,0,Mon1Right/2,Mon1Bottom/2
  }
  Else
  {
    IfWinNotActive ahk_class Chrome_WidgetWin_100
     {
      WinActivate,  ahk_class Chrome_WidgetWin_100
      WinMove, ahk_class Chrome_WidgetWin_100,,0,0,Mon1Right/2,Mon1Bottom/2
     }
     Else
     WinMove, ahk_class Chrome_WidgetWin_100,,0,0,Mon1Right/2,Mon1Bottom/2
}
;firefox
IfWinNotExist ahk_class MozillaWindowClass
{
  Run C:\Program Files (x86)\Mozilla Firefox\firefox.exe
  WinWaitActive
  WinMove, ahk_class MozillaWindowClass,,0,Mon1Bottom/2,Mon1Right/2,Mon1Bottom/2
}
Else
{
  IfWinNotActive ahk_class MozillaWindowClass
  {
    WinActivate, ahk_class MozillaWindowClass
    WinMove, ahk_class MozillaWindowClass,,0,Mon1Bottom/2,Mon1Right/2,Mon1Bottom/2
  }
    Else
    WinMove, ahk_class MozillaWindowClass,,0,Mon1Bottom/2,Mon1Right/2,Mon1Bottom/2
}
;audacity
IfWinNotExist ahk_class wxWindowClassNR  
  {
    Run C:\Program Files (x86)\Audacity\audacity.exe
    WinWaitActive
    WinMove, ahk_class wxWindowClassNR,,Mon1Right/2,Mon1Bottom/2,Mon1Right/2,Mon1Bottom/2
  }
  Else
  {
    IfWinNotActive ahk_class wxWindowClassNR
    {
      WinActivate, ahk_class wxWindowClassNR
      WinMove, ahk_class wxWindowClassNR,,Mon1Right/2,Mon1Bottom/2,Mon1Right/2,Mon1Bottom/2
    }
    Else
    WinMove, ahk_class wxWindowClassNR,,Mon1Right/2,Mon1Bottom/2,Mon1Right/2,Mon1Bottom/2
    }
  Return

; ahk_class YodaoMainWndClass
;  "C:\Users\Administrator\AppData\Local\Youdao\Dict\Application\YodaoDict.exe"
; ahk_class MozillaWindowClass