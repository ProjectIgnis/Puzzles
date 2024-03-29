--[[message
Reproduces a Duel Puzzle from "Ultimate Masters: World Championship 2006"
	
	
	Your Starting LP: 8000
	Opponent's Starting LP: 8000
	Complexity: ?/10.
	Objective: Win this turn.
]]
Debug.SetAIName("WCS 2006")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)

Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

Debug.AddCard(83746708,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(40619825,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(00295517,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(74848038,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(71044499,0,0,LOCATION_HAND,0,POS_FACEDOWN)

Debug.AddCard(83994646,0,0,LOCATION_MZONE,2,POS_FACEDOWN_DEFENSE)
Debug.AddCard(22790789,1,1,LOCATION_MZONE,0,POS_FACEDOWN_DEFENSE)
local m11 = Debug.AddCard(14148099,1,1,LOCATION_MZONE,1,POS_FACEUP_DEFENSE)
local m12 = Debug.AddCard(44954628,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE)
Debug.AddCard(22790789,1,1,LOCATION_MZONE,3,POS_FACEDOWN_DEFENSE)
local m14 = Debug.AddCard(14148099,1,1,LOCATION_MZONE,4,POS_FACEUP_DEFENSE)

Debug.AddCard(63102017,0,0,LOCATION_SZONE,0,POS_FACEDOWN)
Debug.AddCard(14087893,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(97169186,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(38699854,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(82732705,0,0,LOCATION_SZONE,4,POS_FACEDOWN)

Debug.AddCard(07572887,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(84430950,0,0,LOCATION_GRAVE,0,POS_FACEUP)

Debug.PreAddCounter(m11,0x1F,3)
Debug.PreAddCounter(m12,0x1F,3)
Debug.PreAddCounter(m14,0x1F,3)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win this turn.")
aux.BeginPuzzle()
--[[
solution:
-Activate 'A Legendary Ocean'
-Activate 'Stop Defense', select 'B.E.S. Tetran'
-Activate 'Book of Moon', select 'Big Core'
-Activate 'Monster Reincarnation', discard 'Nobleman of Crossout' and 
select 'Armed Samurai - Ben Kei'
-Summon 'Armed Samurai - Ben Kei'
-Activate 'Mage Power' and equip it to 'Armed Samurai - Ben Kei'
-Activate 'Axe of Despair' and equip it to 'Armed Samurai - Ben Kei'
-Attack 'B.E.S. Tetran' with 'Armed Samurai - Ben Kei' three times
]]
