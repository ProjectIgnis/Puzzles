--[[message
Field spells are fun, right?

	Your Starting LP: 1000
	Opponent's Starting LP: 3000
	Complexity: ?/10.
	Objective: Win this turn.
	Note:
]]
Debug.SetAIName("AlphaKretin")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,4)

Debug.SetPlayerInfo(0,1000,0,0)
Debug.SetPlayerInfo(1,3000,0,0)

--AI's field.
Debug.AddCard(30459350,1,1,LOCATION_SZONE,2,POS_FACEUP) --Imp Iron Wall

--AI's Extra Deck
Debug.AddCard(74586817,1,1,LOCATION_EXTRA,0,POS_FACEDOWN) --Omega
Debug.AddCard(4779823,1,1,LOCATION_EXTRA,0,POS_FACEDOWN) --LS Mich
Debug.AddCard(73580471,1,1,LOCATION_EXTRA,0,POS_FACEDOWN) --Black Rose
Debug.AddCard(30100551,1,1,LOCATION_EXTRA,0,POS_FACEDOWN) --LS Minerva
Debug.AddCard(73289035,1,1,LOCATION_EXTRA,0,POS_FACEDOWN) --Bujin Tsukuyomi
Debug.AddCard(581014,1,1,LOCATION_EXTRA,0,POS_FACEDOWN) --Emeral
Debug.AddCard(95169481,1,1,LOCATION_EXTRA,0,POS_FACEDOWN) --Diamond Dire

--AI’s GY
Debug.AddCard(34710660,1,1,LOCATION_GRAVE,0,POS_FACEUP) --EMG Turtle

--Player's Extra Deck
Debug.AddCard(50091196,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Formula Synchron
Debug.AddCard(44852429,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Siegfried
Debug.AddCard(65536818,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Denglong
Debug.AddCard(82956492,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --D'Arc
Debug.AddCard(13455674,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Crystron von double tuner

--Player's Hand
Debug.AddCard(64280356,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Tincan

--Player's Field
Debug.AddCard(51405049,0,0,LOCATION_SZONE,1,POS_FACEDOWN) --Where Arf Thou
Debug.AddCard(73468603,0,0,LOCATION_SZONE,2,POS_FACEDOWN) --Set Rotation
Debug.AddCard(43898403,0,0,LOCATION_SZONE,3,POS_FACEDOWN) --Twinsters

--Player's Main Deck
Debug.AddCard(61488417,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Chiwen
Debug.AddCard(54537489,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Mare Mare
Debug.AddCard(73360025,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Contract w/ Swamp
Debug.AddCard(19580308,0,0,LOCATION_DECK,0,POS_FACEDOWN) --D/D Lamia
Debug.AddCard(46372010,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Contract w/ Gate
Debug.AddCard(11609969,0,0,LOCATION_DECK,0,POS_FACEDOWN) --D/D Kepler
Debug.AddCard(1274455,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Soartroopers
Debug.AddCard(67237709,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Kozmotown
Debug.AddCard(85668449,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Brain Lab

--Player's GY
Debug.AddCard(5133471,0,0,LOCATION_GRAVE,0,POS_FACEDOWN) --Galaxy Cyclone
Debug.AddCard(58695102,0,0,LOCATION_GRAVE,0,POS_FACEDOWN) --Recover

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