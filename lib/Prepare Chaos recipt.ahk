#IfWinActive Path of Exile

^.::

; 储存箱起始位置
stashInitX = 35
stashInitY = 265

; 背包起始位置
bagIniX = 2545
bagIniY = 1175

; 储存箱格子宽度
bloc = 105
stashQuadBloc = 52

; 储存箱半格宽度
halfBloc = 52
stashHalfQuadBloc = 26

; 储存箱标签页初始位置及高度
stashOngletInitX = 1400
stashOngletInitY = 236
stashOngletHeight = 47

MsgBox, 1, , Go?

IfMsgBox, Cancel
	return

; 选取仓库页26
cursorX := stashOngletInitX
cursorY := stashOngletInitY + 26 * stashOngletHeight - stashOngletHeight
Click, %cursorX% %cursorY%

; 选取填充通货，背包1-1
bagX := bagIniX + 1 * bloc - halfBloc
bagY := bagIniY + 1 * bloc - halfBloc
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
    onglet := 26 + A_Index
        
    ; 选取仓库页27/28
    cursorX := stashOngletInitX
    cursorY := stashOngletInitY + onglet * stashOngletHeight - stashOngletHeight
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