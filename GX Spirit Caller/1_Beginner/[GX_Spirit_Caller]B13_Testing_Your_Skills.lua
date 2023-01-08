--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 1500
Opponent's Starting LP: 2000
Complexity: 2/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,1500,0,0)
Debug.SetPlayerInfo(1,2000,0,0)
Debug.SetAIName("Professor Sartyr")

--Hand (yours)
Debug.AddCard(14087893,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(60482781,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(42035044,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (yours)
Debug.AddCard(37580756,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(97077563,0,0,LOCATION_SZONE,3,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(78658564,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)
Debug.AddCard(34853266,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE,true)
Debug.AddCard(34853266,1,1,LOCATION_MZONE,1,POS_FACEUP_DEFENSE,true)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

-Attack Goblin Attack Force with Mystic Swordsman LV6.
-Activate Michizure to destroy Tsukuyomi.
-Activate Call of the Haunted to bring back Mystic Swordsman LV6.
-Attack with Mystic Swordsman LV6 the second Tsukuyomi.
-Attack directly with Panther Warrior tributing Mystic Swordsman LV6.

Another Method:

-Activate Book of Moon and select Goblin Attack Force.
-Enter the Battle Phase.
-Attack Goblin Attack Force with Mystic Swordsman LV6, the effect will activate 
(it doesn't matter whether you choose to put the card on top of the deck or not).
-Attack Tsukuyomi with Panther Warrior, using Mystic Swordsman LV6 as a Tribute.
-Activate Michizure, selecting the Tsukuyomi you aren't attacking.
-Activate Call of the Haunted to bring back Mystic Swordsman LV6.
-Attack directly with Mystic Swordsman LV6.
]]