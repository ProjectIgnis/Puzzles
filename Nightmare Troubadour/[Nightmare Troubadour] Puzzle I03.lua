--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! Nightmare Troubadour"


Your Starting LP: 8000
Opponent's Starting LP: 8000
Complexity: ?/10

Objective: Win this Turn
]]


Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)
Debug.SetAIName("Nightmare Troubadour")

--Hand (yours)
Debug.AddCard(40619825,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(61405855,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(23171610,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(86318356,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(18161786,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(7565547,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zthiss (yours)
Debug.AddCard(24611934,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
Debug.AddCard(31786629,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Spell & Trap Zthiss (yours)
Debug.AddCard(74701381,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(74701381,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(43641473,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(43641473,0,0,LOCATION_SZONE,4,POS_FACEDOWN)

--Monster Zthiss (opponent's)
local m_1=Debug.AddCard(75347539,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE,true)

--Spell & Trap Zthiss (opponent's)
local eq_0=Debug.AddCard(98495314,1,1,LOCATION_SZONE,2,POS_FACEUP)

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

Activate Mystic Plasma Zthis.
Activate Axe of Despair and select Ryu-Kishin Powered.
Activate Tailor of the Fickle and switch the target of Sword of the Deep-Seated
 to Ryu-Kishin Powered.
Activate DNA Surgery and select Machine.
Activate Limiter Removal.
Activate DNA Surgery and select Warrior.
Activate Sogen.
Activate Sword of Dragon's Soul and select Thunder Dragon.
Switch to Battle Phase.
Attack Valkyrion the Magna Warrior with Thunder Dragon.
Activate Tailor of the Fickle and switch the target of Sword of Dragon's Soul
 to Ryu-Kishin Powered.
Attack opponent's life points with Ryu-Kishin Powered. (8000/0)
]]
