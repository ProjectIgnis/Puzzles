--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 1000
Opponent's Starting LP: 1400
Complexity: 2/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,1000,0,0)
Debug.SetPlayerInfo(1,1400,0,0)
Debug.SetAIName("Professor Sartyr")

--Hand (yours)
Debug.AddCard(14087893,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(22537443,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(2792265,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(32809211,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(31560081,0,0,LOCATION_MZONE,2,POS_FACEDOWN_DEFENSE,true)

--Spell & Trap Zones (yours)
Debug.AddCard(4178474,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(99517131,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(511000824,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(511002996,0,0,LOCATION_SZONE,4,POS_FACEUP)

--Monster Zones (opponent's)
Debug.AddCard(89631142,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(77585513,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (opponent's)
Debug.AddCard(85742772,1,1,LOCATION_SZONE,3,POS_FACEUP)
Debug.AddCard(72302403,1,1,LOCATION_SZONE,2,POS_FACEUP)
Debug.AddCard(40633297,1,1,LOCATION_SZONE,1,POS_FACEUP)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

-Activate Book of Moon and target Jinzo.
-Normal Summon Servant of Catabolism.
-Attack directly with Servant of Catabolism. (1000 / 700)
-Activate Ring of Destruction. (1000 / 700)
-Target Servant of Catabolism for game. (300 / 0)
]]