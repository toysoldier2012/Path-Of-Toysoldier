initPosition() {
    ; 储存箱起始位置
    MsgBox, 262144, Prepare Chaos recipt, Switch to an empty normal stash

    ImageSearch, stashInitX, stashInitY, 0, 0, A_ScreenWidth, A_ScreenHeight, *10 %A_ScriptDir%\resource\img\Stash.png
    If (ErrorLevel = 1)
        throw A_ThisFunc "() is stopped at " A_LineNumber " line, sorry"

    IniWrite, %stashInitX%, %A_ScriptDir%\conf\data.ini, Position, stashInitX
    IniWrite, %stashInitY%, %A_ScriptDir%\conf\data.ini, Position, stashInitY

    ; 背包起始位置
    MsgBox, 262144, Prepare Chaos recipt, Clean your bag

    ImageSearch, bagInitX, bagInitY, 0, 0, A_ScreenWidth, A_ScreenHeight, *10 %A_ScriptDir%\resource\img\Bag.png
    If (ErrorLevel = 1)
        throw A_ThisFunc "() is stopped at " A_LineNumber " line, sorry"

    IniWrite, %bagInitX%, %A_ScriptDir%\conf\data.ini, Position, bagInitX
    IniWrite, %bagInitY%, %A_ScriptDir%\conf\data.ini, Position, bagInitY

    ; 储存箱标签页初始位置
    ImageSearch, stashOngletInitX, stashOngletInitY, 0, 0, A_ScreenWidth, A_ScreenHeight, *20 %A_ScriptDir%\resource\img\StashOnglet.png
    If (ErrorLevel = 1)
        throw A_ThisFunc "() is stopped at " A_LineNumber " line, sorry"

    IniWrite, %stashOngletInitX%, %A_ScriptDir%\conf\data.ini, Position, stashOngletInitX
    IniWrite, %stashOngletInitY%, %A_ScriptDir%\conf\data.ini, Position, stashOngletInitY
}

PrepareChaosReciptStash() {
    ; 选取填充通货，放在背包1-1
    MsgBox, 262145, Prepare Chaos recipt, Choose your currency(More than 320)
    IfMsgBox, Cancel
        throw A_ThisFunc "() is stopped at " A_LineNumber " line, sorry"

    bagX := bagInitX + 1 * bloc - halfBloc
    bagY := bagInitY + 1 * bloc - halfBloc
    Click, %bagX% %bagY%
    Sleep, 50

    ; 选取仓库页26
    cursorX := stashOngletInitX + 20
    cursorY := stashOngletInitY + 1 * stashOngletHeight - stashOngletHalfHeight
    Click, %cursorX% %cursorY%
    Sleep, 50

    ; 拾取背包1-1通货
    Click, %bagX% %bagY%
    Sleep, 50

    Send, {LShift Down}

    Loop, 6 {
        cursorX := stashInitX + 1 * stashQuadBloc - stashHalfQuadBloc
        cursorY := stashInitY + (18 + A_Index) * stashQuadBloc - stashHalfQuadBloc
        Click, %cursorX% %cursorY%
        Sleep, 50
    }

    Loop, 24 {
        cursorX := stashInitX + 2 * stashQuadBloc - stashHalfQuadBloc
        cursorY := stashInitY + A_Index * stashQuadBloc - stashHalfQuadBloc
        Click, %cursorX% %cursorY%
        Sleep, 50
    }

    Loop, 4 {
        colomn := A_Index

        Loop, 12 {
            cursorX := stashInitX + (2 + colomn) * stashQuadBloc - stashHalfQuadBloc
            cursorY := stashInitY + A_Index * 2 * stashQuadBloc - stashHalfQuadBloc

            Click, %cursorX% %cursorY%
            Sleep, 50

            If (colomn > 2 && A_Index > 6) {
                cursorX := stashInitX + (2 + colomn) * stashQuadBloc - stashHalfQuadBloc
                cursorY := stashInitY + (A_Index * 2 - 1) * stashQuadBloc - stashHalfQuadBloc

                Click, %cursorX% %cursorY%
                Sleep, 50
            }
        }
    }

    Loop, 6 {
        colomn := A_Index

        Loop, 8 {
            cursorX := stashInitX + (6 + colomn) * stashQuadBloc - stashHalfQuadBloc
            cursorY := stashInitY + A_Index * 3 * stashQuadBloc - stashHalfQuadBloc
            Click, %cursorX% %cursorY%
            Sleep, 50

            If (colomn > 4 && A_Index > 2) {
                cursorX := stashInitX + (6 + colomn) * stashQuadBloc - stashHalfQuadBloc
                cursorY := stashInitY + (A_Index * 3 - 1) * stashQuadBloc - stashHalfQuadBloc
                Click, %cursorX% %cursorY%
                Sleep, 50

                cursorX := stashInitX + (6 + colomn) * stashQuadBloc - stashHalfQuadBloc
                cursorY := stashInitY + (A_Index * 3 - 2) * stashQuadBloc - stashHalfQuadBloc
                Click, %cursorX% %cursorY%
                Sleep, 50
            }
        }
    }

    Loop, 6 {
        colomn := A_Index

        Loop, 6 {
            cursorX := stashInitX + (12 + colomn) * stashQuadBloc - stashHalfQuadBloc
            cursorY := stashInitY + A_Index * 4 * stashQuadBloc - stashHalfQuadBloc
            Click, %cursorX% %cursorY%
            Sleep, 50
        }
    }

    Send, {LShift Up}

    Click, %bagX% %bagY%


    Loop, 2 {
        onglet := A_Index + 1
            
        ; 选取仓库页27/28
        cursorX := stashOngletInitX
        cursorY := stashOngletInitY + onglet * stashOngletHeight - stashOngletHalfHeight
        Click, %cursorX% %cursorY%

        ; 选取填充通货，背包1-1
        bagX := bagInitX + 1 * bloc - halfBloc
        bagY := bagInitY + 1 * bloc - halfBloc
        Click, %bagX% %bagY%

        Send, {LShift Down}

        Loop, 2 {
            colomn := A_Index

            Loop, 12 {
                cursorX := stashInitX + colomn * 2 * bloc - halfBloc
                cursorY := stashInitY + A_Index * bloc - halfBloc
                Click, %cursorX% %cursorY%
                Sleep, 50

                If (colomn = 2 && A_Index > 6) {
                    cursorX := stashInitX + (colomn * 2 - 1) * bloc - halfBloc
                    cursorY := stashInitY + A_Index * bloc - halfBloc
                    Click, %cursorX% %cursorY%
                    Sleep, 50
                }
            }
        }

        Loop, 2 {
            colomn := A_Index

            Loop, 12 {
                cursorX := stashInitX + (10 + colomn) * bloc - halfBloc
                cursorY := stashInitY + A_Index * bloc - halfBloc
                Click, %cursorX% %cursorY%
                Sleep, 50
            }
        }

        Send, {LShift Up}

        Click, %bagX% %bagY%
        Send ^{Click %bagX% %bagY% left}
    }
}

