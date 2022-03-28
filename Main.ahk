#IfWinActive Path of Exile

I_Icon = C:\Users\toysoldier\Documents\My Games\Path of Exile\Plugin\PathOfToysoldier\resource\img\Exalted_Orb_inventory_icon.png
IfExist, %I_Icon%
Menu, Tray, Icon, %I_Icon%
;return

~XButton1::Suspend
~NumpadMult::Reload

#Include %A_ScriptDir%\lib\

#Include Back to town.ahk
#Include DecoReco.ahk

#Include Continuous Shift Click.ahk
#Include Continuous Ctrl Click.ahk

#Include Chaos recipt.ahk

#Include Smoke mine.ahk


#IfWinActive