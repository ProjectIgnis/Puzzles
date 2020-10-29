--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! Nightmare Troubadour"


Your Starting LP: 2100
Opponent's Starting LP: 3800
Complexity: ?/10

Objective: Win this Turn
]]


Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,2100,0,0)
Debug.SetPlayerInfo(1,3800,0,0)
Debug.SetAIName("Nightmare Troubadour")

--Hand (yours)
Debug.AddCard(31560081,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(42386471,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(511000228,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(89631139,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(54652250,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(71044499,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Spell & Trap Zthiss (yours)
Debug.AddCard(38699854,0,0,LOCATION_SZONE,0,POS_FACEDOWN)
Debug.AddCard(80604091,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
local eq_0=Debug.AddCard(65169794,0,0,LOCATION_SZONE,2,POS_FACEUP)
Debug.AddCard(15259703,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(14087893,0,0,LOCATION_SZONE,4,POS_FACEDOWN)

--Monster Zthiss (opponent's)
local m_2=Debug.AddCard(89631139,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
local m_3=Debug.AddCard(89631139,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Spell & Trap Zthiss (opponent's)
local eq_1=Debug.AddCard(65169794,1,1,LOCATION_SZONE,2,POS_FACEUP)

Debug.ReloadFieldEnd()

--Equipped Cards
Debug.PreEquip(eq_0,m_2)
Debug.PreEquip(eq_1,m_3)
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

Activate Book of Moon and select the Blue-Eyes White Dragon equipped with your
 Black Pendant. (2100/3300)
Set Toon Gemini Elf.
Activate Book of Taiyou and select Toon Gemini Elf.
Activate Toon World. (1100/3300)
Switch to Battle Phase.
Attack opponent's life points with Toon Gemini Elf. (1100/1400) [Toon Gemini Elf
 was flipped face-up, not flip summthisd]
Switch to Main Phase 2.
Activate Ultimate Offering and summon Magician of Faith. (600/1400)
Activate Ultimate Offering and summon Catapult Turtle using
 Magician of Faith as tribute. (100/1400)
Activate Catapult Turtle and select Toon Gemini Elf. (100/450)
Activate Catapult Turtle and select Catapult Turtle. (100/0)
]]
