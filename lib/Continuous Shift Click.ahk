5::
    Send, {LShift Down}

    Loop
    {
        GetKeyState, state, 5, P;
        if state = U
        {
            Send, {LShift Up}
            Break
        }
        Else
            Send {LButton}
            Sleep, 50
    }
    
    Return