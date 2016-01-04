DetectHiddenWindows, On
SysGet, Mon1, Monitorworkarea, 1

EnvGet, computer_name, COMPUTERNAME
if (computer_name <> "PC201409101030" )
{
Sleep, 1000
}
else IfWinNotExist ahk_exe Foxmail.exe
  {
    Run Foxmail.exe,d:\Program Files (x86)\Foxmail\, ,Min
    Sleep, 4300
    WinMinimize
  }

IfWinNotExist ahk_class ahk_class WizNoteMainFrame
{
  Run Wiz.exe, C:\Program Files (x86)\WizNote\, ,Min
  WinWaitActive,ahk_class WizNoteMainFrame 
  Sleep, 4300
  WinMinimize
}

IfWinNotExist, ahk_class YodaoMainWndClass
{
Run, YodaoDict.exe, %HOMEPATH%\AppData\Local\Youdao\Dict\Application\
WinWaitActive,ahk_class YodaoMainWndClass
Winmove,ahk_class YodaoMainWndClass,,Mon1Right/2,0,Mon1Right/2,Mon1Bottom/2
Sleep, 4300
}
; IfWinNotExist, ahk_class Chrome_WidgetWin_100
; {
;   Run, C:\Program Files (x86)\Google\Chrome\Application\chrome.exe, http://site.baidu.com/default2.htm
;   WinWaitActive, ahk_class Chrome_WidgetWin_100
;   WinMove, ahk_class Chrome_WidgetWin_1,0,0,Mon1Right/2,Mon1Bottom/2
; }
IfWinNotExist, ahk_class Chrome_WidgetWin_1
{
Run, C:\Program Files (x86)\Google\Chrome\Application\chrome.exe, http://site.baidu.com/default2.htm
WinWaitActive, ahk_class Chrome_WidgetWin_1
WinMove, ahk_class Chrome_WidgetWin_1,0,0,Mon1Right/2,Mon1Bottom/2
WinMinimize
}
Sleep, 4300

IfWinNotExist, ahk_class wxWindowClassNR
{
Run, audacity.exe, C:\Program Files (x86)\Audacity\
WinWaitActive, ahk_class wxWindowClassNR
WinMove, ahk_class wxWindowClassNR,,Mon1Right/2,Mon1Bottom/2,Mon1Right/2,Mon1Bottom/2
WinMinimize
}
Sleep, 1900
WinMinimizeAll

Sleep, 1900

IfWinNotExist ahk_class TTOTAL_CMD
  Run C:\totalcmd\TOTALCMD64.EXE
Else
  IfWinNotActive ahk_class TTOTAL_CMD
    WinActivate
  Else
    WinMaximize    

  Sleep, 2300

  IfWinNotExist, ahk_class Emacs
  {
    Run, runemacs.exe, C:\Program Files\emacs\bin\, Max
    WinWaitActive, ahk_class Emacs
    WinMove, ahk_class Emacs,,0,0,Mon1Right/2,Mon1Bottom
  }

Return