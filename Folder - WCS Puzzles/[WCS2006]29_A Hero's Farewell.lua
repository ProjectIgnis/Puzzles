--[[message
Reproduces a Duel Puzzle from "Ultimate Masters: World Championship 2006"
	
	
	Your Starting LP: 
	Opponent's Starting LP: 
	Complexity: ?/10.
	Objective: Win this turn.
]]
Debug.SetAIName("さらばヒーロー")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)

Debug.SetPlayerInfo(0,3500,0,0)
Debug.SetPlayerInfo(1,3700,0,0)

Debug.AddCard(21844576,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(42703248,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(70865988,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(24094653,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(79979666,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(18271561,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(20721928,0,0,LOCATION_HAND,0,POS_FACEDOWN)

Debug.AddCard(31560081,0,0,LOCATION_MZONE,2,POS_FACEDOWN_DEFENSE)
Debug.AddCard(31305911,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE)
Debug.AddCard(10248389,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)

Debug.AddCard(74848038,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(10012614,0,0,LOCATION_SZONE,2,POS_FACEUP)
Debug.AddCard(69196160,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(85742772,1,1,LOCATION_SZONE,2,POS_FACEUP)

Debug.AddCard(80075749,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(58932615,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)

Debug.AddCard(35809262,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(25366484,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

Debug.ReloadFieldEnd()
Debug.ShowHint("１回合內取得勝利")
aux.BeginPuzzle()

--[[
Solution:

-Activate Monster Reincarnation, sending Full Salvo to the graveyard, to 
get Elemental Hero Burstinatrix
-Use Polymerization to summon Elemental Hero Flame Wingman in attack mode
-Summon Elemental Hero Sparkman in attack mode
-Set Chthonian Blast and Giant Trunade on the field
-Special summon Elemental Hero Bubbleman in attack mode
-Use Giant Trunade to get cards back into your hand
-Flip Magician of Faith and get Bubble Illusion from the graveyard
-Activate Bubble Illusion
-Go into battle phase
-Attack Cyber Blader with Elemental Hero Flame Wingman and activate 
Chthonian Blast from your hand after they are both sent to the graveyard; 
with Chthonian Blast's effect, select Marshmallon
-Attack with other monsters
-Go into main phase 2
-Activate Thunder Crash to win

]]