--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! Nightmare Troubadour"


Your Starting LP: 2000
Opponent's Starting LP: 4000
Complexity: ?/10

Objective: Win this Turn
]]


Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,5000,0,0)
Debug.SetAIName("Nightmare Troubadour")

--Hand (yours)
Debug.AddCard(42035044,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(70781052,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(89631139,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(16222645,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(16222645,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (yours)
Debug.AddCard(85562745,0,0,LOCATION_SZONE,0,POS_FACEDOWN)
Debug.AddCard(80168720,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(65169794,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(65169794,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(25880422,0,0,LOCATION_SZONE,4,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(89631139,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()


--[[
Summon Panther Warrior.
Activate Darkness Approaches and select Blue-Eyes White Dragon by discarding
 Summoned Skull and Blue-Eyes White Dragon.
Activate Dark Room of Nightmare.
Activate Black Pendant and equip Sasuke Samurai.
Activate Black Pendant and equip your stronger Sasuke Samurai.
Switch to Battle Phase.
Attack Blue-Eyes White Dragon with your weaker Sasuke Samurai.
Attack opponent's life points with your stronger Sasuke Samurai. (8000/3500)
Attack opponent's life points with Panther Warrior using your stronger
 Sasuke Samurai as tribute. (8000/0)
]]
