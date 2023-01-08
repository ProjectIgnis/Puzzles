--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 100
Opponent's Starting LP: 12900
Complexity: 4/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,100,0,0)
Debug.SetPlayerInfo(1,12900,0,0)
Debug.SetAIName("Professor Sartyr")

--Hand (yours)
Debug.AddCard(77622396,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(21593987,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(21900719,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(79759861,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(55226821,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(62180201,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
local m_1=Debug.AddCard(511000228,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (yours)
Debug.AddCard(4178474,0,0,LOCATION_SZONE,2,POS_FACEDOWN)

--Spell & Trap Zones (opponent's)
local t_1=Debug.AddCard(504700050,1,1,LOCATION_SZONE,2,POS_FACEUP)

Debug.ReloadFieldEnd()

--Nightmare Wheel Targets
Debug.PreSetTarget(t_1,m_1)

Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

-Activate "Raigeki Break", discarding "Tribute to the Doomed" and selecting "Shadow Spell".
-Set "Makyura the Destructor".
-Tribute "Makyura the Destructor" with the effect of "Catapult Turtle".
-Activate "Reverse Trap".
-Activate "Twin Swords of Flashing Light - Tryce", discarding "Lightning Blade", equipping it to Dark Dreadroute".
-Attack twice with "Dark Dreadroute".
-Attack with "Catapult Turtle".
-Tribute "Dark Dreadroute" with the effect of "Catapult Turtle".
-Tribute "Catapult Turtle" with its own effect.
]]