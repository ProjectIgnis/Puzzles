
Debug.SetAIName("Non Player Character - WCS 2006")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)

Debug.SetPlayerInfo(0,1000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)
--[[message
Reproduces a Duel Puzzle from "Ultimate Masters: World Championship 2006", using Cybernetic Magician.
	
	
	Your Starting LP: 1000
	Opponent's Starting LP: 8000
	Complexity: 3/10.
	Objective: Win this turn.
]]

Debug.AddCard(48094997,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(48766543,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(73915051,0,0,LOCATION_HAND,0,POS_FACEDOWN)

Debug.AddCard(23205979,0,0,LOCATION_MZONE,1,POS_FACEUP_DEFENSE)
Debug.AddCard(59023523,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(23205979,0,0,LOCATION_MZONE,3,POS_FACEUP_DEFENSE)

Debug.AddCard(36280194,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(83133491,0,0,LOCATION_SZONE,3,POS_FACEDOWN)

Debug.AddCard(97023549,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(22609617,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(34100324,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win this turn")
aux.BeginPuzzle()

--[[
Solution:
-Use Cybernetic Magician's effect on both Spirit Reapers, discarding 
Battle Footballer and Cyber-tech Alligator
-Put Cybernetic Magician into defense mode
-Activate Scapegoat
-Activate Zero Gravity
-Activate Backup Soldier and bring 3 monsters back from the graveyard
-Use Cybernetic Magician's effect 3 more time on three different 
scapegoats tokens
-Go into battle phase, attack and win
]]