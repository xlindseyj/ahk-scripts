#NoEnv
#SingleInstance force
#If WinActive("RuneLite")

;;VARIABLE DECLARATIONS & USER-INPUT;;	
	;;GLOBAL VARIABLES;;
		global castCounter:= 0
		global antibanCounter:= 0
		global mouseOffScreenCounter:= 0
		global Random, castRandom, 5000, 10000
		global Random, toggleValue, 1, 2	
		
;;FUNCTIONS;;
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
	
	randomAFK() {
		Random, b60, 60001, 120001
		Random, b90, 190001, 220001
		
		if (toggleValue = 1) {
			sleep b60
		} else {
			sleep b90
		}
		toggle()
	}
	
	randomRightClick() {
		click, right
	}
	
	checkCurrentEXP() {
		Random, a50, 20, 60
		Random, a150, 130, 170
		Random, a8000, 8001, 12001
		
		Random, skillTabX, 556, 593
		Random, skillTabY, 196, 225
		
		Random, magicSkillX, 553, 608
		Random, magicSkillY, 394, 420
		
		Random, magicBookX, 731, 756
		Random, magicBookY, 197, 228
		
		Mousemove, skillTabX, skillTabY
		sleep a150
		Mousemove, magicSkillX, magicSkillY
		sleep a8000
		Mousemove, magicBookX, magicBookY
		sleep a50
		click
	}
	
	randomMouseMove() {
		Random, clientX, 0, 765
		Random, clientY, 0, 530
		Mousemove, clientX, clientY
	}
	
	mouseOffScreen() {
		if (toggleValue = 1) {
			Random, clientX, 0, 765
			Random, clientY, 0, 530
			Mousemove, clientX-1500, clientY
		} else {
			Random, clientX, 0, 765
			Random, clientY, 0, 530
			Mousemove, clientX, clientY-1500
		}
		mouseOffScreenCounter++
		toggle()
	}
	
	toggle() {
		if (toggleValue = 1) {
			toggleValue = 2
		} else {
			toggleValue = 1
		}
	}

1::
loop {
	;;RANDOM VARIABLES;;
		Random, antibanRandom, 1, 10
		Random, checkSkillRandom, 30, 60
		
		Random, a50, 20, 60
		Random, a150, 130, 170
		Random, a1600, 1601, 1801
		Random, a2400, 2401, 2601
	
		Random, highAlchX, 712, 734
		Random, highAlchY, 326, 344
		
		Random, itemX, 694, 723
		Random, itemY, 314, 337
		
		Random, stunX, 661, 680
		Random, stunY, 405, 420
		
		Random, npcX, 248, 310
		Random, npcY, 62, 149
			
	;;HIGH ALCH & ITEM;;
		Mousemove, highAlchX, highAlchY, 3
		sleep a150
		click
		sleep a150
		Mousemove, itemX, itemY, 3
		sleep a50
		click
		sleep a50
		if (antibanCounter = antibanRandom or antibanCounter > 10) {
			mouseOffScreen()
			antibanCounter = 0
		} else {
			randomMouseMove()
		}
		sleep a2400
	
	;;STUN & NPC;;
		Mousemove, stunX, stunY, 2
		sleep a150
		click
		sleep a150
		Mousemove, npcX, npcY, 2
		sleep a50
		click
		sleep a50
		randomMouseMove()
		sleep a1600
	
	castCounter++
	antibanCounter++
	
	if (castCounter = castRandom) {
		logout()
		sleep 1000
		Msgbox, Script complete - Casts: %castCounter%
		exitapp
	} else {
		continue
	}
	
	if (mouseOffScreenCounter = checkSkillRandom or mouseOffScreenCounter > 60) {
		mouseOffScreenCounter = 0
		checkCurrentEXP()
	} else {
		continue
	}
}

2::reload
3::exitapp