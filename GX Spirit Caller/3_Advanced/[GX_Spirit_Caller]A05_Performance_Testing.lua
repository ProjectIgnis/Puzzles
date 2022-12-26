--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 100
Opponent's Starting LP: 8500
Complexity: 3+/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,100,0,0)
Debug.SetPlayerInfo(1,8500,0,0)
Debug.SetAIName("Professor Sartyr")

--Main Deck (yours)
Debug.AddCard(51945556,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(79759861,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(34187685,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(504700053,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(5318639,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(504700118,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (yours)
Debug.AddCard(83968380,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(53046408,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(98444741,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(5728014,0,0,LOCATION_SZONE,4,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(60246171,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(57062206,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

-Activate Mystical Space Typhoon. Target Jar of Greed.
-Chain A Rival Appears!. Designate Daitsu as target, then chain it to Emergency Provisions.
-Designate Jar of Greed, A Rival Appears! and Mystical Space Typhoon as targets.
-Chain it to Accumulated Fortune. (3100 / 8500)
-Special Summon Element Dragon to the field in attack mode.
-Activate Double Attack.
-Discard Zaborg the Thunder Monarch and target Element Dragon.
-Attack Soitsu with Black Luster Soldier - Envoy of the Beginning. (2100 / 5500)
-Attack Doitsu with Black Luster Soldier - Envoy of the Beginning. (2100 / 2600)
-Attack twice with Element Dragon for game. (2100 / 0)
]]