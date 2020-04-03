--[[message
Reproduces a Duel Link's puzzle, including its hints.

	Your Starting LP: 4000
	Opponent's Starting LP: 2200
	Complexity: 1/10.
	Objective: Win this turn.
	Hint: You're under arrest! Make way for the Superheavy Samurai!
]]
Debug.SetAIName("Tour Guide From the Underworld")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_MODE_SPEED,3)
Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,2200,0,0)

--Main Deck
Debug.AddCard(34496660,0,0,LOCATION_DECK,0,POS_FACEDOWN)
--Hand
Debug.AddCard(98045062,0,0,LOCATION_HAND,0,POS_FACEDOWN)
--Monster Zones
Debug.AddCard(7391448,0,0,LOCATION_MZONE,2,1,true)
--Monster Zones
Debug.AddCard(97017120,1,1,LOCATION_MZONE,2,1,true)
Debug.AddCard(34496660,1,1,LOCATION_MZONE,3,4,true)
Debug.ShowHint("Win this turn!")
Debug.ReloadFieldEnd()
aux.BeginPuzzle()