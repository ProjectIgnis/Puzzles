--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 5000
Opponent's Starting LP: 5200
Complexity: 6/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,5000,0,0)
Debug.SetPlayerInfo(1,5200,0,0)
Debug.SetAIName("Professor Sartyr")

--Hand (yours)
Debug.AddCard(16222645,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(9373534,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(43434803,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(38699854,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(242146,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(4041838,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(9076207,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(14618326,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (yours)
Debug.AddCard(41006930,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(31560081,0,0,LOCATION_MZONE,3,POS_FACEDOWN_DEFENSE,true)

--Spell & Trap Zones (yours)
Debug.AddCard(97342942,0,0,LOCATION_SZONE,2,POS_FACEUP)

--Monster Zones (opponent's)
Debug.AddCard(78658564,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(504700038,1,1,LOCATION_MZONE,3,POS_FACEUP_DEFENSE,true)

--Spell & Trap Zones (opponent's)
Debug.AddCard(4206964,1,1,LOCATION_SZONE,2,POS_FACEDOWN)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

-Ballista of Rampart Smashing on Spirit Reaper.
-Summon Ninja Grandmaster Sasuke.
-The Shallow Grave, select Ninja Grandmaster Sasuke.
-Use Book of Taiyou on a monster set by The Shallow Grave.
-Flip Magician of Faith and select Book of Taiyou.
-Use Book of Taiyou on the last face down monster.
-Fuhma on Ninja Grandmaster Sasuke.
-Attack Spirit Reaper with the 2 ninja's.
-Tribute Ninja Grandmaster Sasuke (Ectoplasmer).
]]