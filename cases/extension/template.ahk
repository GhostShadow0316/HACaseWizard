; case.ahk

#Requires AutoHotkey v2.0

; 2. Add your functions to the case_map
; If you are going to test your function, comment this map area
case_map["cil"] := convertIntoLowercase


; 1. Create functions that returns dealt text
convertIntoLowercase(text) {
    text := StrLower(text)
    return text
}
