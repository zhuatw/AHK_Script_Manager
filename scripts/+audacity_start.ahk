DetectHiddenWindows, On
SysGet, Mon1, Monitorworkarea, 1

IfWinNotExist ahk_class TFoxMainFrm.UnicodeClass
  Run d:\Program Files (x86)\Foxmail\Foxmail.exe

IfWinNotExist ahk_class ahk_class WizNoteMainFrame
  Run C:\Program Files (x86)\WizNote\Wiz.exe

IfWinNotExist, ahk_class YodaoMainWndClass
{
Run, YodaoDict.exe, %HOMEPATH%\AppData\Local\Youdao\Dict\Application\
WinWaitActive,ahk_class YodaoMainWndClass
Winmove,ahk_class YodaoMainWndClass,,Mon1Right/2,0,Mon1Right/2,Mon1Bottom/2
WinMinimize
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

IfWinNotExist, ahk_class wxWindowClassNR
{
Run, audacity.exe, C:\Program Files (x86)\Audacity\
WinWaitActive, ahk_class wxWindowClassNR
WinMove, ahk_class wxWindowClassNR,,Mon1Right/2,Mon1Bottom/2,Mon1Right/2,Mon1Bottom/2
WinMinimize
}

IfWinNotExist, ahk_class Emacs
{
Run, runemacs.exe, C:\Program Files\emacs\bin\, Max
WinWaitActive, ahk_class Emacs
WinMove, ahk_class Emacs,,Mon1Right/2,0,Mon1Right/2,Mon1Bottom
}

IfWinNotExist, ahk_class TTOTAL_CMD
  Run, TOTALCMD64.EXE, C:\totalcmd\, ,Max

Return