#IfWinActive Path of Exile

4::
Send, {LShift Down}
Loop
{
    GetKeyState, state, 4, P;
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

#IfWinActive