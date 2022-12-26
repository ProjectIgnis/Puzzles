--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 2000
Opponent's Starting LP: 5500
Complexity: 7/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,2000,0,0)
Debug.SetPlayerInfo(1,5500,0,0)
Debug.SetAIName("Professor Sartyr")

--Hand (yours)
Debug.AddCard(13429800,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(17597059,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(38699854,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(69579761,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(45986603,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(64306248,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (yours)
Debug.AddCard(13945283,0,0,LOCATION_MZONE,2,POS_FACEUP_DEFENSE,true)

--Spell & Trap Zones (yours)
Debug.AddCard(43434803,0,0,LOCATION_SZONE,0,POS_FACEDOWN)
Debug.AddCard(31036355,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(61705417,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(15866454,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(511003023,0,0,LOCATION_SZONE,4,POS_FACEUP)

--GY (opponent's)
Debug.AddCard(5318639,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(22702055,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(16222645,1,1,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (opponent's)
Debug.AddCard(61587183,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)
Debug.AddCard(18318842,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (opponent's)
Debug.AddCard(51452091,1,1,LOCATION_SZONE,3,POS_FACEUP)
Debug.AddCard(30606547,1,1,LOCATION_SZONE,2,POS_FACEUP)
Debug.AddCard(34646691,1,1,LOCATION_SZONE,1,POS_FACEUP)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

-Activate Spiritualism to target and return Royal Decree back to opponent's hand.
-Switch Wall of Illusion in attack mode, then activate Graverobber.
-Select Umi from your opponent's graveyard, then activate Snatch Steal.
-Target Abyss Soldier and activate its special ability.
-Discard Great White to target and return Stumbling back to opp. hand.
-Activate The Shallow Grave and select Skull-Mark Ladybug from the graveyard.
-Sacrifice Skull-Mark Ladybug to tribute summon Byser Shock in attack mode.
-Activate Creature Swap, swapping Byser Shock for Dark Scorpion - Chick the Yellow.(3000/5500)
-Activate Umi, then follow up with Ultimate Offering. (500 / 5500)
-Set Des Koala and activate Book of Taiyou, targeting Des Koala. (500 / 4300)
-Attack Byser Shock with Dark Scorpion - Chick the Yellow, then use its special ability.
-Return The Dark Door from the field back to opponent's hand. (500 / 4100)
-Attack with all remaining monsters for game. (500 / 0)
]]