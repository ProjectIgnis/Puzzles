--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! Nightmare Troubadour"


Your Starting LP: 8000
Opponent's Starting LP: 2000
Complexity: ?/10

Objective: Win this Turn
]]


Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,2000,0,0)
Debug.SetAIName("Nightmare Troubadour")

--Hand (yours)
Debug.AddCard(95515060,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(21900719,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(95638658,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(68427465,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(32022366,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(69243953,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(27324313,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Monster Zones (opponent's)
Debug.AddCard(78636495,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

Debug.ReloadFieldEnd()
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

Activate Twin Swords of Flashing Light - Tryce and select Oscillo Hero #2 by
 discarding Rod of Silence - Kay'est.
Activate Shooting Star Bow - Ceal and select Slate Warrior.
Activate Wicked-Breaking Flamberge - Baou and select Oscillo Hero #2 by
 discarding Butterfly Dagger - Elma.
Activate Gravity Axe - Grarl and select Oscillo Hero #2.
Switch to Battle Phase.
Attack Slate Warrior with Oscillo Hero #2. (8000/1400)
Attack opponent's life points with Oscillo Hero #2. (8000/0)
]]
