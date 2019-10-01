--[[message
This one's just a meme. Did you know that Lullaby of Obedience ignores summoning conditions?
]]
Debug.SetAIName("AlphaKretin")
Debug.ReloadFieldBegin(DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,3)

Debug.SetPlayerInfo(0,2001,0,0)
Debug.SetPlayerInfo(1,2000000000,0,0)

--AI's deck
Debug.AddCard(7902349,1,1,LOCATION_DECK,0,POS_FACEDOWN) --exodia pieces
Debug.AddCard(8124921,1,1,LOCATION_DECK,0,POS_FACEDOWN) --exodia pieces
Debug.AddCard(44519536,1,1,LOCATION_DECK,0,POS_FACEDOWN) --exodia pieces
Debug.AddCard(70903634,1,1,LOCATION_DECK,0,POS_FACEDOWN) --exodia pieces
Debug.AddCard(33396948,1,1,LOCATION_DECK,0,POS_FACEDOWN) --exodia pieces

--AI's hand
Debug.AddCard(7902349,1,1,LOCATION_HAND,0,POS_FACEDOWN) --exodia pieces
Debug.AddCard(8124921,1,1,LOCATION_HAND,0,POS_FACEDOWN) --exodia pieces
Debug.AddCard(44519536,1,1,LOCATION_HAND,0,POS_FACEDOWN) --exodia pieces
Debug.AddCard(70903634,1,1,LOCATION_HAND,0,POS_FACEDOWN) --exodia pieces

--AI's field

--AI’s GY

--Player's Extra Deck

--Player's Hand
Debug.AddCard(39238953,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Lullaby
Debug.AddCard(10000040,1,0,LOCATION_HAND,0,POS_FACEDOWN) --Holactie, AI owned
Debug.AddCard(5556668,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Exchange
Debug.AddCard(71564252,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Thunder King "Rai-Oh Rai-Oh", the Thunder King (best friends with Fushioh "Lichie Lich" Richie (TN: Fushioh means Lich))

--Player's Field
Debug.AddCard(97077563,0,0,LOCATION_SZONE,1,POS_FACEDOWN) --CotH
Debug.AddCard(77561728,0,0,LOCATION_SZONE,2,POS_FACEDOWN) --Disturbance strat

--Player's GY
Debug.AddCard(24221739,0,0,LOCATION_GRAVE,0,POS_FACEDOWN) --Protector of the Sanct

Debug.ReloadFieldEnd()
Debug.ShowHint("Win without attacking!")
Debug.ShowHint("Holactie was taken from your opponent.") 
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