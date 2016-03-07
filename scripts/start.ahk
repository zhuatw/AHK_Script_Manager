DetectHiddenWindows, On
SysGet, Mon1, Monitorworkarea, 1

;;Foxmail 获取计算机名, 住处不开邮件 
EnvGet, computer_name, COMPUTERNAME
if (computer_name = "PC-20160123FLNQ" )
{
  IfWinNotExist ahk_class TFoxMainFrm.UnicodeClass
  {
    Run, d:\Program Files (x86)\Foxmail\Foxmail.exe 
    WinWaitActive,ahk_class TFoxMainFrm.UnicodeClass
    Sleep, 6000
    WinMinimizeAll
  }
}

;;vim
IfWinNotExist ahk_class Vim
{
  Run, gvim.exe, c:\Program Files (x86)\Vim\vim74\, Minimize
  WinWaitActive, ahk_class Vim
  Sleep, 6000
  ;WinMove, ahk_class Vim, ,0 ,Mon1Right/2 ,Mon1Right/2 ,Mon1Bottom
  WinMinimizeAll
}

;;tc
IfWinNotExist ahk_class TTOTAL_CMD
{
  Run C:\totalcmd\TOTALCMD64.EXE
  WinWaitActive, ahk_class TTOTAL_CMD
  Sleep, 4000
  WinMinimizeAll
}
;;youdao
IfWinNotExist, ahk_class YodaoMainWndClass
{
 ;; Run, YodaoDict.exe, %HOMEPATH%\AppData\Local\Youdao\Dict\Application\
  Run, c:\Users\Administrator\AppData\Local\Youdao\Dict\Application\YodaoDict.exe
  WinWaitActive,ahk_class YodaoMainWndClass
  Winmove,ahk_class YodaoMainWndClass,,Mon1Right/2,0,Mon1Right/2,Mon1Bottom/2
  Sleep, 4000
  WinMinimizeAll
}

;;qjvpn
; IfWinNotExist, ahk_exe qjvpn.exe
; {
;   Run qjvpn.exe, C:\Program Files (x86)\qjvpn\
;   Sleep, 3000
;   Send !a
;   Sleep, 3000
;   Send !c
;   Sleep, 4000
;   WinMinimizeAll
; }


;;audacity
IfWinNotExist, ahk_class wxWindowClassNR
{
  Run, audacity.exe, C:\Program Files (x86)\Audacity\
  WinWaitActive, ahk_class wxWindowClassNR
  Sleep, 6000
  WinMove, ahk_class wxWindowClassNR,,Mon1Right/2,Mon1Bottom/2,Mon1Right/2,Mon1Bottom/2
  WinMinimizeAll
}

;;liebao
IfWinNotExist, ahk_class Chrome_WidgetWin_100
{
  Run, C:\Users\Administrator\AppData\Local\liebao\liebao.exe
  ; http://site.baidu.com/default2.htm
  WinWaitActive, ahk_class Chrome_WidgetWin_100
  ;WinMove, ahk_class Chrome_WidgetWin_1,0,0,Mon1Right/2,Mon1Bottom/2
  Sleep, 14000
  WinMinimizeAll
}

;;Emacs
IfWinNotExist, ahk_class Emacs
  {
    Run, runemacs.exe, C:\Program Files\emacs\bin\
    WinWaitActive, ahk_class Emacs
    WinMove, ahk_class Emacs,,0,0,Mon1Right/2,Mon1Bottom
    Sleep, 14000
    Send #{Left}
    Sleep, 2300
  WinMinimizeAll
  }

;;wiz
IfWinNotExist ahk_class ahk_class WizNoteMainFrame
{
  Run, c:\Program Files (x86)\WizNote\Wiz.exe 
  WinWaitActive,ahk_class WizNoteMainFrame 
  Sleep, 4000
  Send, {F9}
}

Return
