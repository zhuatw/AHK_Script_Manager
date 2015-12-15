;这是我修改过的;
#ErrorStdOut
#SingleInstance, force
#Persistent
SetWinDelay,2
;split Screen
half_flag = 0
monit_num = 1
mon_n = 1

SysGet, MonitorCount, MonitorCount
SysGet, Mon1, Monitorworkarea, 1
If monitorCount>1
{
Loop % MonitorCount-1
{
monit_num++
SysGet, Mon%monit_num%, Monitor, %monit_num%
}
}
Return
;====================spilt Screen left & right===============================;

tip_on_off:
loop 30
{
ToolTip,%121_tip%
sleep ,100
}
ToolTip
121_tip =
Return

#w::
SetTimer, tip_on_off, -100
If half_flag = 0
{
WinMove,A,,mon%mon_n%left,mon%mon_n%Top,(mon%mon_n%Right-mon%mon_n%left)/2,mon%mon_n%Bottom-mon%mon_n%Top ;V_left_half
half_flag++
121_tip = ［左半屏］
}
Else
If half_flag = 1
{
WinMove,A,,(mon%mon_n%Right-mon%mon_n%left)/2+mon%mon_n%left,mon%mon_n%Top,(mon%mon_n%Right-mon%mon_n%left)/2,mon%mon_n%Bottom-mon%mon_n%Top ;V_Right_half
half_flag++
121_tip = ［右半屏］
}
Else
If half_flag = 2
{
WinMove,A,,mon%mon_n%left,mon%mon_n%Top,mon%mon_n%Right-mon%mon_n%left,(mon%mon_n%Bottom-mon%mon_n%Top)/2 ;H_Top_half
half_flag++
121_tip = ［上半屏］
}
Else
If half_flag = 3
{
WinMove,A,,mon%mon_n%left,(mon%mon_n%Bottom-mon%mon_n%Top)/2+mon%mon_n%Top,mon%mon_n%Right-mon%mon_n%left,(mon%mon_n%Bottom-mon%mon_n%Top)/2 ;H_Bottom_half
half_flag++
121_tip = ［下半屏］
}
Else
If half_flag = 4
{
WinMove,A,,mon%mon_n%left,mon%mon_n%Top,mon%mon_n%Right-mon%mon_n%left,mon%mon_n%Bottom-mon%mon_n%Top ;mon%mon_n%_All
half_flag := 0
121_tip = ［全屏］
}
Return

;对于多显示器,选择不同的显示器,以便改变其窗口显示方式
#e::
Monitor_Num:
InputBox, mon_n, 滚动窗口连动, 请输入显示器序号：, , 200, 150, , , , , 1
If ErrorLevel <> 0
Return
If !(mon_n = 1 or mon_n = 2)
Goto, Monitor_Num
Return