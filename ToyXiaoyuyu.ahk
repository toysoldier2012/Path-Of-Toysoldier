I_Icon = C:\Users\toysoldier\Documents\My Games\Path of Exile\Plugin\PathOfToysoldier\resource\Exalted.jpg
IfExist, %I_Icon%
Menu, Tray, Icon, %I_Icon%
;return

#IfWinActive Path of Exile

~XButton1::Suspend
~NumpadMult::Reload
~NumpadDiv::ExitApp

#Include %A_ScriptDir%\lib\
#Include %A_ScriptDir%\lib\ToyXiaoyuyu\

#Include Acceleration.ahk
#Include Outbreak.ahk
#Include Protection.ahk

#Include Back to town.ahk
#Include Continuous Click.ahk
#Include DecoReco.ahk


#IfWinActive
