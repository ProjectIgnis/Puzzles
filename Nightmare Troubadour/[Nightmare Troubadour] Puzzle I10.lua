--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! Nightmare Troubadour"


Your Starting LP: 1000
Opponent's Starting LP: 4500
Complexity: ?/10

Objective: Win this Turn
]]


Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,1000,0,0)
Debug.SetPlayerInfo(1,4500,0,0)
Debug.SetAIName("Nightmare Troubadour")

--Hand (yours)
Debug.AddCard(3797883,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(11091375,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(69243953,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(70828912,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(70781052,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zthiss (yours)
Debug.AddCard(16268841,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
Debug.AddCard(89631139,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(89631139,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)

--Spell & Trap Zthiss (yours)
Debug.AddCard(73079365,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(73079365,0,0,LOCATION_SZONE,2,POS_FACEDOWN)

--Monster Zthiss (opponent's)
Debug.AddCard(423705,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Spell & Trap Zthiss (opponent's)
Debug.AddCard(51481927,1,1,LOCATION_SZONE,1,POS_FACEUP)
Debug.AddCard(40633297,1,1,LOCATION_SZONE,2,POS_FACEUP)
Debug.AddCard(20644748,1,1,LOCATION_SZONE,3,POS_FACEUP)
Debug.AddCard(22359980,1,1,LOCATION_SZONE,4,POS_FACEUP)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()


--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

Summon Slot Machine using Blue-Eyes White Dragon and Blue-Eyes White Dragon
 as tribute.
Activate Butterfly Dagger - Elma and select Gearfried the Iron Knight. Then
 activate Butterfly Dagger - Elma. (1000/5000)
*CHAIN* Both the Gust and select both Spell Absorption and Mirror Wall.
Activate Premature Burial and select Blue-Eyes White Dragon. (200/5000)
Activate Butterfly Dagger - Elma and select Zolga.
Switch to Battle Phase.
Attack Gearfried the Iron Knight with Slot Machine. (200/4800)
Attack opponent's life points with Zolga. (200/2800)
Attack opponent's life points with Blue-Eyes White Dragon. (200/0)
