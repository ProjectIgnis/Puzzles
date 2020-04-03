--[[message
Reproduces a Duel Link's puzzle, including its hints.

	Your Starting LP: 4000
	Opponent's Starting LP: 100
	Complexity: 1/10.
	Objective: Win this turn.
]]


--Created by Naim for Ygopro Percy
Debug.SetAIName("Tour Guide From the Underworld")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_MODE_SPEED,3)
Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,100,0,0)
Debug.ShowHint("Some Spells power up monsters.")
Debug.ShowHint("Banner of Courage is a card that boost up monster's ATK by 200 points")
Debug.ShowHint("Enhance your monster(s) and defeat your opponent's!")

--your hand
Debug.AddCard(10012614,0,0,LOCATION_HAND,0,POS_FACEUP_ATTACK) --Banner of Courage
--your field
Debug.AddCard(42348802,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --Trakodon

--opponent's
Debug.AddCard(30655537,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --Cyber Falcon

Debug.ShowHint("Win this turn!")

Debug.ReloadFieldEnd()
aux.BeginPuzzle()
