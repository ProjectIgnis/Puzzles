--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 100
Opponent's Starting LP: 4200
Complexity: 2+/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,100,0,0)
Debug.SetPlayerInfo(1,4200,0,0)
Debug.SetAIName("Professor Sartyr")

--Hand (yours)
Debug.AddCard(75390004,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(79870141,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(511003009,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(17375316,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(84808313,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(40374923,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (yours)
Debug.AddCard(80161395,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(511003023,0,0,LOCATION_SZONE,3,POS_FACEUP)

--Hand (opponent's)
Debug.AddCard(40640057,1,1,LOCATION_HAND,0,POS_FACEDOWN)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

-Activate Big Evolution Pill, sacrificing Mammoth Graveyard.
-With the effect of Big Evolution Pill you can summon Megazowler without Tribute.
-Activate Mystik Wok, sacrificing Megazowler to gain 2000 LP by selecting DEF.
-Activate Confiscation, paying 1000 LP to look at your opponent's hand and discard the only card in it - Kuriboh.
-Activate Ultimate Offering, paying 500 LP to summon Mad Sword Beast.
-Activate Ultimate Offering again, paying 500 LP (and using Big Evolution Pill) to summon Ultimate Tyranno.
-Use Confiscation to make the opponent discard Kuriboh.
-Enter the Battle Phase.
-Attack them directly with Mad Sword Beast and Ultimate Tyranno.
]]
