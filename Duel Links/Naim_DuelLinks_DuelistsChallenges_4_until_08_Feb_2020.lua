--[[message
Reproduces a Duel Link's puzzle, including its hints.

	Your Starting LP: 4000
	Opponent's Starting LP: 2500
	Complexity: 1.5/10.
	Objective: Win this turn.
	Hint: Figuring out how to use magic should be no problem for a magician, right?
]]
Debug.SetAIName("Tour Guide From the Underworld")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_MODE_SPEED,3)
Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,2500,0,0)

--Main Deck
Debug.AddCard(46986414,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(21082832,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(73616671,0,0,LOCATION_DECK,0,POS_FACEDOWN)
--Hand
Debug.AddCard(7084129,0,0,LOCATION_HAND,0,POS_FACEDOWN)
--GY
Debug.AddCard(47963370,0,0,LOCATION_GRAVE,0,POS_FACEUP)
--Spell & Trap Zones
Debug.AddCard(47222536,0,0,LOCATION_SZONE,2,10)
--Monster Zones
Debug.AddCard(82593786,1,1,LOCATION_MZONE,2,4,true)
Debug.AddCard(80280944,1,1,LOCATION_MZONE,3,1,true)
Debug.ShowHint("Win this turn!")
Debug.ReloadFieldEnd()
aux.BeginPuzzle()