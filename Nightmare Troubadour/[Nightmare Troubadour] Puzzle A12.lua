--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! Nightmare Troubadour"


Your Starting LP: 1500
Opponent's Starting LP: 8000
Complexity: ?/10

Objective: Win this Turn
]]


Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,1500,0,0)
Debug.SetPlayerInfo(1,8000,0,0)
Debug.SetAIName("Nightmare Troubadour")

--Hand (yours)
Debug.AddCard(86327225,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(60365591,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(16226786,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(93920745,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(88240808,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(69456283,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (yours)
Debug.AddCard(30113682,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
Debug.AddCard(89631139,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (yours)
Debug.AddCard(36468556,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(83133491,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(43434803,0,0,LOCATION_SZONE,3,POS_FACEDOWN)

--GY (opponent's)
Debug.AddCard(94773007,1,1,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (opponent's)
Debug.AddCard(2851070,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
Debug.AddCard(78613627,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()


--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

Activate Shinato's Ark, select Judge Man and Night Assailant, select
 Defense Position, and select Penguin Soldier.
Summon Penguin Soldier.
Activate The Shallow Grave and select Kycoo the Ghost Destroyer.
Activate Ceasefire. (1500/5000)
Switch to Battle Phase.
Attack Jirai Gumo with Penguin Soldier.
Attack Des Kangaroo with Blue-Eyes White Dragon. (1500/3500)
Activate Zero Gravity.
Attack Reflect Bounder with Shinato, King of a Higher Plane. (1500/1800)
Attack opponent's life points with Kycoo, the Ghost Destroyer. (1500/0)
]]
