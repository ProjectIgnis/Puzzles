--Original Puzzle Name: QB021
--[[message
A puzzle featuring Cyberdark Dragon and Future Fusion (pre-errata).

Your Starting LP: 100
Opponent's Starting LP: 7200
Complexity: 2/10.
Objective: Win this turn.
]]
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,3)
Debug.SetAIName("Pseudo AI")
Debug.SetPlayerInfo(0,100,0,0)
Debug.SetPlayerInfo(1,7200,0,0)

Debug.AddCard(89631139,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)

Debug.AddCard(41230939,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)

Debug.AddCard(03019642,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(89631139,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(89631139,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(70095154,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(70095154,0,0,LOCATION_DECK,0,POS_FACEDOWN)

Debug.AddCard(74848038,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(79759861,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(70278545,0,0,LOCATION_SZONE,3,POS_FACEDOWN)

Debug.AddCard(36870345,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(36870345,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(89631139,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(48568432,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(48568432,0,0,LOCATION_GRAVE,0,POS_FACEUP)

Debug.AddCard(77625948,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(48766543,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(17658803,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(511002997,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(03659803,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(71490127,0,0,LOCATION_HAND,0,POS_FACEDOWN)

Debug.AddCard(40418351,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(23995346,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(64599569,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)


Debug.ReloadFieldEnd()
aux.BeginPuzzle()

--[[Solution:
1-Tribute Summon Cyber Tech Alligator
2-Activate Tribute to the Doomed, discarding Luster Dragon 2, destroy Blue-Eyes White Dragon
3-Activate Pot of Generosity, returning Cyberdark Edge and Dragon's Mirror to the Deck
4-Activate Future Fusion pre-errata to Fusion Summon Chimeratech Overdragon, sending Cyber Dragon + Cyber dragon and two Cybderdark monsters from the deck to the GY.
5-Activate Overload Fusion to Fusion Summon Cyberdark Dragon by banishing its materials from the GY
6-Activate Cyberdark Dragon's effect, targetting Blue-Eyes White Dragon to equip
7-Attack Directly


]]