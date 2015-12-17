;::zword::
#SingleInstance Force
DetectHiddenWindows, on

IfWinNotExist, ahk_class YodaoMainWndClass
Run %HOMEPATH%\AppData\Local\Youdao\Dict\Application\YodaoDict.exe

;audacity
IfWinNotExist,  ahk_exe audacity.exe
Run C:\Program Files (x86)\Audacity\audacity.exe

;猎豹
IfWinNotExist, ahk_exe liebao.exe
Run %HOMEPATH%\AppData\Local\liebao\liebao.exe

;世界之窗
IfWinNotExist, ahk_exe twchrome.exe
  Run, twchrome.exe, %HOMEPATH%\AppData\Local\TheWorld\Chrome\Application, max, wPID
WinWait ahk_pid %wPID%
MsgBox %wPID%
Return