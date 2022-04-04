#IfWinActive Path of Exile

I_Icon = %A_ScriptDir%\resource\img\Exalted_Orb_inventory_icon.png
IfExist, %I_Icon%
Menu, Tray, Icon, %I_Icon%
;return

~XButton1::Suspend
~NumpadMult::Reload

#Include %A_ScriptDir%\lib\

#Include Back to town.ahk
#Include DecoReco.ahk
#Include Travel skill.ahk


#IfWinActive