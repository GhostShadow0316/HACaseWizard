; HACaseWizard.ahk

; A v2 re-write version of this script
; https://github.com/GorvGoyl/Autohotkey-Scripts-Windows/blob/master/ctrl_caps_as_case_change.ahk

#Requires AutoHotkey v2.0

if (!A_IsAdmin) {
    Run('*RunAs "' A_AhkPath '" /restart "' A_ScriptFullPath '"')
}

; init
#SingleInstance Force
SetWorkingDir A_ScriptDir
SetTitleMatchMode 2
SendMode "Input"
GroupAdd "All"

text := ""

; create menu
CMenu := Menu()

CMenu.Add("lowercase", CCase)
CMenu.Add("UPPERCASE", CCase)
CMenu.Add("Title Case", CCase)
CMenu.Add("Sentence case", CCase)
CMenu.Add()
CMenu.Add("rAnDom cAsE", CCase)
CMenu.Add("iPhone cAse", CCase)
CMenu.Add()
CMenu.Add("Line breaks to spaces", CCase)
CMenu.Add("Reverse", CCase)

^CapsLock:: {
    global text
    text := GetText()
    if (text != "") {
        CMenu.Show()
    }
}

; functions
CCase(name, pos, menu_) {
    global text

    switch (name) {
        case "UPPERCASE":
            text := StrUpper(text)

        case "lowercase":
            text := StrLower(text)

        case "Title Case":
            text := StrTitle(text)

        case "Sentence case":
            text := StrTitle(text)
            text := RegExReplace(text, "((?:^|[.!?]\s+)[a-z])", "$u1")

        ; seporator

        case "rAnDom cAsE":
            temp := ""
            text := StrReplace(text, "`r`n", "`n")
            Loop parse text {
                rand := [StrUpper, StrLower][Random(1, 2)]
                temp := temp . rand(A_LoopField)
            }
            text := StrReplace(temp, "`n", "`r`n")

        case "iPhone cAse":
            temp := ""
            text := StrReplace(text, "`r`n", "`n")
            Loop parse text, " " {
                ; temp := temp . ()
                first  := StrLower(SubStr(A_LoopField, 1, 1))
                second := StrTitle(SubStr(A_LoopField, 2))

                temp := temp . " " . (first . second)
            }
            text := StrReplace(temp, "`n", "`r`n")
            text := SubStr(text, 2)

        ; seporator

        case "Line breaks to spaces":
            text := RegExReplace(text, "\R", " ")

        case "Reverse":
            temp := ""
            text := StrReplace(text, "`r`n", "`n")
            Loop parse text {
                temp := A_LoopField . temp
            }
            text := StrReplace(temp, "`n", "`r`n")
        }

    PutText(text)
}

GetText() {
    clip := ClipboardAll()
    A_Clipboard := ""
    Send("^c")
    ClipWait(0.5)

    text := A_Clipboard
    A_Clipboard := clip

    return text
}

PutText(text) {
    clip := ClipboardAll()
    Sleep(20)
    A_Clipboard := text
    Send("^v")
    Sleep(100)
    A_Clipboard := clip
}
