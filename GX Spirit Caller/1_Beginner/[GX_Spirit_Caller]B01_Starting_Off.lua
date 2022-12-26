--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 1500
Opponent's Starting LP: 1400
Complexity: 1/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,1500,0,0)
Debug.SetPlayerInfo(1,1400,0,0)
Debug.SetAIName("Professor Sartyr")

--Extra Deck (yours)
Debug.AddCard(64599569,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(3659803,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(31036355,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(26439287,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(7359741,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(7359741,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(70095154,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(70095154,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (opponent's)
Debug.AddCard(89631142,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

-Activate Overload Fusion, fusing Cyber Dragon and only one other Machine in your Graveyard to create Chimeratech Overdragon.
-Activate Creature Swap. You give them Chimeratech Overdragon and they give you Blue-Eyes White Dragon.
-Enter the Battle Phase.
-Attack Chimeratech Overdragon with Blue-Eyes White Dragon. (1500/0)
]]