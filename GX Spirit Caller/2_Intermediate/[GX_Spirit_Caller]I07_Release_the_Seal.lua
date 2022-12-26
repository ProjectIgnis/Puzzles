--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 4200
Opponent's Starting LP: 4800
Complexity: 3/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,4200,0,0)
Debug.SetPlayerInfo(1,4800,0,0)
Debug.SetAIName("Professor Sartyr")

--Hand (yours)
Debug.AddCard(33396948,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(51632798,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(38699854,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(8124921,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(44519536,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(70903634,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(7902349,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (yours)
Debug.AddCard(504700163,0,0,LOCATION_MZONE,2,POS_FACEDOWN_DEFENSE,true)
Debug.AddCard(31560081,0,0,LOCATION_MZONE,3,POS_FACEDOWN_DEFENSE,true)

--Spell & Trap Zones (yours)
Debug.AddCard(5758500,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(4178474,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(23557835,0,0,LOCATION_SZONE,1,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(70903634,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)
Debug.AddCard(61528025,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE,true)
Debug.AddCard(7902349,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (opponent's)
Debug.AddCard(29549364,1,1,LOCATION_SZONE,3,POS_FACEUP)
Debug.AddCard(33950246,1,1,LOCATION_SZONE,2,POS_FACEUP)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

-Activate Raigeki Break.
-Discard Fusilier to destroy Royal Command.
-Flip summon Penguin Soldier.
-Return Banisher and either Exodia piece to opponent's hand.
-Normal summon Exodia the Forbidden One & flip summon Magician of Faith.
-Activate Soul Release to remove any Exodia piece in your graveyard from play. (4200 / 4800)
-Activate Dimension Fusion. (2200 / 4800)
-Special Summon Fusilier Dragon, the Dual-Mode Beast and Exodia Piece. (2200 / 4800)
-Attack opponent's Exodia piece with your own Exodia piece. (2200 / 4800)
-Attack with all remaining monsters for game. (2200 / 0)
]]