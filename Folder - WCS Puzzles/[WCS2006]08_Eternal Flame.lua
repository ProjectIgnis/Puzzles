--[[message
Reproduces a Duel Puzzle from "Ultimate Masters: World Championship 2006"
	
	
	Your Starting LP: 
	Opponent's Starting LP: 
	Complexity: ?/10.
	Objective: Win this turn.
]]
Debug.SetAIName("絶え間ない炎")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)

Debug.SetPlayerInfo(0,500,0,0)
Debug.SetPlayerInfo(1,2100,0,0)

Debug.AddCard(70828912,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(49398568,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(46918794,0,0,LOCATION_HAND,0,POS_FACEDOWN)

Debug.AddCard(76075810,0,0,LOCATION_MZONE,1,POS_FACEUP_DEFENSE)
Debug.AddCard(56094445,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(04335645,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)

Debug.AddCard(33248692,0,0,LOCATION_SZONE,2,POS_FACEDOWN)

Debug.AddCard(32809211,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)

Debug.ReloadFieldEnd()
Debug.ShowHint("１回合內取得勝利")
aux.BeginPuzzle()


--[[
Solution:
-Put Throwstone Unit in attack mode
-Go into battle phase
-Attack Newdoria with Throwstone Unit and chain trap Option Hunter when 
sent to the graveyard
-Attack Newdoria with Ancient Gear Soldier
-Go to main phase 2
-Activate Tremendous Fire and chain Serial Spell
]]