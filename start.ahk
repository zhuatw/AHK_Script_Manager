DetectHiddenWindows, On
SysGet, Mon1, Monitorworkarea, 1
;;AppsKey table
;;two SingleInstance, Force 
run, c:\Users\Administrator\AHK_Script_Manager\ahk_script_manager.ahk
Sleep, 2000
run, c:\Users\Administrator\vimdesktop\vimd.ahk

;;tc
IfWinNotExist ahk_class TTOTAL_CMD
{
  Run C:\totalcmd\TOTALCMD64.EXE
  WinWaitActive, ahk_class TTOTAL_CMD
  Sleep, 6000
  WinMinimize, A
}

;;vim
IfWinNotExist ahk_class Vim
{
  Run, gvim.exe, c:\Program Files (x86)\Vim\vim74\
  WinWaitActive, ahk_class Vim
  Sleep, 4000
  Send, #{Right}
  Sleep, 1000
  WinMinimize, A
}

;;Foxmail 获取计算机名, 住处不开邮件 
EnvGet, computer_name, COMPUTERNAME
if (computer_name = "PC-20160123FLNQ" )
{
  IfWinNotExist ahk_class TFoxMainFrm.UnicodeClass
  {
    Run, d:\Program Files (x86)\Foxmail\Foxmail.exe 
    WinWaitActive,ahk_class TFoxMainFrm.UnicodeClass
    Sleep, 6000
    WinMinimize, A
  }
}

;;audacity
IfWinNotExist, ahk_class wxWindowClassNR
{
  Run, audacity.exe, C:\Program Files (x86)\Audacity\
  WinWaitActive, ahk_class wxWindowClassNR
  Sleep, 10000
  WinMove, A, , ,0 ,Mon1Bottom/2 ,Mon1Right/2 ,Mon1Bottom/2
  Sleep, 1000
  WinMinimize, A
}

;;liebao
IfWinNotExist, ahk_class Chrome_WidgetWin_100
{
  ; Run, C:\Users\Administrator\AppData\Local\liebao\liebao.exe
  Run, http://site.baidu.com/default2.htm
  WinWaitActive, ahk_class Chrome_WidgetWin_100
  Sleep, 14000
;  WinMove, A, , ,Mon1Right/2 ,0 ,Mon1Right/2 ,Mon1Bottom
  Send, #{Right}
  Sleep, 1000
  WinMinimize, A
}

;;youdao
IfWinNotExist, ahk_class YodaoMainWndClass
{
 ;; Run, YodaoDict.exe, %HOMEPATH%\AppData\Local\Youdao\Dict\Application\
  Run, c:\Users\Administrator\AppData\Local\Youdao\Dict\Application\YodaoDict.exe
  WinWaitActive,ahk_class YodaoMainWndClass
  Sleep, 6000
  Winmove, A, , ,0 ,0 ,Mon1Right/2 ,Mon1Bottom/2
  Sleep, 1000
  WinMinimize, A
}

;;Emacs
IfWinNotExist, ahk_class Emacs
  {
    Run, runemacs.exe, C:\Program Files\emacs\bin\
    WinWaitActive, ahk_class Emacs
    Sleep, 14000
;    WinMove, ,A , ,0 ,0 ,Mon1Right/2 ,Mon1Bottom
    Send #{Left}
    Sleep, 2300
    WinMinimize, A
  }

;;wiz
IfWinNotExist ahk_class ahk_class WizNoteMainFrame
{
  Run, c:\Program Files (x86)\WizNote\Wiz.exe 
  WinWaitActive,ahk_class WizNoteMainFrame 
  Sleep, 14000
  WinMove, A, , ,Mon1Right/2 ,0 ,Mon1Right/2 ,Mon1Bottom
  Sleep, 3000
  Send, {F9}
}
Return
