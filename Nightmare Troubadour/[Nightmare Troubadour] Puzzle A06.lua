--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! Nightmare Troubadour"


Your Starting LP: 8000
Opponent's Starting LP: 6600
Complexity: ?/10

Objective: Win this Turn
]]


Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,6600,0,0)
Debug.SetAIName("Nightmare Troubadour")

--Hand (yours)
Debug.AddCard(13429800,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(28279543,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(89631139,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(31560081,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
Debug.AddCard(11384280,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (yours)
Debug.AddCard(85562745,0,0,LOCATION_SZONE,0,POS_FACEDOWN)
Debug.AddCard(14087893,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(65169794,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(65169794,0,0,LOCATION_SZONE,3,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(70781052,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()


--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

Activate Dark Room of Nightmare.
Activate Book of Moon and select Summoned Skull.
Summon Great White.
Activate Black Pendant and select Great White.
Activate Black Pendant and select Great White.
Switch to Battle Phase.
Attack Summoned Skull with Cannon Soldier.
Attack opponent's life points with Magician of Faith. (8000/6300)
Attack opponent's life point with Great White. (8000/3700)
Switch to Main Phase 2.
Activate Cannon Soldier and select Magician of Faith. (8000/2900)
Activate Cannon Soldier and select Great White. (8000/500)
Activate Cannon Soldier and select Cannon Soldier. (8000/0)
]]
