--[[message
Reproduces a Duel Puzzle from "Ultimate Masters: World Championship 2006"
	
	
	Your Starting LP: 
	Opponent's Starting LP: 
	Complexity: ?/10.
	Objective: Win this turn.
]]
Debug.SetAIName("アリアリクイクイ")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)

Debug.SetPlayerInfo(0,100,0,0)
Debug.SetPlayerInfo(1,3900,0,0)

Debug.AddCard(15595052,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10032958,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(40640057,1,1,LOCATION_DECK,0,POS_FACEDOWN)

Debug.AddCard(13250922,0,0,LOCATION_HAND,0,POS_FACEDOWN)

Debug.AddCard(15595052,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(10032958,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(77252217,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK)
Debug.AddCard(23205979,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE)

Debug.AddCard(34460239,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(07076131,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(42829885,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(44095762,1,1,LOCATION_SZONE,2,POS_FACEDOWN)

Debug.ReloadFieldEnd()
Debug.ShowHint("１回合內取得勝利")
aux.BeginPuzzle()

--[[
Solution:
-Activate 'Generation Shift', select 'Disciple of the Forbidden Spell'
-Special Summon 'Anteatereatingant' by sending both your trap and spell
card on the field to the graveyard
-Activate 'Anteatereatingant''s effect to destroy opponent's trap
-Summon 'Disciple of the Forbidden Spell', select "Dark" for its effect
-Attack 'Spirit Reaper' with 'Disciple of the Forbidden Spell'
-Attack directly with 'Divine Dragon - Excelion'
-Attack directly with 'Chainsaw Insect'
]]