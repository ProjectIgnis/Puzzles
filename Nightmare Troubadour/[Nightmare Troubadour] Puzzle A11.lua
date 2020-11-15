--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! Nightmare Troubadour"


Your Starting LP: 2000
Opponent's Starting LP: 4000
Complexity: ?/10

Objective: Win this Turn
]]


Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,10500,0,0)
Debug.SetAIName("Nightmare Troubadour")

--Extra Deck (yours)
Debug.AddCard(23995346,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(27134689,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(98502113,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(89631139,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(89631139,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(89631139,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(88819587,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(46657337,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(78193831,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(61166988,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(91512835,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(36354007,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(11091375,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (yours)
Debug.AddCard(31560081,0,0,LOCATION_MZONE,1,POS_FACEDOWN_DEFENSE,true)
Debug.AddCard(78613627,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(30451366,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (yours)
Debug.AddCard(63102017,0,0,LOCATION_SZONE,0,POS_FACEDOWN)
Debug.AddCard(74848038,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(24094653,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(97687912,0,0,LOCATION_SZONE,3,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(42364374,1,1,LOCATION_MZONE,0,POS_FACEUP_DEFENSE,true)
Debug.AddCard(51275027,1,1,LOCATION_MZONE,1,POS_FACEUP_DEFENSE,true)
Debug.AddCard(83986578,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE,true)
Debug.AddCard(23205979,1,1,LOCATION_MZONE,3,POS_FACEUP_DEFENSE,true)
Debug.AddCard(52077741,1,1,LOCATION_MZONE,4,POS_FACEUP_DEFENSE,true)

Debug.ReloadFieldEnd()
aux.BeginPuzzle()


--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

Activate Polymerization, select Blue-Eyes Ultimate Dragon, and select
 Mystical Sheep #1, Blue-Eyes White Dragon, and Blue-Eyes White Dragon.
Flip summon Magician of Faith and select Polymerization.
Activate Monster Reincarnation and select Mystical Sheep #1 by discarding
 Baby Dragon.
Activate Polymerization, select Dark Paladin, and select Mystical Sheep #1
 and Buster Blader.
Summon Blue-Eyes White Dragon using Magician of Faith and Des Kangaroo
 as tribute.
Activate Stop Defense and select Obnoxious Celtic Guard.
Activate Fairy Meteor Crush and select Blue-Eyes Ultimate Dragon.
Switch to Battle Phase.
Attack Obnoxious Celtic Guard with Blue-Eyes White Dragon. (8000/8900)
Attack Obnoxious Celtic Guard with Dark Paladin. (8000/4400)
Attack The Unhappy Maiden with Blue-Eyes Ultimate Dragon. (8000/0)
]
