#SingleInstance, force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#Include %A_ScriptDir%\lib\JSON.ahk

json_path := A_ScriptDir . "\resource\config.json"
FileRead, outPutvar, % json_path

config := jsonToObj(outPutvar)
For key, value in config
        MsgBox, %key% = %value%
    ; If (key = "city" && value = "jinan")
    ; {
    ;     value := "wuhan"
    ;     MsgBox, %key% = %value%
    ; }

config.city := "wuhan"
json := objToJson(config)

MsgBox, %json%

ExitApp