~q:: 

    settimer, MyTimedLabel, -400 ;延时400毫秒引爆

    Return 

MyTimedLabel: 

    GetKeyState, state, q, P   ;如果长按埋雷则不引爆，松开或者点按后，引爆 
    if state=U 
        send, d 
    
    Return