startSellingChaosRecipt() {
    itemNumb = 0

    stashPositionX = 2900
    stashPositionY = 950

    venderPositionX = 825
    venderPositionY = 865

    sellButtonX = 2390
    sellButtonY = 590

    inventoryIniX := bagInitX + 1 * bloc - halfBloc
    inventoryIniY := bagInitY + 1 * bloc - halfBloc

    tabX := stashOngletInitX + 20
    tabAY := stashOngletInitY + 1 * stashOngletHeight - stashOngletHalfHeight
    tabBY := stashOngletInitY + 2 * stashOngletHeight - stashOngletHalfHeight
    tabCY := stashOngletInitY + 3 * stashOngletHeight - stashOngletHalfHeight

    initStashX := stashInitX + 1 * bloc - halfBloc
    initStashY := stashInitY + 1 * bloc - halfBloc
    initSmallStashX := stashInitX + 1 * stashQuadBloc - stashHalfQuadBloc
    initSmallStashY := stashInitY + 1 * stashQuadBloc - stashHalfQuadBloc

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

    Loop, 18 {
        ;项链 腰带 头盔 衣服 武器

        Click, %tabX% %tabAY%

        cursorX := initSmallStashX+(amuletInitX-1+itemNumb//24*amuletIntervalX)*stashQuadBloc
        cursorY := initSmallStashY+(amuletInitY-1+Mod(itemNumb, 24)*amuletIntervalY)*stashQuadBloc
        Send ^{Click %cursorX% %cursorY% left}

        cursorX := initSmallStashX+(beltInitX-1+itemNumb//12*beltIntervalX)*stashQuadBloc
        cursorY := initSmallStashY+(beltInitY-1+Mod(itemNumb, 12)*beltIntervalY)*stashQuadBloc
        Send ^{Click %cursorX% %cursorY% left}

        cursorX := initSmallStashX+(headInitX-1+itemNumb//8*headIntervalX)*stashQuadBloc
        cursorY := initSmallStashY+(headInitY-1+Mod(itemNumb, 8)*headIntervalY)*stashQuadBloc
        Send ^{Click %cursorX% %cursorY% left}

        cursorX := initSmallStashX+(bodyInitX-1+itemNumb//6*bodyIntervalX)*stashQuadBloc
        cursorY := initSmallStashY+(bodyInitY-1+Mod(itemNumb, 6)*bodyIntervalY)*stashQuadBloc
        Send ^{Click %cursorX% %cursorY% left}

        cursorX := initSmallStashX+(weapenInitX-1+itemNumb//6*weapenIntervalX)*stashQuadBloc
        cursorY := initSmallStashY+(weapenInitY-1+Mod(itemNumb, 6)*weapenIntervalY)*stashQuadBloc
        Send ^{Click %cursorX% %cursorY% left}



        ;戒指 手套

        Click, %tabX% %tabBY%

        cursorX := initStashX+(ringInitX-1+itemNumb//12*ringIntervalX)*bloc
        cursorY := initStashY+(ringInitY-1+Mod(itemNumb, 12)*ringIntervalY)*bloc
        Send ^{Click %cursorX% %cursorY% left}

        cursorX := initStashX+(handInitX-1+itemNumb//6*handIntervalX)*bloc
        cursorY := initStashY+(handInitY-1+Mod(itemNumb, 6)*handIntervalY)*bloc
        Send ^{Click %cursorX% %cursorY% left}



        ;戒指 鞋子

        Click, %tabX% %tabCY%

        cursorX := initStashX+(ringInitX-1+itemNumb//12*ringIntervalX)*bloc
        cursorY := initStashY+(ringInitY-1+Mod(itemNumb, 12)*ringIntervalY)*bloc
        Send ^{Click %cursorX% %cursorY% left}

        cursorX := initStashX+(footInitX-1+itemNumb//6*footIntervalX)*bloc
        cursorY := initStashY+(footInitY-1+Mod(itemNumb, 6)*footIntervalY)*bloc
        Send ^{Click %cursorX% %cursorY% left}

        ;卖货

        Send, ]
        Click, %venderPositionX% %venderPositionY%
        Sleep, 1500
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
        Sleep, 1500

        itemNumb := itemNumb + 1

        Send ^{Click 2595 1220 left}

    }

}