--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 1500
Opponent's Starting LP: 5300
Complexity: 2/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,1500,0,0)
Debug.SetPlayerInfo(1,5300,0,0)
Debug.SetAIName("Professor Sartyr")

--Hand (yours)
Debug.AddCard(51632798,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(70828912,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(69196160,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(97687912,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(79759861,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(74677422,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(94119974,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)

--Monster Zones (opponent's)
Debug.AddCard(11224103,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE,true)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

-Summon Fusilier Dragon, the Dual-Mode Beast without Tributes.
-Activate Tribute to the Doomed discarding Fairy Meteor Crush and destroy Fusilier Dragon, the Dual-Mode Beast
-Activate Premature Burial to revive Fusilier Dragon, the Dual-Mode Beast with it's complete ATK points.
-Enter to battle Phase.
-Attack Horus the Black Flame Dragon LV6 with Red-Eyes B. Dragon.
-Attack directly with Fusilier Dragon, the Dual-Mode Beast and Two-Headed King Rex.
-Go to Main Phase 2.
-Activate Thunder Crash destroying your own monsters to inflict 900 points of damage.
]]