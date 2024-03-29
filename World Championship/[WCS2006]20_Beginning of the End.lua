--[[message
Reproduces a Duel Puzzle from "Ultimate Masters: World Championship 2006"
	
	
	Your Starting LP: 100
	Opponent's Starting LP: 5600
	Complexity: ?/10.
	Objective: Win this turn.
]]
Debug.SetAIName("WCS 2006")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)

Debug.SetPlayerInfo(0,100,0,0)
Debug.SetPlayerInfo(1,5600,0,0)

Debug.AddCard(72426662,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(08198712,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(22493811,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(58192742,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(46427957,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(80161395,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(99171160,0,0,LOCATION_HAND,0,POS_FACEDOWN)

Debug.AddCard(31560081,0,0,LOCATION_MZONE,1,POS_FACEDOWN_DEFENSE)
Debug.AddCard(48659020,0,0,LOCATION_MZONE,2,POS_FACEDOWN_DEFENSE)
Debug.AddCard(15025844,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE)

Debug.AddCard(29843091,0,0,LOCATION_SZONE,2,POS_FACEDOWN)

Debug.AddCard(21844576,0,0,LOCATION_GRAVE,0,POS_FACEUP)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win this turn.")
aux.BeginPuzzle()

--[[
Solution:

]]