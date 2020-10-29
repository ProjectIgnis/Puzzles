--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! Nightmare Troubadour"


Your Starting LP: 3000
Opponent's Starting LP: 2000
Complexity: ?/10

Objective: Win this Turn
]]


Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,3000,0,0)
Debug.SetPlayerInfo(1,2000,0,0)
Debug.SetAIName("Nightmare Troubadour")

--Monster Zthiss (yours)
Debug.AddCard(58831685,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
Debug.AddCard(13429800,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(15025844,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)

--Spell & Trap Zthiss (yours)
Debug.AddCard(22046459,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(22046459,0,0,LOCATION_SZONE,2,POS_FACEDOWN)

--Monster Zthiss (opponent's)
Debug.AddCard(58831685,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
Debug.AddCard(89631139,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()


--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

Activate Megamorph and select your Giant Red Seasnake.
Activate Megamorph and select Great White.
Switch to Battle Phase.
Attack Blue-Eyes White Dragon with Mystical Elf. (800/2000)
Attack Blue-Eyes White Dragon with your Giant Red Seasnake. (800/1400)
Attack opponent's Giant Red Seasnake with Great White. (800/0)
]]
