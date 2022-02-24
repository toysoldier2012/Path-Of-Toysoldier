#IfWinActive Path of Exile

6::
Send, {LControl Down}
Loop
{
GetKeyState, state, 6, P;
if state = U
{
Send, {LControl Up}
Break
}
Else
Send {LButton}
Sleep,10
}
Return

#IfWinActive