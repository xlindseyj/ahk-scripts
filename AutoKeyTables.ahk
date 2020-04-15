; ; Contact me for any questions on Reddit: /u/xegaJ
; This script is used to make Mahogany Tables.
; Uses q, w & e to make the Mahogany Tables. These keys can be changed to suit your preferences.

#If WinActive("RuneLoader") or WinActive("Old School RuneScape") or WinActive("OSBuddy") or WinActive("OSBuddy Pro") ; This piece of code makes sure that the AHK script only works in a specific program/game window, this comes in handy if you don't feel like suspending/pausing the AHK script whenever you want to use the keys in another window such as Chrome/Netflix. Change it to "OSBuddy"/"OSBuddy Pro"/"RuneLoader" if you're using any 3rd party client.


q:: Click Right
return

w:: MouseMove, 0, 54, 0, R
return 

e:: Click 
return

`:: ; Pressing ` (~/console key) turns the AHK icon in your system tray to red to let you know that's it's suspended.
	Suspend, Permit
	if not A_IsSuspended
	{
		Menu, Tray, Icon, %A_AhkPath%, 5, 1
		Suspend, On
	}
	else
	{
		Menu, Tray, Icon, %A_AhkPath%, 1, 0
		Suspend, Off
	}
	return