#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Sleep 5000
Loop
{
	Click
	RandSleep(500,750)
}

RandSleep(x,y) {
	Random, rand, %x%, %y%
	Sleep %rand%
}