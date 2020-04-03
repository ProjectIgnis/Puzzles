--[[message
Reproduces a Duel Link's puzzle, including its hints.

	Your Starting LP: 4000
	Opponent's Starting LP: 1700
	Complexity: 1/10.
	Objective: Win this turn.
]]

--Created by Naim for Ygopro Percy
Debug.SetAIName("Tour Guide From the Underworld")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_MODE_SPEED+DUEL_SIMPLE_AI,3)
Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,1700,0,0)
Debug.ShowHint("Summon a monster with high Attack!")
Debug.ShowHint("Among the cards in your hand, Axe Raider's ATK is 1700 whereas Roboyarou's is 900.")
Debug.ShowHint("The higher your monster's ATK, the more damage you'll deal to your opponent.")


--your hand
Debug.AddCard(48305365,0,0,LOCATION_HAND,0,POS_FACEUP_ATTACK) --Axe Raider
Debug.AddCard(38916461,0,0,LOCATION_HAND,0,POS_FACEUP_ATTACK) --Roboyarou

--Insert any message here
--insert additional message here
Debug.ShowHint("Win this turn!")

Debug.ReloadFieldEnd()
aux.BeginPuzzle()
