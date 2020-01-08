
Debug.SetAIName("Non Player Character - WCS 2006")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)

Debug.SetPlayerInfo(0,1400,0,0)
Debug.SetPlayerInfo(1,4500,0,0)

--[[message
Reproduces a Duel Puzzle from "Ultimate Masters: World Championship 2006", using Arcana Knight Joker.
	
	
	Your Starting LP: 1400
	Opponent's Starting LP: 4500
	Complexity: 2/10.
	Objective: Win this turn.
]]


Debug.AddCard(00423585,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(64788463,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(25652259,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(90876561,0,0,LOCATION_DECK,0,POS_FACEDOWN)

Debug.AddCard(74848038,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(24094653,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(70828912,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(32807846,0,0,LOCATION_HAND,0,POS_FACEDOWN)

Debug.AddCard(00423585,0,0,LOCATION_MZONE,2,POS_FACEUP_DEFENSE)
Debug.AddCard(04335645,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)

Debug.AddCard(34460239,0,0,LOCATION_SZONE,2,POS_FACEDOWN)

Debug.AddCard(06150044,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win this turn")
aux.BeginPuzzle()