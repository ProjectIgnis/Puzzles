--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! Nightmare Troubadour"


Your Starting LP: 8000
Opponent's Starting LP: 5000
Complexity: ?/10

Objective: Win this Turn
]]



Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,5000,0,0)
Debug.SetAIName("Nightmare Troubadour")

--Hand (yours)
Debug.AddCard(74848038,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(49010598,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(71453557,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(31036355,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(17814387,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(25774450,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(511000821,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(18318842,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
Debug.AddCard(95174353,0,0,LOCATION_MZONE,2,POS_FACEDOWN_DEFENSE,true)
Debug.AddCard(66362965,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)

--Monster Zones (opponent's)
Debug.AddCard(13945283,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE,true)

--Spell & Trap Zones (opponent's)
Debug.AddCard(44656491,1,1,LOCATION_SZONE,2,POS_FACEUP)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()


--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

Activate Cathedral of Nobles.
Set Divine Wrath.
Flip summon Ameba.
Activate Mystic Box, select Wall of Illusion, then select Ameba.
*CHAIN* Divine Wrath by discarding Creature Swap.
Activate Autonomous Action Unit and select Wall of Illusion. (6500/5000)
Activate Monster Reincarnation and select Ameba by discarding Reinforcements.
Activate Abyss Soldier and select Messenger of Peace by discarding Ameba.
Switch to Battle Phase.
Attack opponent's life points with Abyss Soldier. (6500/3200)
Attack opponent's life points with Wall of Illusion. (6500/2200)
Attack opponent's life points with The Fiend Megacyber. (6500/0)
]]
