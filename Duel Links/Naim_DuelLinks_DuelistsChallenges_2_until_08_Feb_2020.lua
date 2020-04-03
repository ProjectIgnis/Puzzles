--[[message
Reproduces a Duel Link's puzzle, including its hints.

	Your Starting LP: 4000
	Opponent's Starting LP: 1750
	Complexity: 1/10.
	Objective: Win this turn.
	Hint: Is there a Golem in the way? Let the girl with the fox take care of it!
]]

--Created by Naim for Ygopro Percy
Debug.SetAIName("Tour Guide From the Underworld")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_MODE_SPEED,3)
Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,1750,0,0)

--Main Deck
Debug.AddCard(4376658,0,0,LOCATION_DECK,0,POS_FACEDOWN)
--Hand
Debug.AddCard(759393,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(38699854,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(62953041,0,0,LOCATION_HAND,0,POS_FACEDOWN)
--Monster Zones
Debug.AddCard(52077741,1,1,LOCATION_MZONE,3,1,true)
Debug.AddCard(102380,1,1,LOCATION_MZONE,2,1,true)
--Spell & Trap Zones
Debug.AddCard(403847,1,1,LOCATION_SZONE,2,5)
Debug.ShowHint("Win this turn!")
Debug.ReloadFieldEnd()
aux.BeginPuzzle()