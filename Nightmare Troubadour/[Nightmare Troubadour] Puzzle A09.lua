--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! Nightmare Troubadour"


Your Starting LP: 1000
Opponent's Starting LP: 1000
Complexity: ?/10

Objective: Win this Turn
]]


Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,1000,0,0)
Debug.SetPlayerInfo(1,1000,0,0)
Debug.SetAIName("Nightmare Troubadour")

--Monster Zones (yours)
Debug.AddCard(90980792,0,0,LOCATION_MZONE,1,POS_FACEDOWN_DEFENSE,true)
Debug.AddCard(39168895,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(41872150,0,0,LOCATION_MZONE,3,POS_FACEDOWN_DEFENSE,true)

--Spell & Trap Zones (yours)
Debug.AddCard(70046172,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(52503575,0,0,LOCATION_SZONE,2,POS_FACEUP)
Debug.AddCard(511000824,0,0,LOCATION_SZONE,3,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(23995346,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (opponent's)
Debug.AddCard(82003859,1,1,LOCATION_SZONE,1,POS_FACEUP)
Debug.AddCard(20374520,1,1,LOCATION_SZONE,2,POS_FACEUP)
Debug.AddCard(97342942,1,1,LOCATION_SZONE,3,POS_FACEUP)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()


--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

Flip summon Swarm of Locusts and select Begone, Knave!
Flip summon Dark Jeroid and select Swarm of Locusts.
Activate Rush Recklessly and select Swarm of Locusts.
Activate Ring of Destruction and select Swarm of Locusts. (100/100)
Switch to End Phase and tribute Dark Jeroid. (100/0)
]]
