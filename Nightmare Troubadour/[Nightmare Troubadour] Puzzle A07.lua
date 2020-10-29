--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! Nightmare Troubadour"


Your Starting LP: 1000
Opponent's Starting LP: 3500
Complexity: ?/10

Objective: Win this Turn
]]


Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,1000,0,0)
Debug.SetPlayerInfo(1,3500,0,0)
Debug.SetAIName("Nightmare Troubadour")

--Hand (yours)
Debug.AddCard(97077563,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(21593987,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(61587183,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(93382620,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(17597059,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Monster Zones (opponent's)
Debug.AddCard(16899564,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
Debug.AddCard(16899564,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()


--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

Summon Executor - Makyura.
Set Call of the Haunted.
Switch to Battle Phase.
Attack Beautiful Headhuntress with Executor - Makyura.
Attack Beautiful Headhuntress with Byser Shock.
Activate Rope of Life.
Attack Beautiful Headhuntress with Byer Shock.
Activate Call of the Haunted and select Dark Scorpion - Chick the Yellow.
Attack opponent's life points with Dark Scorpion - Chick the Yellow, and return
 Call of the Haunted to your hand. (1000/2500)
Activate Call of the Haunted and select Dark Scorpion - Chick the Yellow.
Attack opponent's life points with Dark Scorpion - Chick the Yellow, and return
 Call of the Haunted to your hand. (1000/1500)
Activate Call of the Haunted and select Executor - Makyura.
Attack opponent's life points with Executor - Makyura. (1000/0)
]]
