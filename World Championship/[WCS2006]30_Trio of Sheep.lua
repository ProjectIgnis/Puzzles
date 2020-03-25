--[[message
Reproduces a Duel Puzzle from "Ultimate Masters: World Championship 2006"
	
	
	Your Starting LP: 1000
	Opponent's Starting LP: 4000
	Complexity: 3/10.
	Objective: Win this turn.
]]
Debug.SetAIName("WCS 2006")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)

Debug.SetPlayerInfo(0,1000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

Debug.AddCard(74848038,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(69162969,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(80604091,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(64681432,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(21593977,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(08794435,0,0,LOCATION_HAND,0,POS_FACEDOWN)

Debug.AddCard(02792265,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(30190809,0,0,LOCATION_MZONE,3,POS_FACEUP_DEFENSE)
Debug.AddCard(73915052,1,1,LOCATION_MZONE,1,POS_FACEUP_DEFENSE)
Debug.AddCard(73915052,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE)
Debug.AddCard(73915052,1,1,LOCATION_MZONE,3,POS_FACEUP_DEFENSE)

Debug.AddCard(29843091,0,0,LOCATION_SZONE,2,POS_FACEDOWN)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win this turn.")
aux.BeginPuzzle()

--[[
Solution:

-Activate Lightning Vortex by discarding Makyura the Destructor
-Activate Ultimate Offering from your hand (don't use its effect yet)
-Activate Monster Reincarnation, discarding Maju Garzett, and get Makyura the Destructor from the graveyard
-Summon Makyura the Destructor in attack mode and change Gear Golem the Moving Fortress to attack mode
-Go to battle phase
-Attack with all three monsters
-Go to Main Phase 2
-Activate Ojama Trio
-Activate Ultimate Offering's effect
-Summon Crush D. Gandra and activate its effect (destroying all monsters to win)

]]