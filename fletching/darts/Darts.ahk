/*
	Makes darts using dart tips + feathers
*/

;;VARIABLE DECLARATIONS & USER-INPUT;;
	InputBox, dartsToMake, Quanitity, Enter the number of darts you'd like to make:
	
	;;GLOBAL VARIABLES;;
		global dartCount := 0
		global antiTimer := 0

#NoEnv
Coordmode, Mouse, Window

;;#If WinActive("RuneLite");;

#Singleinstance force

1::

loop {
	;;RANDOM ANTI BAN;;
		Random, antiBan1, 25000, 50000
	;;RANDOM MOVES;;
		Random, roll, 1, 2
		Random, x1, 39, 45
		Random, y1, 5, 10
		Random, x2, 40, 50
		Random, y2, 3, 7
	;;RANDOM SLEEPS;;
		Random, randxs, 25, 75
		Random, randsm, 125, 175
		Random, randmd, 175, 225
		
		Mousemove,x1,-y2,0,R
		sleep randxs
		click
		dartCount++
		sleep randxs
		Mousemove,-x1,y2,0,R
		click
		dartCount++
		sleep randsm
	
	if (dartCount = dartsToMake) {
		sleep 1000
		Msgbox, Finished - Darts made: %dartCount%
		exitapp
	} else {
		continue
	}
}

2::reload
3::exitapp
