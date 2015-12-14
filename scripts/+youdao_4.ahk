#Persistent
DetectHiddenWindows, On
SetTitleMatchMode, 2
;把打开有道的热键设置为 ctrl+shift+alt+y
;有道的路径需要在前面配置
;在本脚本中按WIN+Z，会将当前选中的单词发送到有道中。
youdao:="C:\Users\Administrator\AppData\Local\Youdao\Dict\Application\YodaoDict.exe"
#z::
tmp = %clipboard%
Send, ^c
word = %clipboard%
StringLower , word , word
clipboard = %tmp%
tmp =
IfWinNotExist
  Run %youdao%
Send,^+!y
WinWait, 有道词典,
IfWinNotActive, 有道词典, , WinActivate, 有道词典,
  WinWaitActive, 有道词典,
ControlSetText,Edit1,%word%,ahk_class YodaoMainWndClass
Return 