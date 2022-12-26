--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 1400
Opponent's Starting LP: 3400
Complexity: 3/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,1400,0,0)
Debug.SetPlayerInfo(1,3400,0,0)
Debug.SetAIName("Professor Sartyr")

--Hand (yours)
Debug.AddCard(46668237,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(51632798,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(70828912,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(68073522,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(79759861,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(61528025,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(87430998,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(9817927,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (yours)
Debug.AddCard(56594520,0,0,LOCATION_FZONE,0,POS_FACEUP)

--Monster Zones (opponent's)
Debug.AddCard(11224103,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

-Activate Tribute to the Doomed. Discard Fusilier Dragon, the Dual-Mode Beast and destroy Gyaku-Gire Panda.
-Activate the effect of Green Baboon, Defender of the Forest. Pay 1000 LP to Special Summon him in Attack Position.
-Normal Summon Banisher of the Light in Attack Position.
-Activate Soul Absorption.
-Activate Forest, destroying Gaia Power. It is removed from play by Banisher of the Light, and 
you regain 500 LP by the effect of Soul Absorption.
-Activate Premature Burial. Pay 800 LP to Special Summon Fusilier Dragon.
-Enter the Battle Phase.
-Attack Horus the Black Flame Dragon LV6 with either Fusilier Dragon or Green Baboon.
-Attack directly with your other monsters.
]]