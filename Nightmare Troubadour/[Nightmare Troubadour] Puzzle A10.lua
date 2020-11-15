--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! Nightmare Troubadour"


Your Starting LP: 4500
Opponent's Starting LP: 5400
Complexity: ?/10

Objective: Win this Turn
]]


Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,4500,0,0)
Debug.SetPlayerInfo(1,5400,0,0)
Debug.SetAIName("Nightmare Troubadour")

--Hand (yours)
Debug.AddCard(6979239,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(14087893,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(51394546,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(95194279,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(50287060,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(99517131,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zthiss (yours)
Debug.AddCard(61528025,0,0,LOCATION_MZONE,1,POS_FACEUP_DEFENSE,true)
Debug.AddCard(54652250,0,0,LOCATION_MZONE,2,POS_FACEDOWN_DEFENSE,true)

--Spell & Trap Zthiss (yours)
Debug.AddCard(511000821,0,0,LOCATION_SZONE,0,POS_FACEUP)
Debug.AddCard(61705417,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(61705417,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(61705417,0,0,LOCATION_SZONE,3,POS_FACEDOWN)

--GY (opponent's)
Debug.AddCard(12482652,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(84740193,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(98374133,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(69162969,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(23842445,0,1,LOCATION_GRAVE,0,POS_FACEUP) --DO NOT EDIT OWNERSHIP!
Debug.AddCard(25769732,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(77007920,1,1,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zthiss (opponent's)
Debug.AddCard(61528025,1,1,LOCATION_MZONE,1,POS_FACEUP_DEFENSE,true)
Debug.AddCard(77585513,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Spell & Trap Zthiss (opponent's)
Debug.AddCard(85742772,1,1,LOCATION_SZONE,2,POS_FACEUP)

Debug.ReloadFieldEnd()
Debug.ShowHint("What is your Nitro Unit doing in the Opponent's Grave?!")
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()


--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

Summon Archfiend of Gilfer using your Banisher of Light as tribute.
Activate Book of Moon and select Jinzo.
Activate Graverobber and select Invigoration.
Activate Graverobber and select Lightning Vortex.
Activate Graverobber and select Nitro Unit.
Activate Lightning Vortex by discarding Woodland Sprite. (2500/5400)
Activate Dimension Distortion and select Woodland Sprite.
Set The Spell Absorbing Life.
Activate The Spell Absorbing Life. (4100/5400)
Activate Invigoration and select Woodland Sprite. (2100/5400)
Activate Nitro Unit and select Jinzo. (100/5400)
Switch Man-Eater Bug to Attack Position.
Switch to Battle Phase.
Attack Jinzo with Archfiend of Gilfer. (100/3000)
Attack opponent's life points with Woodland Sprite. (100/1700)
Attack opponent's life points with Man-Eater Bug. (100/1250)
Switch to Main Phase 2.
Activate Woodland Sprite and select Invigoration. (100/750)
Set Cemetary Bomb.
Activate Cemetary Bomb. (100/0)
]]
