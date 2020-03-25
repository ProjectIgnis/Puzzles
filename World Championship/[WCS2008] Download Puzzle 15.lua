--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! World Championship 2008"

	Your Starting LP: 2500
	Opponent's Starting LP: 9000
	Complexity: 3/10.
	Objective: Win this turn.
]]
Debug.SetAIName("WCS 2008")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)
Debug.SetPlayerInfo(0,2500,0,0)
Debug.SetPlayerInfo(1,9000,0,0)

Debug.AddCard(89631139,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)

Debug.AddCard(30312361,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)

Debug.AddCard(36021814,0,0,LOCATION_DECK,0,POS_FACEDOWN)

Debug.AddCard(97077563,0,0,LOCATION_SZONE,2,POS_FACEDOWN)

Debug.AddCard(36021814,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(36021814,0,0,LOCATION_GRAVE,0,POS_FACEUP) 
Debug.AddCard(43237273,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(43237273,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(43237273,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(72426662,0,0,LOCATION_GRAVE,0,POS_FACEUP)


Debug.AddCard(30312361,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(23557835,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(12247206,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(31036355,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(07672244,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(68073522,0,0,LOCATION_HAND,0,POS_FACEDOWN)


Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[Solution
1) Activate Soul Absorbtion.
2) Remove King of the Skull Servants with Phantom of Chaos.
3) Activate Creature Swap.
4) Activate Call of the Haunted, special summoning King of the Skull Servants.
5) Activate Inferno Reckless Summon.
6) Summon Phantom of Chaos.
7) Remove Neo-Spacian Dark Panther, copy Phantom of Chaos with its effect.
8) Repeat step 7 twice more.
9) Copy Phantom again and remove Demise, King of Armageddon.
10) Use Demise's effect.
11) Activate Dimension Fusion.
12) Activate Shien's Spy, targeting King of the Skull Servants.
13) Have all three Dark Panthers copy King of the Skull Servants.
14) Attack the King of Skull Servants with the King of Armageddon. DO NOT revive King by his effect.
15) Attack with all three Dark Panthers for game.

]]