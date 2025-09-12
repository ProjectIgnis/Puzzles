--[[message
How much havoc can 1 Brilliant Fusion cause?

Your Starting LP: 1000
Opponent's Starting LP: 6100
Complexity: ?/10.

Objective: Win this turn.
Note: Puzzle set to use Master Rules 3
]]
Debug.SetAIName("AlphaKretin")
Debug.ReloadFieldBegin(DUEL_PSEUDO_SHUFFLE+DUEL_SIMPLE_AI+DUEL_ATTACK_FIRST_TURN,3)

Debug.SetPlayerInfo(0,1000,0,0)
Debug.SetPlayerInfo(1,6100,0,0)

--AI's field.
Debug.AddCard(59919307,1,1,LOCATION_SZONE,2,POS_FACEDOWN) --2Back2Front
Debug.AddCard(47475363,1,1,LOCATION_SZONE,1,POS_FACEDOWN) --Drowning Mother Fucker
Debug.AddCard(44656491,1,1,LOCATION_SZONE,3,POS_FACEUP) --Messenger of Peace
--AI's Extra Deck

--AI’s GY
Debug.AddCard(13683298,1,1,LOCATION_GRAVE,0,POS_FACEUP) --Thunderclap Skywolf

--Player's Extra Deck
Debug.AddCard(3113836,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --GK Seraph
Debug.AddCard(25862691,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Ancient Fairy Dragon (pre-errata)
Debug.AddCard(2403771,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Power Tool
Debug.AddCard(75988594,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Musa-C
Debug.AddCard(64245689,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Meliae of the EARTH
Debug.AddCard(22653490,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Chidori
Debug.AddCard(96157835,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Raidraptor Bum Falcon

--Player's Hand
Debug.AddCard(7394770,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Brilliant
Debug.AddCard(91350799,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Cake Owl
Debug.AddCard(12980373,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Cake Cat
Debug.AddCard(8233522,0,0,LOCATION_HAND,0,POS_FACEDOWN) --AoJ Banish Handtrap

--Player's Field

--Player's Main Deck
Debug.AddCard(75782277,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Hunting Ground
Debug.AddCard(11066358,0,0,LOCATION_DECK,0,POS_FACEDOWN) --GalSerp
Debug.AddCard(81846636,0,0,LOCATION_DECK,0,POS_FACEDOWN) --GK Lazuli
Debug.AddCard(52404456,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Cake Postman
Debug.AddCard(14001430,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Cake Castle
Debug.AddCard(67441435,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Gulb
Debug.AddCard(90238142,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Harpie Channeler
Debug.AddCard(76812113,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Harpie
Debug.AddCard(9622164,0,0,LOCATION_DECK,0,POS_FACEDOWN) --DDR
Debug.AddCard(9622164,0,0,LOCATION_DECK,0,POS_FACEDOWN) --DDR
Debug.AddCard(9622164,0,0,LOCATION_DECK,0,POS_FACEDOWN) --DDR



--Player's GY

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
