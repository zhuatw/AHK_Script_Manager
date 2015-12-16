;;Autohotkey 中文论坛 - 改进的分半屏显示窗口脚本 WIZ
::zw::
#NoTrayIcon
DetectHiddenWindows, on

Send ^+!y
WinActivate, ahk_exe audacity.exe
WinActivate, ahk_exe liebao.exe
WinActivate, ahk_exe twchrome.exe
Return