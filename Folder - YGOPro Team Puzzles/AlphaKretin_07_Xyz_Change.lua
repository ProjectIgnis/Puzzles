--[[message
Rank-Up! Xyz change!
]]
Debug.SetAIName("AlphaKretin")
Debug.ReloadFieldBegin(DUEL_PSEUDO_SHUFFLE+DUEL_TEST_MODE,3)

Debug.SetPlayerInfo(0,1000,0,0)
Debug.SetPlayerInfo(1,7200,0,0)

--AI's field.
local hel=Debug.AddCard(37991342,1,1,LOCATION_MZONE,0,POS_FACEUP_ATTACK) --Qliphort Helix
Debug.AddCard(6903857,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK) --Power Breaker
Debug.AddCard(63737050,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --Dragon Wolf (actually a Wyrm)
local sky=Debug.AddCard(40061558,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK) --Apoqliphort Skybase
Debug.AddCard(47355498,1,1,LOCATION_SZONE,5,POS_FACEUP) --Necrovalley
Debug.AddCard(24348804,1,1,LOCATION_SZONE,2,POS_FACEUP) --L1T
Debug.PreSummon(hel,SUMMON_TYPE_NORMAL)
Debug.PreSummon(sky,SUMMON_TYPE_NORMAL)
--AI's Extra Deck

--AI’s GY

--Player's Extra Deck
Debug.AddCard(62709239,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --PKBS
Debug.AddCard(93568288,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --filler 80
Debug.AddCard(16195943,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Dark Reb
Debug.AddCard(91279700,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --filler
Debug.AddCard(20563387,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --filler C80
Debug.AddCard(15092394,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Stranger Danger
Debug.AddCard(1621413,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Dark Req
Debug.AddCard(79985120,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Carpet bombing children with card games
Debug.AddCard(96471335,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Ebon Illusion
Debug.AddCard(33776843,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --No. C15
Debug.AddCard(80532587,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Elder Entity Bass

--Player's Hand
Debug.AddCard(63821877,0,0,LOCATION_HAND,0,POS_FACEDOWN) --PK Gloves
Debug.AddCard(36426778,0,0,LOCATION_HAND,0,POS_FACEDOWN) --PK Boots

--Player's Field
Debug.AddCard(63881033,0,0,LOCATION_SZONE,2,POS_FACEDOWN) --Marshalling Field
Debug.AddCard(74701381,0,0,LOCATION_SZONE,1,POS_FACEDOWN) --Dna Surg
Debug.AddCard(17086528,0,0,LOCATION_PZONE,1,POS_FACEUP) --Xiangsheng Magician

--Player's Main Deck
Debug.AddCard(3298689,0,0,LOCATION_DECK,0,POS_FACEDOWN) --PK RUM
Debug.AddCard(3298689,0,0,LOCATION_DECK,0,POS_FACEDOWN) --PK RUM
Debug.AddCard(90432163,0,0,LOCATION_DECK,0,POS_FACEDOWN) --PK Cloak
Debug.AddCard(94220427,0,0,LOCATION_DECK,0,POS_FACEDOWN) --RUM Ag Chaos
Debug.AddCard(38999506,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Cosmo Queen

--Player's GY

Debug.ReloadFieldEnd()
Debug.ShowHint("Win without attacking!")
Debug.ShowHint("The Qliphorts have been Normal Summoned.")
Debug.ShowHint("You can choose your opponent’s effect targets.")
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
