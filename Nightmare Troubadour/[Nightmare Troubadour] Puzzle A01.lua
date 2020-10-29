--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! Nightmare Troubadour"


Your Starting LP: 2200
Opponent's Starting LP: 3200
Complexity: ?/10

Objective: Win this Turn
]]



Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,2200,0,0)
Debug.SetPlayerInfo(1,3200,0,0)
Debug.SetAIName("Nightmare Troubadour")

--Monster Zones (yours)
Debug.AddCard(58831685,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
Debug.AddCard(76812113,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(15303296,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (yours)
Debug.AddCard(22046459,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(22046459,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(22046459,0,0,LOCATION_SZONE,3,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(44203504,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
Debug.AddCard(58831685,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(91152256,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)

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
Activate Megamorph and select Harpie Lady.
Activate Megamorph and select Robotic Knight.
Switch to Battle Phase.
Attack opponent's Giant Red Seasnake with Harpie Lady. (2200/2400)
Attack opponent's Celtic Guardian with Giant Red Seasnake. (2200/200)
Attack opponent's Robotic Knight with Ryu-Kishin. (2200/0)
]]
