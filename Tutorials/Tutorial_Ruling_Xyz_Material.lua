--Xyz Material Ruling Tutorial
--AlphaKretin
Debug.SetAIName("RulingBot")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,3)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,5600,0,0)

--Player's Extra Deck
Debug.AddCard(91499077,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Gagaga Sam
Debug.AddCard(33909817,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Princessprite

--Player's Field
Debug.AddCard(41091257,0,0,LOCATION_MZONE,0,POS_FACEUP_ATTACK) --Secret Agent Man
Debug.AddCard(10028593,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK) --Reborn Tengu
Debug.AddCard(32274490,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --Skull Servant

--Player's Hand
Debug.AddCard(32274490,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Discard fodder

--Player's Deck
Debug.AddCard(10028593,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Reborn Tengu
Debug.AddCard(10028593,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Reborn Tengu

--Player's Graveyard
Debug.AddCard(78080961,0,0,LOCATION_GRAVE,0,POS_FACEUP) --Quik Fix

Debug.ReloadFieldEnd()
Debug.ShowHint("Xyz Material never leaves the field, either when being overlaid or detached.")
Debug.ShowHint("Experiment with how this affects Reborn Tengu and SPYRAL Quik-Fix.")

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