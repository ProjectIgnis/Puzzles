--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! Nightmare Troubadour"


Your Starting LP: 8000
Opponent's Starting LP: 1000
Complexity: ?/10

Objective: Win this Turn
]]


Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,1000,0,0)
Debug.SetAIName("Nightmare Troubadour")

--Hand (yours)
Debug.AddCard(34853266,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(14087893,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zthiss (yours)
Debug.AddCard(63519819,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Monster Zthiss (opponent's)
Debug.AddCard(89631139,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
Debug.AddCard(89631139,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(89631139,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()


--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

Activate Thousand-Eyes Restrict and select Blue-Eyes White Dragon.
Summon Tsukuyomi and select Thousand-Eyes Restrict.
Flip summon Thousand-Eyes Restrict.
Activate Thousand-Eyes Restrict and select Blue-Eyes White Dragon.
Switch to Battle Phase.
Attack Blue-Eyes White Dragon with Thousand-Eyes Restrict.
Activate Book of Moon and select Thousand-Eyes Restrict.
Attack opponent's life points with Tsukuyomi. (8000/0)
]]
