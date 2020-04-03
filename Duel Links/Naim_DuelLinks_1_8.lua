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
Debug.ShowHint("Trap cards are reliable supporters in duels.")
Debug.ShowHint("Trap cards need to be Set (placed face-down on the field) first. They can be activated on the following turn.")
Debug.ShowHint("Reinforcements was Set face-down during the previous turn. Let's take it from here.")
Debug.ShowHint("Boost your monster's ATK using Reinforcements and defeat your opponent's monster")

--your field
Debug.AddCard(90357090,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --Silver Fang
Debug.AddCard(17814387,0,0,LOCATION_SZONE,2,POS_FACEDOWN) --Reinforcements

--opponent's
Debug.AddCard(29491031,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --The Snake Hair

Debug.ShowHint("Win this turn!")

Debug.ReloadFieldEnd()
aux.BeginPuzzle()
