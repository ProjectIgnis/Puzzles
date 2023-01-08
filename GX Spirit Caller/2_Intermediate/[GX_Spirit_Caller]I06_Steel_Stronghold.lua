--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 1500
Opponent's Starting LP: 1400
Complexity: 5/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,8500,0,0)
Debug.SetPlayerInfo(1,8000,0,0)
Debug.SetAIName("Professor Sartyr")

--Hand (yours)
Debug.AddCard(504700068,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(47529357,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(21900719,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(55713623,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(79759861,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(504700106,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (yours)
Debug.AddCard(77622396,0,0,LOCATION_SZONE,2,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(70095154,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)
Debug.AddCard(70095154,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
Debug.AddCard(83104731,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

-Activate Mistobody (Mist Body) and target Relinquished.
-Activate Twin Swords of Flashing Light - Tryce.
-Discard Tribute to the Doomed and target Relinquished.
-Absorb either Cyber Dragon with Relinquished.
-Activate Shrink and target Relinquished.
-Activate Axe of Despair and target Ancient Gear Golem. (8500 / 8000)
-Attack Ancient Gear Golem with Relinquished. (4500 / 4000)
-Attack Ancient Gear Golem once more with Relinquished for game. (500 / 0)
]]