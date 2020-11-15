--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! Nightmare Troubadour"


Your Starting LP: 8000
Opponent's Starting LP: 6400
Complexity: ?/10

Objective: Win this Turn
]]


Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,6400,0,0)
Debug.SetAIName("Nightmare Troubadour")

--Hand (yours)
Debug.AddCard(49064413,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(30208479,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(30208479,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(30208479,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(64631466,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(46986414,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(38033121,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Spell & Trap Zthiss (yours)
Debug.AddCard(69035382,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(41426869,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(69035382,0,0,LOCATION_SZONE,3,POS_FACEDOWN)

--Monster Zthiss (opponent's)
Debug.AddCard(67284908,1,1,LOCATION_MZONE,1,POS_FACEUP_DEFENSE,true)
Debug.AddCard(89631139,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()


--[[
Activate Black Illusion Ritual and select Relinquished by discarding
 Dark Magician.
Activate Relinquished and select Labyrinth Wall.
Activate Contract with the Abyss and select The Masked Beast by discarding
 Magician of Black Chaos.
Activate Contract with the Abyss and select Magician of Black Chaos
 by discarding Magician of Black Chaos.
Summon Dark Magician Girl using Magician of Black Chaos as tribute.
Switch to Battle Phase.
Attack Blue-Eyes White Dragon with Relinquished. (5000/3400)
Attack Blue-Eyes White Dragon with The Masked Beast. (5000/3200)
Attack opponent's life points with Dark Magician Girl. (5000/0)
]]
