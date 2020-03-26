--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! 5D's World Championship 2011: Over the Nexus"
	
	
Your Starting LP: 100
Opponent's Starting LP: 1500
Complexity: 3/10.

Objective: Win this turn.
]]
Debug.SetAIName("WCS 2011")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,3)
Debug.SetPlayerInfo(0,100,0,0)
Debug.SetPlayerInfo(1,1500,0,0)
Debug.AddCard(43642620,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(5318639,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(35262428,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(81674782,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(82732705,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(21070956,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(27551,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(26956670,0,0,LOCATION_SZONE,4,POS_FACEDOWN)
Debug.AddCard(71717923,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(52768103,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(83011277,0,0,LOCATION_MZONE,3,POS_FACEDOWN_DEFENSE)
Debug.AddCard(19028307,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(19028307,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(19028307,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)
Debug.AddCard(77910045,1,1,LOCATION_SZONE,2,POS_FACEUP)
Debug.AddCard(23421244,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
Solution:
Activate "Wiseman's Chalice", selecting "Reborn Zombie".
Activate "Altar for Tribute", Tributing "Reborn Zombie".
Activate "Skill Drain" by paying 1000 Life Points.
Activate "Limit Reverse", selecting "Mormolith".
Normal Summon "Zombie Mammoth".
Activate "Dimensional Fissure".
Activate the effect of "Mormolith" and Tribute "Zombie Mammoth", then Chain "Mystical Space Typhoon", selecting "Skill Drain".
Activate "Release from Stone", selecting "Mormolith".
Attack for game.
]]