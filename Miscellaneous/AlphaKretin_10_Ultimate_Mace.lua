--[[message
Once upon a time, searching a Rank-Up-Magic was almost impossible. But there was this one situational card...


Your Starting LP: 200
Opponent's Starting LP: 27300

Complexity: ?/10.
Objective: Win this turn.
]]
Debug.SetAIName("Sanct")
Debug.ReloadFieldBegin(DUEL_PSEUDO_SHUFFLE+DUEL_SIMPLE_AI+DUEL_ATTACK_FIRST_TURN,3)

Debug.SetPlayerInfo(0,200,0,0)
Debug.SetPlayerInfo(1,27300,0,0)

--AI's field.
Debug.AddCard(49003716,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --Blackwang

--AI's Extra Deck

--AI’s GY

--Player's Extra Deck
Debug.AddCard(95992081,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Leviair
Debug.AddCard(73887236,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Rise Falcon
Debug.AddCard(15092394,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Stranger Falcon
Debug.AddCard(81927732,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Revolution Falcon
Debug.AddCard(96157835,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Arsenal Falcon
Debug.AddCard(86221741,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Ultimate Falcon
Debug.AddCard(43047672,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Fortress Falcon
Debug.AddCard(62541668,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Uncensored Spider

--Player's Hand
Debug.AddCard(45184165,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Skull Eagle
Debug.AddCard(8785161,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Wild Vulture
Debug.AddCard(50619462,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Cattle Call

--Player's Field
Debug.AddCard(60764582,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --Tribute Fodder
Debug.AddCard(70865988,0,0,LOCATION_SZONE,0,POS_FACEDOWN) --Full Salvo
Debug.AddCard(31036355,0,0,LOCATION_SZONE,1,POS_FACEDOWN) --Creature Swap
Debug.AddCard(87609391,0,0,LOCATION_SZONE,2,POS_FACEDOWN) --Raptor's Ultimate Mace
Debug.AddCard(38296564,0,0,LOCATION_SZONE,3,POS_FACEDOWN) --Safe Zone
Debug.AddCard(73860462,0,0,LOCATION_SZONE,4,POS_FACEDOWN) --Wonder Xyz

--Player's Main Deck
Debug.AddCard(43383478,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Raptors Force
Debug.AddCard(43383478,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Raptors Force
Debug.AddCard(23581825,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Soul Shave Force
Debug.AddCard(23581825,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Soul Shave Force
Debug.AddCard(23581825,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Soul Shave Force
Debug.AddCard(41201386,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Raid Force
Debug.AddCard(41201386,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Raid Force
Debug.AddCard(41201386,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Raid Force
Debug.AddCard(43476205,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Revolution Force
Debug.AddCard(43476205,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Revolution Force
Debug.AddCard(43476205,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Revolution Force
Debug.AddCard(96345188,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Mimicry Lanius
Debug.AddCard(46589034,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Pain Lanius

--Player's GY
Debug.AddCard(45184165,0,0,LOCATION_GRAVE,0,POS_FACEUP) --Skull Eagle
Debug.AddCard(31314549,0,0,LOCATION_GRAVE,0,POS_FACEUP) --Singing Lanius

--Player's Banished
Debug.AddCard(83236601,0,0,LOCATION_REMOVED,0,POS_FACEUP) --Tribute Lanius

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in one turn!")
--Below makes it a one turn puzzle.
aux.BeginPuzzle()

--[[Solution
1 - Normal Summon "Raidraptor - Wild Vulture".
2 - Activate the effect of "Raidraptor - Wild Vulture" and Special Summon 2 "Raidraptor - Skull Eagle".
3 - Xyz Summon "Leviair the Sea Dragon" in Attack Position, triggering the mandatory effects of "Raidraptor - Skull Eagle".
4 - Activate the effect of "Leviair the Sea Dragon" and Special Summon "Raidraptor - Tribute Lanius".
5 - Trigger the effect of the detached "Raidraptor - Skull Eagle", adding "Raidraptor - Singing Lanius" to the hand.
6 - Activate the effect of "Raidraptor - Tribute Lanius", sending "Raidraptor - Mimicry Lanius" to the GY.
7 - Activate the effect of "Raidraptor - Mimicry Lanius", adding "Raidraptor - Pain Lanius" to the hand.
8 - Special Summon "Raidraptor - Singing Lanius" in Attack Position.
9 - Special Summon "Raidraptor - Pain Lanius", targeting "Raidraptor - Singing Lanius", in Attack Position.
10 - Activate the Set "Raptor's Ultimate Mace" and equip it to "Raidraptor - Pain Lanius".
11 - Activate the Set "Safe Zone", targeting "Raidraptor - Pain Lanius".
12 - Activate "Creature Swap" and change control of "Raidraptor - Pain Lanius" and "Blackwing - Bora the Spear".
13 - Xyz Summon "Raidraptor - Rise Falcon" in Attack Position.
14 - Activate the effect of "Raidraptor - Rise Falcon", detaching "Blackwing - Bora the Spear" and targeting "Raidraptor - Pain Lanius".
15 - Enter the Battle Phase.
16 - Attack with "Raidraptor - Rise Falcon".
17 - Activate the trigger effect of "Raptor's Ultimate Mace", adding "Rank-Up-Magic Revolution Force" to your hand.
18 - Activate "Rank-Up-Magic Revolution Force"; Special Summon "Raidraptor - Stranger Falcon" in Attack Position.
19 - Attack with "Raidraptor - Stranger Falcon".
20 - Activate the trigger effect of "Raptor's Ultimate Mace", adding "Rank-Up-Magic Revolution Force" to your hand.
21 - Activate "Rank-Up-Magic Revolution Force"; Special Summon "Raidraptor - Revolution Falcon" in Attack Position.
22 - Attack with "Raidraptor - Revolution Falcon".
23 - Activate the trigger effect of "Raptor's Ultimate Mace", adding "Rank-Up-Magic Revolution Force" to your hand.
24 - Attack with "Leviair the Sea Dragon".
25 - Activate the trigger effect of "Raptor's Ultimate Mace", adding any "Rank-Up-Magic" Spell to your hand.
27 - Attack with "Raidraptor - Arsenal Falcon".
28 - Activate "Rank-Up-Magic Revolution Force"; Special Summon "Raidraptor - Arsenal Falcon" in Attack Position.
29 - Repeat steps 27 and 28 until "Raidraptor - Arsenal Falcon" can no longer attack.
30 - Activate "Cattle Call", sending "Raidraptor - Arsenal Falcon" to the GY to Special Summon "Raidraptor - Ultimate Falcon".
31 - Activate the trigger effect of "Raidraptor - Arsenal Falcon" and Special Summon "Raidraptor - Final Fortress Falcon" in Attack Position, attaching "Raidraptor - Arsenal Falcon" to it.
32 - Activate "Wonder Xyz", Special Summoning "Number 77: The Seven Sins" in Attack Position.
33 - Attack with "Number 77: The Seven Sins".
34 - Activate the trigger effect of "Raptor's Ultimate Mace", adding any "Rank-Up-Magic" Spell to your hand.
35 - Attack with "Raidraptor - Final Fortress Falcon".
36 - Activate the trigger effect of "Raptor's Ultimate Mace", adding any "Rank-Up-Magic" Spell to your hand.
37 - Activate "Full Salvo".
]]
