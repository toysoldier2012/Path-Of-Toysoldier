#IfWinActive Path of Exile

^.::

bloc = 105
halfBloc := Floor(bloc/2)
stashQuadBloc := Floor(bloc/2)
stashHalfQuadBloc = := Floor(stashQuadBloc/2)
stashOngletHeight = 47
stashOngletHalfHeight := Floor(stashOngletHeight/2)

; 储存箱起始位置

MsgBox, 1, Prepare Chaos recipt, Switch to an empty stash
IfMsgBox, Cancel
	return

ImageSearch, stashInitX, stashInitY, 0, 0, A_ScreenWidth, A_ScreenHeight, C:\Users\toysoldier\Documents\My Games\Path of Exile\Plugin\PathOfToysoldier\resource\img\Stash.png

; 背包起始位置
ImageSearch, bagIniX, bagIniY, 0, 0, A_ScreenWidth, A_ScreenHeight, C:\Users\toysoldier\Documents\My Games\Path of Exile\Plugin\PathOfToysoldier\resource\img\bag.png

; 储存箱标签页初始位置及高度
ImageSearch, stashOngletInitX, stashOngletInitY, 0, 0, A_ScreenWidth, A_ScreenHeight, *5 C:\Users\toysoldier\Documents\My Games\Path of Exile\Plugin\PathOfToysoldier\resource\img\StashOnglet.png

MsgBox, 1, Prepare Chaos recipt, Take your currency
IfMsgBox, Cancel
	return
    
; 选取填充通货，放在背包1-1
bagX := bagIniX + 1 * bloc - halfBloc
bagY := bagIniY + 1 * bloc - halfBloc
Click, %bagX% %bagY%

; 选取仓库页26
cursorX := stashOngletInitX + 20
cursorY := stashOngletInitY + 0 * stashOngletHeight + stashOngletHalfHeight
Click, %cursorX% %cursorY%

; 拾取背包1-1通货
Click, %bagX% %bagY%

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
    onglet := A_Index
        
    ; 选取仓库页27/28
    cursorX := stashOngletInitX
    cursorY := stashOngletInitY + onglet * stashOngletHeight + stashOngletHalfHeight
    Click, %cursorX% %cursorY%

    ; 选取填充通货，背包1-1
    bagX := bagIniX + 1 * bloc - halfBloc
    bagY := bagIniY + 1 * bloc - halfBloc
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
}

Return

#IfWinActive