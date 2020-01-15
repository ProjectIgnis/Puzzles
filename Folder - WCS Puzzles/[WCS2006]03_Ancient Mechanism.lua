
Debug.SetAIName("Non Player Character - WCS 2006")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)

Debug.SetPlayerInfo(0,1400,0,0)
Debug.SetPlayerInfo(1,3000,0,0)
--[[message
Reproduces a Duel Puzzle from "Ultimate Masters: World Championship 2006", using Ancient Gear monsters and Ultimate Offering.
	
	
	Your Starting LP: 1400
	Opponent's Starting LP: 3000
	Complexity: 2/10.
	Objective: Win this turn.
]]
Debug.AddCard(92001300,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(10509340,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(83104731,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(56094445,0,0,LOCATION_HAND,0,POS_FACEDOWN)

Debug.AddCard(23995346,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(89631139,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)

Debug.AddCard(80604091,0,0,LOCATION_SZONE,2,POS_FACEUP)
Debug.AddCard(44095762,1,1,LOCATION_SZONE,2,POS_FACEDOWN)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win this turn")
aux.BeginPuzzle()

--[[
Solution:
-Activate Ancient Gear Castle
-Summon Ancient Gear Soldier in attack mode
-Use Ultimate Offerings effect and summon Ancient Gear Beast by 
sacrificing Blue-Eyes Ultimate Dragon (note: don't use Ancient Gear 
Castle's effect!)
-Use Ultimate Offerings effect again to summon Ancient Gear Golem using 
Ancient Gear Castle's effect
-Go into battle phase and attack Blue-Eyes White Dragon with Ancient Gear 
Golem
-Attack with other monsters and win

]]