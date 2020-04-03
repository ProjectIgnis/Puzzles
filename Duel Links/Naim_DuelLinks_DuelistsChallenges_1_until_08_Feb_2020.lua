--[[message
Reproduces a Duel Link's puzzle, including its hints.

	Your Starting LP: 4000
	Opponent's Starting LP: 3500
	Complexity: 1/10.
	Objective: Win this turn.
	Hint:  Looks like HEROes always arrive just in the nick of time.
]]

--Created by Naim for Ygopro Percy
Debug.SetAIName("Tour Guide From the Underworld")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_MODE_SPEED,3)
Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,3500,0,0)

--Main Deck
Debug.AddCard(58932615,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(21143940,0,0,LOCATION_DECK,0,POS_FACEDOWN)
--Extra Deck
Debug.AddCard(58147549,0,0,LOCATION_EXTRA,0,8)
Debug.AddCard(1945387,0,0,LOCATION_EXTRA,0,8)
--Monster Zones
Debug.AddCard(63060238,0,0,LOCATION_MZONE,2,4,true)
--Spell & Trap Zones
Debug.AddCard(45906428,0,0,LOCATION_SZONE,2,10)
--Monster Zones
Debug.AddCard(97023549,1,1,LOCATION_MZONE,2,1,true)


Debug.ShowHint("Win this turn!")

Debug.ReloadFieldEnd()
aux.BeginPuzzle()