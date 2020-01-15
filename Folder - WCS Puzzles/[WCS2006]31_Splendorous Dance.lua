--[[message
Reproduces a Duel Puzzle from "Ultimate Masters: World Championship 2006"
	
	
	Your Starting LP: 
	Opponent's Starting LP: 
	Complexity: ?/10.
	Objective: Win this turn.
]]
Debug.SetAIName("華麗なる舞い")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)

Debug.SetPlayerInfo(0,500,0,0)
Debug.SetPlayerInfo(1,2500,0,0)

Debug.AddCard(15042735,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(31560081,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(55013285,1,1,LOCATION_DECK,0,POS_FACEDOWN)

Debug.AddCard(37744402,0,0,LOCATION_MZONE,1,POS_FACEDOWN_DEFENSE)
Debug.AddCard(09156135,0,0,LOCATION_MZONE,2,POS_FACEDOWN_DEFENSE)
Debug.AddCard(82005435,0,0,LOCATION_MZONE,3,POS_FACEDOWN_DEFENSE)
Debug.AddCard(55013285,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)

Debug.AddCard(05318639,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(79333300,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(93747864,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(44095762,1,1,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(82732705,1,1,LOCATION_SZONE,2,POS_FACEUP)
Debug.AddCard(52503575,1,1,LOCATION_SZONE,3,POS_FACEUP)

Debug.ReloadFieldEnd()
Debug.ShowHint("１回合內取得勝利")
aux.BeginPuzzle()

--[[
Solution:

-Activate Mystical Space Typhoon and select Mirror Force
-Flip Apprentice Magician and Lady Ninja Yae face up
-Go into battle phase
-Attack Troop Dragon with Lady Ninja Yae
-Attack Troop Dragon with Apprentice Magician (and activate its effect to 
special summon Hurricail in defense mode)
-Activate Spiritual Wind Art, sacrificing Lady Ninja Yae, and select 
opponent's Skill Drain
-Activate Desert Sunlight and select Troop Dragon due to Wynn's effect
-Attack and win

]]