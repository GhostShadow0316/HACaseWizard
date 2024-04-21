; functions.ahk

#Requires AutoHotkey v2.0

case_map := Map()

; include all case files

; built-in
#Include "%A_ScriptDir%\cases\built-in\case.ahk"
#Include "%A_ScriptDir%\cases\built-in\joke.ahk"
#Include "%A_ScriptDir%\cases\built-in\string.ahk"

; plugin
