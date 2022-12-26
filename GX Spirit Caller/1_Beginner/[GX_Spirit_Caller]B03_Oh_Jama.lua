--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 100
Opponent's Starting LP: 9900
Complexity: 1/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,100,0,0)
Debug.SetPlayerInfo(1,9900,0,0)
Debug.SetAIName("Professor Sartyr")

--Hand (yours)
Debug.AddCard(79409334,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(511003009,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(84808313,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(79409334,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (yours)
Debug.AddCard(83133491,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(29843091,0,0,LOCATION_SZONE,1,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(2851070,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(2851070,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

-Activate Ojama Trio. Your opponent gains 3 Ojama Tokens.
-Activate Zero Gravity. The tokens switch to ATK mode.
-Activate Big Evolution Pill, sacrificing Black Stego as Tribute.
-With the effect of Big Evolution Pill you can summon Ultimate Tyranno without Tribute.
-Enter the Battle Phase.
-Attack the 3 tokens with Ultimate Tyranno.
]]
