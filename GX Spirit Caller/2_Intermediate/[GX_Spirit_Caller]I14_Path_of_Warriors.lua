--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 2500
Opponent's Starting LP: 8100
Complexity: 4/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,2500,0,0)
Debug.SetPlayerInfo(1,8100,0,0)
Debug.SetAIName("Professor Sartyr")

--Main Deck (yours)
Debug.AddCard(1184620,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(1184620,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(2460565,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(1184620,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(39719977,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(31036355,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(25774450,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(4335645,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (yours)
Debug.AddCard(511000824,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(12247206,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(65830223,0,0,LOCATION_SZONE,1,POS_FACEDOWN)

--Main Deck (opponent's)
Debug.AddCard(70781052,1,1,LOCATION_DECK,0,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(70781052,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
Debug.AddCard(70781052,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(73216412,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

-Activate Coffin Seller then Ring of Destruction.
-Target and destroy your opponent's Worm Drake. (1100 / 6400)
-Activate Creature Swap to exchange Newdoria for either of the Summoned Skull.
-Normal Summon Marauding Captain from your hand to the field.
-Special Summon Kojikocy and activate Inferno Reckless Summon.
-Activate Delta Attacker, then attack directly with all copies of Kojikocy.
-Attack Newdoria with Summoned Skull. (1100 / 600)
-Destroy either opponent's Summoned Skull with Newdoria's Special Ability.
-Switch to Main Phase 2 and activate Mystic Box. (1100 / 300)
-Destroy your opponent's remaining Summoned Skull for game. (1100 / 0)
]]