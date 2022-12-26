--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 5000
Opponent's Starting LP: 5500
Complexity: 7+/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,5000,0,0)
Debug.SetPlayerInfo(1,5500,0,0)
Debug.SetAIName("Professor Sartyr")

--Main Deck (yours)
Debug.AddCard(49791927,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(49791927,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(97169186,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(47606319,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(87796900,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(74131780,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(98494543,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(504700071,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(28546905,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(32452818,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(15303296,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (yours)
Debug.AddCard(37043180,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
Debug.AddCard(31560081,0,0,LOCATION_MZONE,2,POS_FACEDOWN_DEFENSE,true)
Debug.AddCard(16768387,0,0,LOCATION_MZONE,3,POS_FACEDOWN_DEFENSE,true)
Debug.AddCard(28470714,0,0,LOCATION_MZONE,4,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (yours)
Debug.AddCard(51452091,0,0,LOCATION_SZONE,4,POS_FACEDOWN)
Debug.AddCard(4178474,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(36280194,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(82732705,0,0,LOCATION_SZONE,1,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(504700015,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)
Debug.AddCard(71200730,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (opponent's)
Debug.AddCard(85742772,1,1,LOCATION_SZONE,3,POS_FACEUP)
Debug.AddCard(34646691,1,1,LOCATION_SZONE,2,POS_FACEUP)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

-Activate Raigeki Break discarding Exiled Force to destroy Stumbling.
-Flip Summon Big Eye then switch the order of your deck to the following:
	Smashing Ground (1), Gigantes (2), Winged Dragon, Guardian of the Fortress #1 (3), Tiger Axe (4), Tiger Axe (5).
-Activate Monster Gate.
-Tribute Dimensional Warrior in order to meet requirement.
-Flip Summon Magician of Faith to return Smashing Ground to your hand.
-Activate Smashing Ground to destroy Despair from the Dark.
-Activate Backup Soldier.
-Select all three cards, then activate Excavation of Mage Stones.
-Discard Beaver Warrior & Illusionist Faceless Mage to your graveyard.
-Select and return Smashing Ground then activate Skill Drain. (4000 / 5500)
-Activate Smashing Ground to destroy Horus the Black Flame Dragon LV6. (4000 / 5500)
-Normal Summon Ryu-Kishin then activate Royal Decree. (4000 / 5000)
-Attack with all monsters for game. (4000 / 0)
]]