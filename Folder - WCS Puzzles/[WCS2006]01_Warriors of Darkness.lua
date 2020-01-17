
Debug.SetAIName("WCS 2006")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)

Debug.SetPlayerInfo(0,600,0,0)
Debug.SetPlayerInfo(1,7000,0,0)
--[[message
Reproduces a Duel Puzzle from "Ultimate Masters: World Championship 2006", using Dark World monsters.
	
	
	Your Starting LP: 600
	Opponent's Starting LP: 7000
	Complexity: 1/10.
	Objective: Win this turn.
]]


Debug.AddCard(07459013,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(32619583,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(33731070,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(78004197,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(79126789,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(05498296,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(89631139,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(15150365,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(89631139,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)
Debug.AddCard(41142615,0,0,LOCATION_SZONE,2,POS_FACEDOWN)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win this turn")
aux.BeginPuzzle()



--[[
Solution:
Activate The Cheerful Coffin and send Sillva, Beiige, and Broww to the graveyard
Special summon Beiige and Silva in attack position. Draw with Broww
Summon Zure in attack position. Enter Battle phase
Attack White Magical Hat with Scarr (discarding Goldd and destroy both Blue-Eyes White Dragons)
Special summon Goldd in attack position and then attack.

]]