; string.ahk

#Requires AutoHotkey v2.0

case_map["lb2s"] := lb2s
case_map["s2lb"] := s2lb
case_map["lscl"] := lowerSequentialCaps
case_map["reverse"] := reverse

lb2s(text) {
    return RegExReplace(text, "\R", " ")
}

s2lb(text) {
    return RegExReplace(text, " ", "`n")
}

reverse(text) {
    temp := ""
    text := StrReplace(text, "`r`n", "`n")
    Loop parse text {
        temp := A_LoopField . temp
    }
    text := StrReplace(temp, "`n", "`r`n")

    return text
}

lowerSequentialCaps(text) {
    temp := ""
    text := StrReplace(text, "`r`n", "`n")

    upper := 0
    Loop parse text {
        upper += isUpper(A_LoopField)
        upper := (upper <= 0) ? 0 : upper - isLower(A_LoopField)

        if (upper == 2) {
            temp .= StrLower(A_LoopField)
            upper := 1
        } else {
            temp .= A_LoopField
        }
    }

    text := StrReplace(temp, "`n", "`r`n")

    return text
}
