
Debug.SetAIName("Non Player Character - WCS 2006")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)

Debug.SetPlayerInfo(0,2000,0,0)
Debug.SetPlayerInfo(1,2500,0,0)
--[[message
Reproduces a Duel Puzzle from "Ultimate Masters: World Championship 2006", using Cannon Soldier and Amazoness Chain Master.
	
	
	Your Starting LP: 2000
	Opponent's Starting LP: 2500
	Complexity: 1/10.
	Objective: Win this turn.
]]

Debug.AddCard(40640057,1,1,LOCATION_HAND,0,POS_FACEDOWN)

Debug.AddCard(11384280,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK)
Debug.AddCard(29654737,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(86281779,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)

Debug.AddCard(40703222,0,0,LOCATION_SZONE,2,POS_FACEDOWN)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win this turn")
aux.BeginPuzzle()