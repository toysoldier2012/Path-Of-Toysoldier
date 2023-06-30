#IfWinActive Path of Exile

I_Icon = %A_ScriptDir%\resource\img\Exalted_Orb_inventory_icon.png
IfExist, %I_Icon%
Menu, Tray, Icon, %I_Icon%

~NumpadDiv::Suspend
~NumpadMult::Reload

#Include %A_ScriptDir%\lib\

; Standard
#Include Back to town.ahk
#Include DecoReco.ahk
#Include Continuous Ctrl Click.ahk
#Include Continuous Shift Click.ahk

; NPC's action
; #Include Chaos recipt.ahk
#Include Haggle.ahk

; Leveling
; #Include Mine.ahk
; #Include Travel skill.ahk
; #Include Potions.ahk

; Endgame
; #Include Defence.ahk
#Include Change Potions.ahk

#IfWinActive