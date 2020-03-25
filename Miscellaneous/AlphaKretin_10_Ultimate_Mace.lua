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

--LOCATION_DECK
--LOCATION_SZONE
--LOCATION_GRAVE
--LOCATION_HAND
--LOCATION_MZONE
--LOCATION_EXTRA
--LOCATION_REMOVED
--POS_FACEDOWN
--POS_FACEDOWN_DEFENSE
--POS_FACEUP
--POS_FACEUP_DEFENSE
--POS_FACEUP_ATTACK
--Debug.PreEquip(e1,c1)
--Debug.PreSummon(c,type)
--Debug.AddCard()
--aux.BeginPuzzle()
