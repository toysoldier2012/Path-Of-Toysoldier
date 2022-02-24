#IfWinActive Path of Exile

; TODO 自动检测格子位置

/::

itemNumb = 0

stashPositionX = 1930
stashPositionY = 1050

venderPositionX = 1730
venderPositionY = 700

sellButtonX = 2390
sellButtonY = 590

inventoryIniX = 2595
inventoryIniY = 1220

tabX = 1500
tabAY = 1367
tabBY = 1415
tabCY = 1463

initStashX = 90
initStashY = 320
stashInterval = 105

initSmallStashX = 57
initSmallStashY = 290
smallStashInterval = 53

amuletInitX = 1
amuletInitY = 1
amuletIntervalX = 1
amuletIntervalY = 1
beltInitX = 3
beltInitY = 1
beltIntervalX = 2
beltIntervalY = 2
headInitX = 7
headInitY = 1
headIntervalX = 2
headIntervalY = 3
bodyInitX = 13
bodyInitY = 1
bodyIntervalX = 2
bodyIntervalY = 4
weapenInitX = 19
weapenInitY = 1
weapenIntervalX = 2
weapenIntervalY = 4
ringInitX = 1
ringInitY = 1
ringIntervalX = 2
ringIntervalY = 1
handInitX = 5
handInitY = 1
handIntervalX = 2
handIntervalY = 2
footInitX = 5
footInitY = 1
footIntervalX = 2
footIntervalY = 2

cursorX = 0
cursorY = 0

;MsgBox, 1, , Start selling

;IfMsgBox, Cancel
;	return

Loop, 18
{

;项链 腰带 头盔 衣服 武器

Click, %tabX% %tabAY%

cursorX := initSmallStashX+(amuletInitX-1+itemNumb//24*amuletIntervalX)*smallStashInterval
cursorY := initSmallStashY+(amuletInitY-1+Mod(itemNumb, 24)*amuletIntervalY)*smallStashInterval
Send ^{Click %cursorX% %cursorY% left}

cursorX := initSmallStashX+(beltInitX-1+itemNumb//12*beltIntervalX)*smallStashInterval
cursorY := initSmallStashY+(beltInitY-1+Mod(itemNumb, 12)*beltIntervalY)*smallStashInterval
Send ^{Click %cursorX% %cursorY% left}

cursorX := initSmallStashX+(headInitX-1+itemNumb//8*headIntervalX)*smallStashInterval
cursorY := initSmallStashY+(headInitY-1+Mod(itemNumb, 8)*headIntervalY)*smallStashInterval
Send ^{Click %cursorX% %cursorY% left}

cursorX := initSmallStashX+(bodyInitX-1+itemNumb//6*bodyIntervalX)*smallStashInterval
cursorY := initSmallStashY+(bodyInitY-1+Mod(itemNumb, 6)*bodyIntervalY)*smallStashInterval
Send ^{Click %cursorX% %cursorY% left}

cursorX := initSmallStashX+(weapenInitX-1+itemNumb//6*weapenIntervalX)*smallStashInterval
cursorY := initSmallStashY+(weapenInitY-1+Mod(itemNumb, 6)*weapenIntervalY)*smallStashInterval
Send ^{Click %cursorX% %cursorY% left}



;戒指 手套

Click, %tabX% %tabBY%

cursorX := initStashX+(ringInitX-1+itemNumb//12*ringIntervalX)*stashInterval
cursorY := initStashY+(ringInitY-1+Mod(itemNumb, 12)*ringIntervalY)*stashInterval
Send ^{Click %cursorX% %cursorY% left}

cursorX := initStashX+(handInitX-1+itemNumb//6*handIntervalX)*stashInterval
cursorY := initStashY+(handInitY-1+Mod(itemNumb, 6)*handIntervalY)*stashInterval
Send ^{Click %cursorX% %cursorY% left}



;戒指 鞋子

Click, %tabX% %tabCY%

cursorX := initStashX+(ringInitX-1+itemNumb//12*ringIntervalX)*stashInterval
cursorY := initStashY+(ringInitY-1+Mod(itemNumb, 12)*ringIntervalY)*stashInterval
Send ^{Click %cursorX% %cursorY% left}

cursorX := initStashX+(footInitX-1+itemNumb//6*footIntervalX)*stashInterval
cursorY := initStashY+(footInitY-1+Mod(itemNumb, 6)*footIntervalY)*stashInterval
Send ^{Click %cursorX% %cursorY% left}

;卖货

Click, %venderPositionX% %venderPositionY%
Sleep, 200
Click, %sellButtonX% %sellButtonY%

Send ^{Click 2595 1220 left}
Send ^{Click 2700 1220 left}
Send ^{Click 2805 1220 left}
Send ^{Click 3015 1220 left}
Send ^{Click 3225 1220 left}
Send ^{Click 2595 1325 left}
Send ^{Click 2595 1430 left}
Send ^{Click 2595 1640 left}
Send ^{Click 2805 1535 left}

MsgBox, 1, , Deal?

IfMsgBox, Cancel
	return

Click, 826 1732
Click, %stashPositionX% %stashPositionY%
Sleep, 200

itemNumb := itemNumb + 1

Send ^{Click 2595 1220 left}

}

return



#IfWinActive
