--[[message
Reproduces a Duel Link's puzzle, including its hints.

	Your Starting LP: 4000
	Opponent's Starting LP: 600
	Complexity: 1/10.
	Objective: Win this turn.
]]


--Created by Naim for Ygopro Percy
Debug.SetAIName("Tour Guide From the Underworld")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_MODE_SPEED+DUEL_SIMPLE_AI,3)
Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,600,0,0)
Debug.ShowHint("Summon a high level monster!")
Debug.ShowHint("The Level(# of stars) of Gaia The Fierce Knight in your hand is 7.")
Debug.ShowHint("To Summon a level 7 or higher monster, you need to Tribute 2 monsters on your field (by sending them to the Graveyard).")
Debug.ShowHint("This is called a Tribute Summon.")


--your hand
Debug.AddCard(6368038,0,0,LOCATION_HAND,0,POS_FACEUP_ATTACK) --Gaia The Fierce Knight

--your field
Debug.AddCard(87796900,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK) --Windeg Dragon, Guardian of the Fortress #1
Debug.AddCard(91152256,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --Celtic Guardian
--opponent's field
Debug.AddCard(5053103,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK) --Battle Ox

--Insert any message here
--insert additional message here
Debug.ShowHint("Win this turn!")
Debug.ReloadFieldEnd()
aux.BeginPuzzle()
