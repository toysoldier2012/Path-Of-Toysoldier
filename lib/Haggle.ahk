#IfWinActive Path of Exile

~XButton2:: 
    x1 := 1260
    y1 := 1525
    x2 := 1260
    y2 := 1725
    m1 := 0.4
    m2 := 0.5
    m3 := 0.6

    Clipboard := ""
    MouseGetPos, xpos, ypos
    Click
    Click,%x1%,%y1%
    Send ^a
    Send ^c
    ClipWait 
    SendInput % Ceil(Clipboard * m1)
    Click,%x2%,%y2%
    Click,%x1%,%y1%
    Send ^a 
    SendInput % Ceil(Clipboard * m2)
    Click,%x2%,%y2%
    Click,%x1%,%y1%
    Send ^a 
    SendInput % Ceil(Clipboard * m3)
    Click,%x2%,%y2%
    Click,%x2%,%y2%
    Click,%x2%,%y2%
    MouseMove xpos, ypos	
Return

#IfWinActive