; case.ahk

#Requires AutoHotkey v2.0

case_map["lower"] := lower
case_map["upper"] := upper
case_map["title"] := title
case_map["sentence"] := sentence
case_map["invert"] := invert

lower(text) {
    return StrLower(text)
}

upper(text) {
    return StrUpper(text)
}

title(text) {
    return StrTitle(text)
}

sentence(text) {
    text := StrLower(text)
    text := RegExReplace(text, "((?:^|[.!?]\s+)[a-z])", "$u1")

    text := StrReplace(text, " i ", " I ")
    text := StrReplace(text, " i'm ", " I'm ")
    text := StrReplace(text, " i'll ", " I'll ")
    text := StrReplace(text, " i've ", " I've ")

    return text
}

invert(text) {
    temp := ""
    text := StrReplace(text, "`r`n", "`n")
    Loop parse text {
        if (!(isUpper(A_LoopField)) && !(isLower(A_LoopField))) {
            temp := temp . A_LoopField
        }

        temp := temp . (isUpper(A_LoopField) ? StrLower(A_LoopField) : "")
        temp := temp . (isLower(A_LoopField) ? StrUpper(A_LoopField) : "")
    }

    return StrReplace(temp, "`n", "`r`n")
}
