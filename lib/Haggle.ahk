~XButton2:: 

    tujenHagglePriceInputX := 1260
    tujenHagglePriceInputY := 1525
    tujenHaggleConfirmX := 1260
    tujenHaggleConfirmY := 1725
    m1 := 0.4
    m2 := 0.5
    m3 := 0.6

    Clipboard := ""
    MouseGetPos, xpos, ypos
    Click
    Click,%tujenHagglePriceInputX%,%tujenHagglePriceInputY%
    Send ^a
    Send ^c
    ClipWait 
    SendInput % Ceil(Clipboard * m1)
    Click,%tujenHaggleConfirmX%,%tujenHaggleConfirmY%
    Click,%tujenHagglePriceInputX%,%tujenHagglePriceInputY%
    Send ^a 
    SendInput % Ceil(Clipboard * m2)
    Click,%tujenHaggleConfirmX%,%tujenHaggleConfirmY%
    Click,%tujenHagglePriceInputX%,%tujenHagglePriceInputY%
    Send ^a 
    SendInput % Ceil(Clipboard * m3)
    Click,%tujenHaggleConfirmX%,%tujenHaggleConfirmY%
    Click,%tujenHaggleConfirmX%,%tujenHaggleConfirmY%
    Click,%tujenHaggleConfirmX%,%tujenHaggleConfirmY%
    MouseMove xpos, ypos

    Return