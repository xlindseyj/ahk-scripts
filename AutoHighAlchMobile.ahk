#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#If WinActive("BlueStacks") or WinActive("RuneLite")

Sleep 5000
Loop
{
	RandSleep(1100,1300)
	Mousemove,1280,30,0,R
	Click
	RandSleep(2800,3000)
	Mousemove,-1280,-30,0,R
	Click
}

RandSleep(x,y) {
	Random, rand, %x%, %y%
	Sleep %rand%
}
