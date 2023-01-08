--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 100
Opponent's Starting LP: 7400
Complexity: 4+/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,100,0,0)
Debug.SetPlayerInfo(1,7400,0,0)
Debug.SetAIName("Professor Sartyr")

--Hand (yours)
Debug.AddCard(69162969,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(16226796,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(38699854,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(511003009,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(40659562,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(51481927,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(504700136,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (yours)
Debug.AddCard(504700163,0,0,LOCATION_MZONE,3,POS_FACEDOWN_DEFENSE,true)
Debug.AddCard(15341822,0,0,LOCATION_MZONE,2,POS_FACEUP_DEFENSE,true)
Debug.AddCard(15341823,0,0,LOCATION_MZONE,1,POS_FACEUP_DEFENSE,true)

--Spell & Trap Zones (yours)
Debug.AddCard(53582587,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(511003023,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(65830223,0,0,LOCATION_SZONE,3,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(31305911,1,1,LOCATION_MZONE,3,POS_FACEDOWN_DEFENSE,true)
Debug.AddCard(504700075,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(504700015,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

-Activate Coffin Seller then Spell Absorption.
-Flip Summon Penguin Soldier.
-Return Horus Lvl. 6 & Marshmallon to your opponent's hand.
-Chain it to Ultimate Offering then activate Lightning Vortex. (100 / 7400)
-Discard Night Assailant, then select Slate Warrior from the graveyard.
Set Slate Warrior face down from your hand to the field. (600 / 7100)
-Activate Book of Taiyou to target Slate Warrior. (1100 / 7100)
-Chain special ability to Ultimate Offering and activate it. (600 / 7100)
-Sacrifice both Fluffy Tokens in order to tribute summon Ultimate Tyranno.
-Activate Ultimate Offering once more. (100 / 7100)
-Sacrifice Penguin Soldier to tribute summon Guardian Sphinx in attack mode.
-Attack with all monsters for game. (100 / 7100)
]]