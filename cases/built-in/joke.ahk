; joke.ahk

#Requires AutoHotkey v2.0

case_map["random"] := random_
case_map["iphone"] := iphone

random_(text) {
    temp := ""
    text := StrReplace(text, "`r`n", "`n")
    Loop parse text {
        rand := [StrUpper, StrLower][Random(1, 2)]
        temp := temp . rand(A_LoopField)
    }

    return StrReplace(temp, "`n", "`r`n")
}

iphone(text) {
    temp := ""
    text := StrReplace(text, "`r`n", "`n")
    Loop parse text, " " {
        first  := StrLower(SubStr(A_LoopField, 1, 1))
        second := StrTitle(SubStr(A_LoopField, 2))

        temp := temp . " " . (first . second)
    }
    text := StrReplace(temp, "`n", "`r`n")
    text := SubStr(text, 2)

    return text
}
