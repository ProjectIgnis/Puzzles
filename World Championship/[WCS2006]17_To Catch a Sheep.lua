--[[message
Reproduces a Duel Puzzle from "Ultimate Masters: World Championship 2006"
	
	
	Your Starting LP: 2100
	Opponent's Starting LP: 8100
	Complexity: ?/10.
	Objective: Win this turn.
]]
Debug.SetAIName("WCS 2006")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)

Debug.SetPlayerInfo(0,2100,0,0)
Debug.SetPlayerInfo(1,8100,0,0)

Debug.AddCard(61505339,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(15734813,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(34853266,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(31560081,0,0,LOCATION_MZONE,1,POS_FACEDOWN_DEFENSE)
Debug.AddCard(73879377,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(54652250,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK)
Debug.AddCard(73915052,1,1,LOCATION_MZONE,0,POS_FACEUP_DEFENSE)
Debug.AddCard(73915052,1,1,LOCATION_MZONE,1,POS_FACEUP_DEFENSE)
Debug.AddCard(29343734,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(73915052,1,1,LOCATION_MZONE,3,POS_FACEUP_DEFENSE)
Debug.AddCard(73915052,1,1,LOCATION_MZONE,4,POS_FACEUP_DEFENSE)
Debug.AddCard(53582587,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(70828912,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(31036355,0,0,LOCATION_GRAVE,0,POS_FACEUP)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win this turn.")
aux.BeginPuzzle()

--[[
Solution:
-Activate 'Armed Dragon LV7''s effect, discard 'Soul Tiger'
-Flip Summon 'Magician of Faith', select 'Creature Swap'
-Summon 'The Creator' by tributing 'Magician of Faith' and 'Man-Eater Bug'
-Activate 'The Creator''s effect, select 'Soul Tiger' and discard 'Tsukuyomi'
-Activate 'Creature Swap', select 'Soul Tiger'
-Attack 'Soul Tiger' with 'Elemental Hero Erikshieler'
-Attack directly with the rest
]]