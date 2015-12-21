#3::                
WinGetActiveTitle, Title
a =[
b =]
If Title contains Firefox, Opera,谷歌浏览器,傲游(Maxthon)
{
  Send !d
  Sleep, 50
  Send ^c
  ClipWait
  ClipOld =%a%%Clipboard%%b% ;将剪贴板的所有内容存储到你选的一个变量里。
  clipboard =%a%%ClipOld%%a%%Title%%b%%b% ;[][]
}
Else
  clipboard = %Title%
return
