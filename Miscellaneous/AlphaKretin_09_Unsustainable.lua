--[[message
Inspired by the video https://www.youtube.com/watch?v=l-RCcbfvo3Q by JebusMcAzn.

Your Starting LP: 7700
Opponent's Starting LP: 6000
Complexity: ?/10.

Objective: Win this turn.
Note: Puzzle set to use Master Rules 3
]]

Debug.SetAIName("Jebus McAzn")
Debug.ReloadFieldBegin(DUEL_PSEUDO_SHUFFLE+DUEL_ATTACK_FIRST_TURN,3)

Debug.SetPlayerInfo(0,7700,0,0)
Debug.SetPlayerInfo(1,6000,0,0)

--AI's hand
Debug.AddCard(55063751,1,1,LOCATION_HAND,0,POS_FACEDOWN) --Gameciel
Debug.AddCard(86120751,1,1,LOCATION_HAND,0,POS_FACEDOWN) --Aleister
Debug.AddCard(43722862,1,1,LOCATION_HAND,0,POS_FACEDOWN) --Meth Bell

--AI's field.
Debug.AddCard(50954680,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --Crystal Wing
Debug.AddCard(49513164,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK) --Raidjin
Debug.AddCard(86120751,1,1,LOCATION_MZONE,0,POS_FACEUP_ATTACK) --Aleister
Debug.AddCard(67616300,1,1,LOCATION_SZONE,5,POS_FACEUP) --Chicken Game

--AI's main deck
Debug.AddCard(86120751,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(55063751,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(67616300,1,1,LOCATION_DECK,0,POS_FACEDOWN)

--AI's Extra Deck
Debug.AddCard(79606837,1,1,LOCATION_EXTRA,0,POS_FACEDOWN) --Herald
Debug.AddCard(79606837,1,1,LOCATION_EXTRA,0,POS_FACEDOWN) --Herald
Debug.AddCard(38148100,1,1,LOCATION_EXTRA,0,POS_FACEDOWN) --Aromaseraphy Rosemary
Debug.AddCard(29515122,1,1,LOCATION_EXTRA,0,POS_FACEDOWN) --Digvorzhak
Debug.AddCard(16114248,1,1,LOCATION_EXTRA,0,POS_FACEDOWN) --Pair Cycroid
Debug.AddCard(38148100,1,1,LOCATION_EXTRA,0,POS_FACEDOWN) --Aromaseraphy Rosemary
Debug.AddCard(29515122,1,1,LOCATION_EXTRA,0,POS_FACEDOWN) --Digvorzhak
Debug.AddCard(16114248,1,1,LOCATION_EXTRA,0,POS_FACEDOWN) --Pair Cycroid
Debug.AddCard(38148100,1,1,LOCATION_EXTRA,0,POS_FACEDOWN) --Aromaseraphy Rosemary
Debug.AddCard(29515122,1,1,LOCATION_EXTRA,0,POS_FACEDOWN) --Digvorzhak
Debug.AddCard(16114248,1,1,LOCATION_EXTRA,0,POS_FACEDOWN) --Pair Cycroid
Debug.AddCard(50954680,1,1,LOCATION_EXTRA,0,POS_FACDOWN) --Crystal Wing

--AI’s GY
Debug.AddCard(70368879,1,1,LOCATION_GRAVE,0,POS_FACEUP) --Consistency
Debug.AddCard(47679935,1,1,LOCATION_GRAVE,0,POS_FACEUP) --Magical Meltdown
Debug.AddCard(67616300,1,1,LOCATION_GRAVE,0,POS_FACEUP) --Chicken Game
Debug.AddCard(40605147,1,1,LOCATION_GRAVE,0,POS_FACEUP) --Solemn Strike
Debug.AddCard(86120751,1,1,LOCATION_GRAVE,0,POS_FACEUP) --Aleister
Debug.AddCard(74519184,1,1,LOCATION_GRAVE,0,POS_FACEUP) --Hand Destr.
Debug.AddCard(71007216,1,1,LOCATION_GRAVE,0,POS_FACEUP) --Glass
Debug.AddCard(14577226,1,1,LOCATION_GRAVE,0,POS_FACEUP) --Winter
Debug.AddCard(70117860,1,1,LOCATION_GRAVE,0,POS_FACEUP) --Snow

--AI's banished
Debug.AddCard(43722862,1,1,LOCATION_REMOVED,0,POS_FACEUP) --Ice

--Player's Extra Deck
Debug.AddCard(79606837,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Herald of the Arrogant Prick, appropriately destined for the grave
Debug.AddCard(79606837,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Herald of the Arrogant Prick, appropriately destined for the grave
Debug.AddCard(38148100,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Aromaseraphy Rosemary
Debug.AddCard(29515122,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Digvorzhak
Debug.AddCard(16114248,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Pair Cycroid
Debug.AddCard(38148100,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Aromaseraphy Rosemary
Debug.AddCard(29515122,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Digvorzhak
Debug.AddCard(16114248,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Pair Cycroid
Debug.AddCard(38148100,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Aromaseraphy Rosemary
Debug.AddCard(29515122,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Digvorzhak
Debug.AddCard(16114248,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Pair Cycroid
Debug.AddCard(50954680,0,0,LOCATION_EXTRA,0,POS_FACDOWN) --Crystal Wing
Debug.AddCard(50954680,0,0,LOCATION_EXTRA,0,POS_FACDOWN) --Crystal Wing
Debug.AddCard(49513164,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Raidjin
Debug.AddCard(49513164,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Raidjin

--Player's Hand
Debug.AddCard(16229315,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Gale Dogra
Debug.AddCard(79816536,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Summoner's Art
Debug.AddCard(96765646,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Swing of Memories
Debug.AddCard(96765646,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Swing of Memories
Debug.AddCard(35480699,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Book of Eclipse
Debug.AddCard(96383838,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Tri-Wight
Debug.AddCard(12338068,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Legendary Maju Garzett
Debug.AddCard(1845204,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Instant Fusion
Debug.AddCard(43422537,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Double Summon
Debug.AddCard(34016756,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Riryoku
Debug.AddCard(23171610,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Limiter Removal

--Player's Field

--Player's Main Deck
Debug.AddCard(52846880,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Nekroz of Catastor
Debug.AddCard(46052429,0,0,LOCATION_DECK,0,POS_FACEDOWN) --ARA
Debug.AddCard(80825553,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Smoke Ball
Debug.AddCard(80825553,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Smoke Ball
Debug.AddCard(80825553,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Smoke Ball
Debug.AddCard(58538870,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Oppressed People
Debug.AddCard(21615956,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Flamvell Guard
Debug.AddCard(4035199,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Shapesnatch

--Player's GY
Debug.AddCard(23434538,0,0,LOCATION_GRAVE,0,POS_FACEUP) --Maxx "C"
Debug.AddCard(48202661,0,0,LOCATION_GRAVE,0,POS_FACEUP) --Aitsu
Debug.AddCard(80234301,0,0,LOCATION_GRAVE,0,POS_FACEUP) --Prisman


Debug.ReloadFieldEnd()
--Debug.ShowHint("Win in one turn!")
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
