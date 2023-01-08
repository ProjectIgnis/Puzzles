--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 3000
Opponent's Starting LP: 3000
Complexity: 1+/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,3000,0,0)
Debug.SetPlayerInfo(1,3000,0,0)
Debug.SetAIName("Professor Sartyr")

--Hand (yours)
Debug.AddCard(23557835,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(28279543,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Banished (yours)
Debug.AddCard(89631142,0,0,LOCATION_REMOVED,0,POS_FACEUP)

--Monster Zones (yours)
Debug.AddCard(89631142,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(89631142,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (yours)
Debug.AddCard(53582587,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(36261276,0,0,LOCATION_SZONE,3,POS_FACEDOWN)

--Banished (opponent's)
Debug.AddCard(89631142,1,1,LOCATION_REMOVED,0,POS_FACEUP)

--Monster Zones (opponent's)
Debug.AddCard(62180201,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

-Activate Interdimensional Matter Transporter to remove one of your Blue-Eyes White Dragons from play.
-Sacrifice the other Blue-Eyes White Dragon to summon Curse of Dragon.
-Activate Torrential Tribute, which destroys Curse of Dragon and The Wicked Dreadroot.
-Activate Dimension Fusion, paying 2000 LP to summon all monsters removed from play. (1000/3000) 
-Summon 2 Blue-Eyes White Dragons in ATK mode, while your opponent summons their Blue-Eyes White Dragon.
-Enter the Battle Phase.
-Attack their Blue-Eyes White Dragon with your Blue-Eyes White Dragon (both are destroyed). 
-Attack them directly with the remaining Blue-Eyes White Dragon. (1000/0)
]]