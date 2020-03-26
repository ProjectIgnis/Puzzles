--Original Puzzle Name: QB017
--[[message
A simple puzzle with Penguin Soldier

Your Starting LP: 2600
Opponent's Starting LP: 2600
Complexity: 2/10.

Objective: Win this turn.
]]
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,3)
Debug.SetAIName("Pseudo AI")
Debug.SetPlayerInfo(0,2600,0,0)
Debug.SetPlayerInfo(1,2600,0,0)
Debug.AddCard(92219931,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(28297833,1,1,LOCATION_DECK,0,POS_FACEUP)
Debug.AddCard(5556668,0,0,LOCATION_HAND,0,POS_FACEUP)
Debug.AddCard(73125233,1,1,LOCATION_HAND,0,POS_FACEUP)
Debug.AddCard(83968380,0,0,LOCATION_SZONE,0,POS_FACEDOWN)
Debug.AddCard(83968380,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(22628574,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(44095762,1,1,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(5915629,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(94192409,0,0,LOCATION_SZONE,4,POS_FACEDOWN)
Debug.AddCard(93920745,0,0,LOCATION_MZONE,2,POS_FACEDOWN_DEFENSE)
Debug.AddCard(91133740,1,1,LOCATION_MZONE,2,POS_FACEDOWN_DEFENSE)
Debug.AddCard(71453557,0,0,LOCATION_HAND,1,POS_FACEUP)
Debug.AddCard(22835145,0,0,LOCATION_HAND,2,POS_FACEUP)
Debug.AddCard(4929256,0,0,LOCATION_HAND,3,POS_FACEUP)
Debug.AddCard(67441435,0,0,LOCATION_DECK,0,POS_FACEUP)
Debug.AddCard(60800381,0,0,LOCATION_EXTRA,0,POS_FACEUP)
Debug.AddCard(5556668,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(43385557,0,0,LOCATION_EXTRA,1,POS_FACEUP)
Debug.AddCard(46918794,0,0,LOCATION_GRAVE,1,POS_FACEUP)
Debug.ReloadFieldEnd()
aux.BeginPuzzle()

--[[Solution
1-Flip Summon Penguim Soldier, return Snowman Eater to the hand
2-Activate Fake Feather, discard Blackwing - Blizzard the Far North, target Simultaneous Loss
3-Tribute Summon Mobius, the Frost Monarch, destroy Mirror Force.
4-Activate Autonomous Action Unit, target Necroface
5-Attack directly

]]