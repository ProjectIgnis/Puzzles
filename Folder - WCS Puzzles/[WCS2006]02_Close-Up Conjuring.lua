
Debug.SetAIName("WCS 2006")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)

Debug.SetPlayerInfo(0,1400,0,0)
Debug.SetPlayerInfo(1,4500,0,0)

--[[message
Reproduces a Duel Puzzle from "Ultimate Masters: World Championship 2006", using Arcana Knight Joker.
	
	
	Your Starting LP: 1400
	Opponent's Starting LP: 4500
	Complexity: 4/10.
	Objective: Win this turn.
]]


Debug.AddCard(00423585,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(64788463,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(25652259,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(90876561,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(74848038,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(24094653,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(70828912,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(32807846,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(00423585,0,0,LOCATION_MZONE,2,POS_FACEUP_DEFENSE)
Debug.AddCard(04335645,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(34460239,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(06150044,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win this turn")
aux.BeginPuzzle()

--[[
Solution:
-Activate Summoner Monk's effect, discarding Monster Reincarnation, 
summoning Queen's Knight to the field
-Activate Generation Shift and use its effect on Summon Monk to put a 
Summon Monk in your hand from your deck
-Activate Reinforcements of the Army and get King's Knight from your deck
-Summon King's Knight and activate his effect to get Jack's Knight on the 
field
-Use Polymerization to summon Arcana Knight Joker in attack position with 
all your knights on the field
-Use Premature Burial to summon Jack's Knight to the field
-Go into battle phase
-Attack Newdoria with Jack's Knight and use Arcana Knight Joker's effect 
to disable Newdoria by discarding Summon Monk
-Attack with Arcana Knight Joker to win
]]