--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 5000
Opponent's Starting LP: 5000
Complexity: 3+/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,5000,0,0)
Debug.SetPlayerInfo(1,5000,0,0)
Debug.SetAIName("Professor Sartyr")

--Hand (yours)
Debug.AddCard(303660,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(18144507,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(19613556,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(74131780,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(79759861,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(14087893,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(77585513,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)
Debug.AddCard(74677422,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (yours)
Debug.AddCard(53582587,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(83887306,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(504700059,0,0,LOCATION_SZONE,2,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(77585513,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)
Debug.AddCard(74677422,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (opponent's)
Debug.AddCard(53582587,1,1,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(56120475,1,1,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(83887306,1,1,LOCATION_SZONE,1,POS_FACEDOWN)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

-Equip Amplifier to enemy Jinzo.
-Use Heavy Storm.
-Summon Exiled Force and do not activate effect.
-Use Tribute to the Doomed to destroy enemy Red Eyes Black Dragon (discard either card).
-All monsters attack directly.
]]