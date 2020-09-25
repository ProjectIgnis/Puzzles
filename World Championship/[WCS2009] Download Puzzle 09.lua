--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh 5D's World Championship 2009: Stardust Accelerator"


Your Starting LP: 2000
Oppenent's Starting LP: 45450
Complexity: 5/10

Objective: Win this Turn
]]


Debug.SetAIName("Prove Your Skill")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)
Debug.SetPlayerInfo(0,2000,0,0)
Debug.SetPlayerInfo(1,45450,0,0)

--Extra Deck (yours)
Debug.AddCard(511000229,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(511000229,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(70902743,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(70902743,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(69031175,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(69031175,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(49003716,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(2009101,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(75498415,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(75498415,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(2009101,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(49003716,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(49003716,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (yours)
Debug.AddCard(80604091,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(46652477,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(7672244,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(55144522,0,0,LOCATION_SZONE,0,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(69031175,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()
