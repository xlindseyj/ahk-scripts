/*
INSTRUCTIONS:
	-Filter out combat spells in mage book
	-Line up the alchable with the spell
	-Start with magic book open
*/

;;VARIABLE DECLARATIONS & USER-INPUT;;
	InputBox, invLimit, Number of Alchs, Enter the number of alchs you'd like to complete:
	
	;;GLOBAL VARIABLES;;
		global invCount := 0
		
;;FUNCTIONS;;
	;;LOGOUT FUNCTION;;
		logout() {
			Random, logDoorX, 635, 657
			Random, logDoorY, 503, 521
			Random, logButtonX, 612, 681
			Random, logButtonY, 447, 468
			Random, a150, 144, 164
		
			Mousemove, logDoorX, logDoorY, 3
			sleep a150
			click
			sleep a150
			Mousemove, logButtonX, logButtonY, 3
			sleep a150
			click
		}

#NoEnv
#SingleInstance force
#If WinActive("RuneLite")

1::
loop {
	;;RANDOM VARIABLES;;
		;;HIGH ALCH SPELL AND ITEM;;
			Random, x1, 708, 721
			Random, y1, 315, 334
		
		;;RANDOM SLEEPS;;
			Random, a150, 130, 170
			Random, a2400, 2401, 2601
			
	Mousemove, x1, y1, 3
	sleep a150
	click
	sleep a150
	click
	sleep a2400
	
	
	;;ALCH COUNTER;;
	invCount++
	
	if (invCount = invLimit) {
	
		logout()
		sleep 1000
		Msgbox, Script complete. Alchs completed: %invCount%
		exitapp
	
	} else {
		continue
	}
}


2::reload
3::exitapp