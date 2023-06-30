; TODO 自动检测格子位置
^/::

	#Include %A_ScriptDir%\tools\Chaos recipt tools.ahk

	Try {
		; 初始化数据
		global bloc = 105
		global halfBloc := Floor(bloc/2)
		global stashQuadBloc := Floor(bloc/2)
		global stashHalfQuadBloc := Floor(stashQuadBloc/2)
		global stashOngletHeight = 47
		global stashOngletHalfHeight := Floor(stashOngletHeight/2)

		global bagInitX = 0
		global bagInitY = 0
		global stashInitX = 0
		global stashInitY = 0
		global stashOngletInitX = 0
		global stashOngletInitY = 0

		global isInitPosition = 0

		IniRead, stashInitX, %A_ScriptDir%\conf\data.ini, Position, stashInitX, %stashInitX%
		IniRead, stashInitY, %A_ScriptDir%\conf\data.ini, Position, stashInitY, %stashInitY%
		IniRead, bagInitX, %A_ScriptDir%\conf\data.ini, Position, bagInitX, %bagInitX%
		IniRead, bagInitY, %A_ScriptDir%\conf\data.ini, Position, bagInitY, %bagInitY%
		IniRead, stashOngletInitX, %A_ScriptDir%\conf\data.ini, Position, stashOngletInitX, %stashOngletInitX%
		IniRead, stashOngletInitY, %A_ScriptDir%\conf\data.ini, Position, stashOngletInitY, %stashOngletInitY%

		; 询问初始化坐标数据
		MsgBox, 262145, , Do you want to initialiser the position?
		IfMsgBox, Ok
			isInitPosition = 1

		If ((stashInitX = 0 || stashInitY = 0 || bagInitX = 0 || bagInitY = 0 || stashOngletInitX = 0 || stashOngletInitY = 0) || isInitPosition = 1) {
			initPosition()
		}

		; 询问初始化储藏箱
		MsgBox, 262145, , Do you want to initialiser the chaos recipt stash?
		IfMsgBox, Ok
			PrepareChaosReciptStash()

		; 询问开始贩售混沌配方
		MsgBox, 262145, , Do you want to start selling the chaos recipt?
		IfMsgBox, Ok
			startSellingChaosRecipt()

		return

		#Include %A_ScriptDir%\lib\Chaos recipt tools.ahk
	} Catch e {
		MsgBox, An exception was thrown!`nSpecifically: %e%
	}

	Return