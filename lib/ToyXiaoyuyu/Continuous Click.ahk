#IfWinActive Path of Exile

4::
Send, {LControl Down}
Loop
{
GetKeyState, state, 4, P;
if state = U
{
Send, {LControl Up}
Break
}
Else
Send {LButton}
Sleep, 50
}
Return

#IfWinActive