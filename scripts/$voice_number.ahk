
;---------------------------
;  �������֣�by FeiYue��
;---------------------------
;  �����ű��������ļ�����һ�𣬱��뼴��
  
#NoEnv
#SingleInstance force
DetectHiddenWindows, On
Menu, Tray, Icon, Shell32.dll, 15
Menu, Tray, NoStandard
Menu, Tray, Add, ����, Help
Menu, Tray, Add, ��ͣʹ��, DoSuspend
Menu, Tray, Add, �˳�, ExitSub
Menu, Tray, Default, ��ͣʹ��
Menu, Tray, Click, 1

;//����ʱ�ļ��н�������Ŀ¼
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

;//�������ļ����Ƶ�����Ŀ¼
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

; ;//ֻ����һ������������
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

;//�趨�ȼ�
Loop, 10 {
  i:=A_Index-1
  Hotkey, $%i%, sound    ;//�ʼǱ���������Ҫ
  Hotkey, Numpad%i%, sound
}
Hotkey, $., sound    ;//�ʼǱ���������Ҫ
Hotkey, NumpadDot, sound

;//�������İ���
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
MsgBox, 4096, ʹ�ð���,
(
`n        �������֣�by FeiYue��`n
`n  ���������;����С���̻���������
`n  �����֣�1-9���͵㣨.��ʱ�����������
`n  ��ͣʹ�ã������һ�����½ŵĳ���ͼ�ꡣ
`n  ������С��������QQ����ʱҪ��ͣʹ�á�
`n  �˳������Ҽ��������ͼ����ѡ���˳���
), 30
Return

DoSuspend:
Suspend
Return

ExitSub:
ExitApp


