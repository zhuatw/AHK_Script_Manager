
;---------------------------
;  语音数字（by FeiYue）
;---------------------------
;  将本脚本和语音文件放在一起，编译即可
  
#NoEnv
#SingleInstance force
DetectHiddenWindows, On
Menu, Tray, Icon, Shell32.dll, 15
Menu, Tray, NoStandard
Menu, Tray, Add, 帮助, Help
Menu, Tray, Add, 暂停使用, DoSuspend
Menu, Tray, Add, 退出, ExitSub
Menu, Tray, Default, 暂停使用
Menu, Tray, Click, 1

;//在临时文件夹建立语音目录
f=%A_Temp%\YuYinShuZi
;;e=number_voice
if !InStr(FileExist(f),"D")
{
  IfExist, %f%
  {
    FileSetAttrib, -R, %f%
    FileDelete, %f%
  }
  FileCreateDir, %f%
}
SetWorkingDir, %f%

;//将语音文件复制到语音目录
IfNotExist, number_voice\0.wav
  FileInstall, number_voice\0.wav, %f%\0.wav
IfNotExist, number_voice\1.wav
  FileInstall, number_voice\1.wav, %f%\1.wav
IfNotExist, number_voice\2.wav
  FileInstall, number_voice\2.wav, %f%\2.wav
IfNotExist, number_voice\3.wav
  FileInstall, number_voice\3.wav, %f%\3.wav
IfNotExist, number_voice\4.wav
  FileInstall, number_voice\4.wav, %f%\4.wav
IfNotExist, number_voice\5.wav
  FileInstall, number_voice\5.wav, %f%\5.wav
IfNotExist, number_voice\6.wav
  FileInstall, number_voice\6.wav, %f%\6.wav
IfNotExist, number_voice\7.wav
  FileInstall, number_voice\7.wav, %f%\7.wav
IfNotExist, number_voice\8.wav
  FileInstall, number_voice\8.wav, %f%\8.wav
IfNotExist, number_voice\9.wav
  FileInstall, number_voice\9.wav, %f%\9.wav
IfNotExist, number_voice\10.wav
  FileInstall, number_voice\10.wav, %f%\10.wav

; ;//只允许一个本程序运行
; pid:=DllCall("GetCurrentProcessId")
; WinGet, name, ProcessName, ahk_pid %pid%
; Loop, 2 {
;   WinGet, list, List, ahk_class AutoHotkey
;   if (list=1)
;     Break
;   Loop, %list% {
;     id:=list%A_Index%
;     WinGet, p, PID, ahk_id %id%
;     if (p=pid)
;       Continue
;     WinGet, n, ProcessName, ahk_id %id%
;     if (n=name)
;     {
;       WinClose, ahk_id %id%
;       WinWaitClose, ahk_id %id%,, 1
;       if ErrorLevel
;         WinKill, ahk_id %id%,, 1
;     }
;   }
; }

;//设定热键
Loop, 10 {
  i:=A_Index-1
  Hotkey, $%i%, sound    ;//笔记本电脑有需要
  Hotkey, Numpad%i%, sound
}
Hotkey, $., sound    ;//笔记本电脑有需要
Hotkey, NumpadDot, sound

;//缓冲后面的按键
Critical
Return

sound:
k:=SubStr(A_ThisHotkey,0)
if (k="t" or k=".")
{
  SendRaw .
  SoundPlay, %f%\10.wav
}
else
{
  SendRaw %k%
  SoundPlay, %f%\%k%.wav
}
Sleep, 150
Return

Help:
MsgBox, 4096, 使用帮助,
(
`n        语音数字（by FeiYue）`n
`n  本程序的用途：在小键盘或主键盘上
`n  按数字（1-9）和点（.）时会读出声音。
`n  暂停使用：左键点一下右下脚的程序图标。
`n  【当用小键盘输入QQ密码时要暂停使用】
`n  退出程序：右键点击程序图标再选择退出。
), 30
Return

DoSuspend:
Suspend
Return

ExitSub:
ExitApp


