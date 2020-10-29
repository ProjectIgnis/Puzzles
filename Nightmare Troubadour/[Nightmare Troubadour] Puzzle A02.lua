--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! Nightmare Troubadour"


Your Starting LP: 8000
Opponent's Starting LP: 2900
Complexity: ?/10

Objective: Win this Turn
]]



Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,2900,0,0)
Debug.SetAIName("Nightmare Troubadour")

--Hand (yours)
Debug.AddCard(42703248,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(61127349,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(37043180,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
Debug.AddCard(93013676,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Monster Zones (opponent's)
Debug.AddCard(23205979,1,1,LOCATION_MZONE,1,POS_FACEUP_DEFENSE,true)
local m_1=Debug.AddCard(15025844,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE,true)

--Spell & Trap Zones (opponent's)
local eq_0=Debug.AddCard(56747793,1,1,LOCATION_SZONE,2,POS_FACEUP)

Debug.ReloadFieldEnd()

--Equipped Cards
Debug.PreEquip(eq_0,m_1)
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()


--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

Activate Big Bang Shot and select Mystical Elf.
Activate Giant Trunade.
Activate Big Bang Shot and select Dimensional Warrior.
Attack Spirit Reaper with Dimensional Warrior. (8000/1500)
Attack opponent's life points with Maha Vailo. (8000/0)
]]
