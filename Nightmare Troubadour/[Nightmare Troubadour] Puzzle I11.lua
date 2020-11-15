--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! Nightmare Troubadour"


Your Starting LP: 8000
Opponent's Starting LP: 6000
Complexity: ?/10

Objective: Win this Turn
]]


Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,6000,0,0)
Debug.SetAIName("Nightmare Troubadour")

--Hand (yours)
Debug.AddCard(47355498,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(10012614,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(25262697,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(29228529,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(43641473,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(98792570,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(64801562,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(403847,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(61127349,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zthiss (yours)
Debug.AddCard(88472456,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
Debug.AddCard(88472456,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Spell & Trap Zthiss (yours)
Debug.AddCard(29843091,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.ShowHint("Win in this turn!")
Debug.ReloadFieldEnd()
aux.BeginPuzzle()


--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

Summon Gravekeeper's Assailant.
Activate Spell Reproduction and select Heart of Clear Water by discarding
 Banner of Courage and Tailor of the Fickle.
Activate Ojama Trio.
Activate Heart of Clear Water and select Ojama Token.
Activate Necrovalley.
Switch to Battle Phase.
Attack the equipped Ojama Token with Gravekeeper's Assailant and
 switch it to attack posistion. (8000/4000)
Attack the equipped Ojama Token with Zombyra the Dark. (8000/1900)
Attack the equipped Ojama Token with Zombyra the Dark. (8000/0)
]]
