--[[message
Reproduces a Duel Link's puzzle, including its hints.

	Your Starting LP: 4000
	Opponent's Starting LP: 200
	Complexity: 1/10.
	Objective: Win this turn.
]]


--Created by Naim for Ygopro Percy
Debug.SetAIName("Tour Guide From the Underworld")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_MODE_SPEED,3)
Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,200,0,0)
Debug.ShowHint("Summon a high level monster!")
Debug.ShowHint("The Level(# of stars) of Judge Man in your hand is 6.")
Debug.ShowHint("To Summon a level 5 or 6 monster, you need to Tribute 1 monster on your field (by sending them to the Graveyard).")
Debug.ShowHint("This is called a Tribute Summon.")

--your hand
Debug.AddCard(30113682,0,0,LOCATION_HAND,0,POS_FACEUP_ATTACK) --judge man

--your field
Debug.AddCard(66602787,0,0,LOCATION_MZONE,2,POS_FACEUP_DEFENSE) -- saggi

--opponent's field
Debug.AddCard(28279543,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK) -- saggi


--Insert any message here
--insert additional message here
Debug.ShowHint("Win this turn!")

Debug.ReloadFieldEnd()
aux.BeginPuzzle()
