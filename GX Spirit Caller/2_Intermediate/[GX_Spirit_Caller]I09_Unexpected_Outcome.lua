--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 1000
Opponent's Starting LP: 3700
Complexity: 2/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,1000,0,0)
Debug.SetPlayerInfo(1,3700,0,0)
Debug.SetAIName("Professor Sartyr")

--Hand (yours)
Debug.AddCard(31036355,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(79759861,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(102380,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(94004268,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(47606319,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(504700182,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Spell & Trap Zones (yours)
Debug.AddCard(27174286,0,0,LOCATION_SZONE,2,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(13039848,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE,true)
Debug.AddCard(13039848,1,1,LOCATION_MZONE,3,POS_FACEUP_DEFENSE,true)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

-Special Summon Lava Golem by sacrificing both Giant Soldier of Stone.
-Activate Tribute to the Doomed.
-Discard Gearfried the Iron Knight to target and destroy Lava Golem.
-Special Summon Gigantes by removing Gearfried from play in your graveyard.
-Activate Return from the Different Dimension. (500 / 3700)
-Special Summon Gearfried the Iron Knight. (500 / 3700)
-Attack with both remaining monsters for game. (500 / 0)
]]