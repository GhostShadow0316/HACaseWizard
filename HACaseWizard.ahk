; HACaseWizard.ahk

#Requires AutoHotkey v2.0

if (!A_IsAdmin) {
    Run('*RunAs "' A_AhkPath '" /restart "' A_ScriptFullPath '"')
}

; init

#Include "%A_ScriptDir%\cases.ahk"

#SingleInstance Force
SetWorkingDir A_ScriptDir
SetTitleMatchMode 2
SendMode "Input"
GroupAdd "All"

text := ""
menu_items := []

; load config

if (iniRead("config/config.ini", "config", "custom_order") == "true") {
    order := strSplit(iniRead("config/config.ini", "order"), "`n")
} else {
    order := strSplit(iniRead("config/default.ini", "order"), "`n")
}

; create menu

CMenu := Menu()

for i, elem in order {
    if (InStr(elem, "#") == 1) {
        continue
    }

    if (elem == "---") {
        menu_items.push("---")
        CMenu.Add()
    } else {
        elem := StrReplace(elem, "\#", "#")
        arr  := StrSplit(elem, "=")

        menu_items.push(Trim(arr[2]))
        CMenu.Add(dealWith(arr[1]), CCase)
    }
}

^CapsLock:: {
    global text
    GetText()
    if (text != "") {
        CMenu.Show()
    }
}

; functions

CCase(name, pos, _) {
    global text

    a := menu_items[pos]
    b := case_map[a]

    text := b(text)
    PutText(text)
}

GetText() {
    global text

    clip := ClipboardAll()
    A_Clipboard := ""
    Send("^c")
    ClipWait(0.5)

    text := A_Clipboard
    A_Clipboard := clip
}

PutText(text) {
    clip := ClipboardAll()
    Sleep(20)
    A_Clipboard := text
    Send("^v")
    Sleep(100)
    A_Clipboard := clip
}

dealWith(text) {
    text := Trim(text, " ")
    text := Trim(text, '"')
    text := Trim(text, "'")

    return text
}
