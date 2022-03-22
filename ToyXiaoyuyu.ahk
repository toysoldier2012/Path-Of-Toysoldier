#IfWinActive Path of Exile

I_Icon = C:\Users\toysoldier\Documents\My Games\Path of Exile\Plugin\PathOfToysoldier\resource\img\Exalted.jpg
IfExist, %I_Icon%
Menu, Tray, Icon, %I_Icon%
;return

~XButton1::Suspend
~NumpadMult::Reload

#Include %A_ScriptDir%\lib\ToyXiaoyuyu\

#Include Acceleration.ahk
#Include Protection.ahk

#Include %A_ScriptDir%\lib\

#Include Back to town.ahk
#Include Continuous Ctrl Left Click.ahk
#Include Continuous Shift Left Click.ahk
#Include DecoReco.ahk


#IfWinActive