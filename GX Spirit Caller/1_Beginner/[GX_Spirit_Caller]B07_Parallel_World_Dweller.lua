--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 1900
Opponent's Starting LP: 500
Complexity: 2/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,1900,0,0)
Debug.SetPlayerInfo(1,500,0,0)
Debug.SetAIName("Professor Sartyr")

--Hand (yours)
Debug.AddCard(17375316,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(70828912,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(19613556,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(79759861,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(68073522,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(73891874,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (yours)
Debug.AddCard(30241314,0,0,LOCATION_SZONE,2,POS_FACEDOWN)

--Hand (opponent's)
Debug.AddCard(21593987,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(97590747,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(53129443,1,1,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(11224103,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (opponent's)
Debug.AddCard(30606547,1,1,LOCATION_SZONE,2,POS_FACEUP)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

-Activate Confiscation. You look at their hand and discard Dark Hole.
-Activate Heavy Storm. Your Macro Cosmos and their The Dark Door are destroyed.
-Activate Tribute to the Doomed. You discard Soul Absorption to destroy your White-Horned Dragon.
-Activate Premature Burial. You pay 800 LP to revive White-Horned Dragon.
-White-Horned Dragon's effect activates. You remove Dark Hole and The Dark Door to increase White-Horned Dragon's ATK by 600.
-Enter the Battle Phase.
-Attack Horus the Black Flame Dragon LV6 with White-Horned Dragon.
]]
