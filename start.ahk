DetectHiddenWindows, On
SysGet, Mon1, Monitorworkarea, 1
EnvGet, computer_name, COMPUTERNAME
;;AppsKey table
;;two SingleInstance, Force 
run, c:\Users\%A_UserName%\AHK_Script_Manager\ahk_script_manager.ahk
Sleep, 2000
run, c:\Users\%A_UserName%\vimdesktop\vimd.ahk

;;tc
IfWinNotExist ahk_class TTOTAL_CMD
{
  Run C:\totalcmd\TOTALCMD64.EXE
  WinWaitActive, ahk_class TTOTAL_CMD
  Sleep, 5000
  WinMinimize, A
}

;;vim
IfWinNotExist ahk_class Vim
{
  Run, gvim.exe, c:\Program Files (x86)\Vim\vim74\
  WinWaitActive, ahk_class Vim
  Sleep, 4000
  Send, #{Right}
  Sleep, 3000
  WinMinimize, A
}

;;Foxmail 获取计算机名, 住处不开邮件 
if (computer_name = "PC-20160123FLNQ" )
{
  IfWinNotExist ahk_class TFoxMainFrm.UnicodeClass
  {
    Run, d:\Program Files (x86)\Foxmail\Foxmail.exe 
    WinWaitActive,ahk_class TFoxMainFrm.UnicodeClass
    Sleep, 6000
    Send, !{F4} 
  }
}

;;audacity
IfWinNotExist, ahk_class wxWindowClassNR
{
  Run, audacity.exe, C:\Program Files (x86)\Audacity\
  WinWaitActive, ahk_class wxWindowClassNR
  Sleep, 6000
  WinMove, A, , ,0 ,Mon1Bottom/2 ,Mon1Right/2 ,Mon1Bottom/2
  Sleep, 2000
  WinMinimize, A
}

;;liebao
IfWinNotExist, ahk_class Chrome_WidgetWin_100
{
  Run, http://site.baidu.com/default2.htm
  WinWaitActive, ahk_class Chrome_WidgetWin_100
  Sleep, 14000
;  WinMove, A, , ,Mon1Right/2 ,0 ,Mon1Right/2 ,Mon1Bottom
  Send, #{Right}
  Sleep, 2000
  WinMinimize, A
}

;;youdao
IfWinNotExist, ahk_class YodaoMainWndClass
{
 ;; Run, YodaoDict.exe, %HOMEPATH%\AppData\Local\Youdao\Dict\Application\
Run, c:\Users\%A_UserName%\AppData\Local\Youdao\Dict\Application\YodaoDict.exe
  WinWaitActive,ahk_class YodaoMainWndClass
  Sleep, 10000
  Winmove, A, , ,0 ,0 ,Mon1Right/2 ,Mon1Bottom/2
  Sleep, 2000
  WinMinimize, A
}

;;Emacs
IfWinNotExist, ahk_class Emacs
  {
    Run, runemacs.exe, C:\Program Files\emacs\bin\
    WinWaitActive, ahk_class Emacs
    Sleep, 20000
;    WinMove, ,A , ,0 ,0 ,Mon1Right/2 ,Mon1Bottom
    Send #{Left}
    Sleep, 4300
    WinMinimize, A
  }

;;wiz
IfWinNotExist ahk_class ahk_class WizNoteMainFrame
{
  Run, c:\Program Files (x86)\WizNote\Wiz.exe 
  WinWaitActive,ahk_class WizNoteMainFrame 
  Sleep, 14000
  WinMove, A, , ,Mon1Right/2 ,0 ,Mon1Right/2 ,Mon1Bottom
  Sleep, 8000
  Send, {F9}
}
Return
