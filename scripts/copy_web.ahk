#3::                
WinGetActiveTitle, Title
a =[
b =]
If Title contains Firefox, Opera,Google Chrome,猎豹安全浏览器
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