--Revive Limit
--AlphaKretin
Debug.SetAIName("RulingBot")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,3)

Debug.SetPlayerInfo(0,6000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--AI's Field
Debug.AddCard(40605147,1,1,LOCATION_SZONE,2,POS_FACEDOWN) --Strike

--Player's Field
Debug.AddCard(82044279,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK, true) --Clear Wing
Debug.AddCard(77360173,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK) --Synkron Resonator

--Player's Hand
Debug.AddCard(6853254,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Return of DLords

--Player's Extra Deck
Debug.AddCard(50954680,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Crystal Wing

Debug.ReloadFieldEnd()
Debug.ShowHint("Monsters from the Extra Deck (and Ritual Monsters) must be Special Summoned properly first.")
Debug.ShowHint("If they're summoned ingoring conditions, sent directly to the graveyard/banished, or their summon is negated, you cannot Special Summon them again from elsewhere.")

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
