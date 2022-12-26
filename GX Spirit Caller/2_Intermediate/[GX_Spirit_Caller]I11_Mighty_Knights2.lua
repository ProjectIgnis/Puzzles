--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 1500
Opponent's Starting LP: 2000
Complexity: 3/10

Objective: Win this Turn


]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,1500,0,0)
Debug.SetPlayerInfo(1,2000,0,0)
Debug.SetAIName("Professor Sartyr")

--Hand (yours)
Debug.AddCard(64752646,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(64306248,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(64306248,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(13944422,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(79759861,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(36354008,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Spell & Trap Zones (yours)
Debug.AddCard(511003023,0,0,LOCATION_SZONE,2,POS_FACEUP)

--Monster Zones (opponent's)
Debug.AddCard(504700126,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)
Debug.AddCard(1995985,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
Debug.AddCard(64306248,1,1,LOCATION_MZONE,2,POS_FACEDOWN_DEFENSE,true)

--Spell & Trap Zones (opponent's) partially written by PryQ
local t_1=Debug.AddCard(56120475,1,1,LOCATION_SZONE,2,POS_FACEDOWN)
t_1:GetActivateEffect():SetCondition(function() return Duel.GetAttacker() and Duel.GetAttacker():IsAttackAbove(2500) end)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

-Normal Summon Fire Princess from your hand to the field. (1500 / 2000)
-Activate Ultimate Offering and summon Granadora. (2000 / 2000)
-Chain it to Ultimate Offering and summon Skull-Mark Ladybug. (1500 / 1500)
-Activate Ultimate Offering and summon Skull-Mark Ladybug. (1000 / 1500)
-Activate Ultimate Offering once more. (500 / 1500)
-Sacrifice both Skull-Mark Ladybugs to summon Gilford the Lightning.
-Attack Silent Swordsman LV3 with Granadora for game. (2500 / 0)
]]