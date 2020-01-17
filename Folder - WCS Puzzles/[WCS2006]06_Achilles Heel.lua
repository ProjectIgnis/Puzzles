--[[message
Reproduces a Duel Puzzle from "Ultimate Masters: World Championship 2006"
	
	
	Your Starting LP: 1500
	Opponent's Starting LP: 5500
	Complexity: 3/10.
	Objective: Win this turn.
]]
Debug.SetAIName("WCS 2006")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)

Debug.SetPlayerInfo(0,1500,0,0)
Debug.SetPlayerInfo(1,5500,0,0)

Debug.AddCard(69456283,0,0,LOCATION_DECK,0,POS_FACEDOWN)

Debug.AddCard(73891874,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(36045450,0,0,LOCATION_HAND,0,POS_FACEDOWN)

Debug.AddCard(31560081,0,0,LOCATION_MZONE,2,POS_FACEDOWN_DEFENSE)
Debug.AddCard(27618634,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK)
Debug.AddCard(47737087,1,1,LOCATION_MZONE,3,POS_FACEUP_DEFENSE)
Debug.AddCard(83121692,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)

Debug.AddCard(29826127,0,0,LOCATION_SZONE,2,POS_FACEDOWN)

Debug.AddCard(78004197,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(32619583,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(41142615,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(33550694,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(24094653,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(95286165,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(26902560,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(18511384,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win this turn")
aux.BeginPuzzle()

--[[
Solution:
-Flip Magician of Faith face up and select The Cheerful Coffin from your graveyard
-Activate The Forces of Darkness and select both Dark World monsters in your graveyard
-Activate Magician's Unite and select The Unhappy Girl on the field
-Summon White Horns D. in attack mode by sacrificing Magician of Faith and use its effect to remove all spell cards from your opponent's graveyard
-Activate The Cheerful Coffin and send both Dark World monster cards to the graveyard (and then special summon them in attack mode)
-Attack Elemental Hero Rampart Blaster with The Unhappy Girl
-Attack Elemental Hero Tempest with White Horns D.
-Attack with Dark World monsters and win

]]