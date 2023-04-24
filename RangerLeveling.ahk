#IfWinActive Path of Exile

I_Icon = C:\Users\toysoldier\Documents\My Games\Path of Exile\Plugin\PathOfToysoldier\resource\img\RangerLeveling.jpg
IfExist, %I_Icon%
Menu, Tray, Icon, %I_Icon%
;return

~XButton1::Suspend
~NumpadMult::Reload

#Include %A_ScriptDir%\lib\RangerLeveling
#Include Acceleration.ahk
#Include Mana.ahk

#Include %A_ScriptDir%\lib\

#Include Back to town.ahk
#Include DecoReco.ahk

#Include Continuous Ctrl Click.ahk
#Include Continuous Shift Click.ahk

#Include Travel skill.ahk
; #Include Smoke mine.ahk


#IfWinActive