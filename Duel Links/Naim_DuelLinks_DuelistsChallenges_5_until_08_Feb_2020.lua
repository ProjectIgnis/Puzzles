--[[message
Reproduces a Duel Link's puzzle, including its hints.

	Your Starting LP: 4000
	Opponent's Starting LP: 3600
	Complexity: 1.5/10.
	Objective: Win this turn.
	Hint: Show off your HEROes skills!
]]
Debug.SetAIName("Tour Guide From the Underworld")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_MODE_SPEED,3)
Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,3600,0,0)

--Main Deck
Debug.AddCard(79979666,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(24094653,0,0,LOCATION_DECK,0,POS_FACEDOWN)
--Extra Deck
Debug.AddCard(45170821,0,0,LOCATION_EXTRA,0,8)
Debug.AddCard(45170821,0,0,LOCATION_EXTRA,0,8)
--Hand
Debug.AddCard(45195443,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(40044918,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(63060238,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(18511384,0,0,LOCATION_HAND,0,POS_FACEDOWN)
--Monster Zones
Debug.AddCard(12652643,1,1,LOCATION_MZONE,3,1,true)
Debug.AddCard(12652643,1,1,LOCATION_MZONE,1,1,true)
Debug.ShowHint("Win this turn!")
Debug.ReloadFieldEnd()
aux.BeginPuzzle()