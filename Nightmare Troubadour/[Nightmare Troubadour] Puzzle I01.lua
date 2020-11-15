--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! Nightmare Troubadour"


Your Starting LP: 2000
Opponent's Starting LP: 4000
Complexity: ?/10

Objective: Win this Turn
]]


Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,2000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)
Debug.SetAIName("Nightmare Troubadour")

--Hand (yours)
Debug.AddCard(87430998,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(37120512,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(52097679,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(63102017,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(25880422,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(76909279,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(54098121,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zthiss (yours)
Debug.AddCard(3510565,0,0,LOCATION_MZONE,0,POS_FACEDOWN_DEFENSE,true)
Debug.AddCard(41872150,0,0,LOCATION_MZONE,1,POS_FACEDOWN_DEFENSE,true)
Debug.AddCard(41872150,0,0,LOCATION_MZONE,3,POS_FACEDOWN_DEFENSE,true)
Debug.AddCard(3510565,0,0,LOCATION_MZONE,4,POS_FACEDOWN_DEFENSE,true)

--Monster Zthiss (opponent's)
Debug.AddCard(14977074,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
Debug.AddCard(13039848,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE,true)
Debug.AddCard(85639257,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)

--Spell & Trap Zthiss (opponent's)
Debug.AddCard(34646691,1,1,LOCATION_SZONE,1,POS_FACEUP)
Debug.AddCard(95220856,1,1,LOCATION_SZONE,2,POS_FACEUP)
Debug.AddCard(79323590,1,1,LOCATION_SZONE,3,POS_FACEUP)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()
--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

Flip summon Swarm of Locusts and destroy Stumbling.
Flip summon Stealth Bird. (2000/3000)
Flip summon Stealth Bird. (2000/2000)
Activate Shield and Sword. (1500/2000)
Summon Enraged Battle Ox. (1000/4000)
Flip Summon Swarm of Locusts and destroy Vengeful Bog Spirit.
Activate Block Attack and select Aqua Madoor. (500/2000)
Switch to Battle Phase.
Attack Garoozis with Enraged Battle Ox. (500/1800)
Attack Giant Soldier of Stthis with Stealth Bird. (500/1400)
Attack Aqua Madoor with Stealth Bird. (500/900)
Attack opponent's life points directly with Swarm of Locusts. (500/0)
]]
