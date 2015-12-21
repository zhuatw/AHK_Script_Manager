;#SingleInstance Force
#Persistent
DetectHiddenWindows, On
SetTitleMatchMode, 2
::zw::
SysGet, Mon1, Monitorworkarea, 1
WinMinimizeAll

word = %clipboard% 
StringLower , word , word

; WinMove, ahk_class YodaoMainWndClass

Send ^+!y
WinWaitActive,ahk_class YodaoMainWndClass
Winmove,ahk_class YodaoMainWndClass,,Mon1Right/2,0,Mon1Right/2,Mon1Bottom/2
ControlSetText, Edit1, , ahk_class YodaoMainWndClass
ControlSetText, Edit1, %word%, ahk_class YodaoMainWndClass
Sleep, 2800
Send {Enter} 
Click,  143,  100
Send {Enter} 
Click,  143,  100

;world
  Run %HOMEPATH%\AppData\Local\TheWorld\Chrome\Application\twchrome.exe http://dict.cn/%word%
  ; WinActivate, ahk_class Chrome_WidgetWin_0
  WinMove, ahk_exe twchrome.exe,,0,Mon1Bottom/2,Mon1Right/2,Mon1Bottom/2
  ; WinWaitActive

;chrome
  Run C:\Program Files (x86)\Google\Chrome\Application\chrome.exe http://iciba.com/%word%
  WinWaitActive, ahk_class Chrome_WidgetWin_1
  WinMove, ahk_class Chrome_WidgetWin_1,,0,0,Mon1Right/2,Mon1Bottom/2

;audacity
  Run, audacity.exe, C:\Program Files (x86)\Audacity\
  WinWaitActive, ahk_class wxWindowClassNR
  WinMove, ahk_class wxWindowClassNR,,Mon1Right/2,Mon1Bottom/2,Mon1Right/2,Mon1Bottom/2
  Sleep, 1900 
  Send #{Down}
  Sleep, 1430
  Send {R}
Return
