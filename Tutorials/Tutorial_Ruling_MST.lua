--Does MST Negate?
--AlphaKretin
Debug.SetAIName("RulingBot")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,3)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,1250,0,0)

--AI's Field
Debug.AddCard(34815282,1,1,LOCATION_SZONE,2,POS_FACEDOWN) --Miniaturize
Debug.AddCard(61420130,1,1,LOCATION_SZONE,1,POS_FACEDOWN) --Paleozoic Hallucigenia

--Player's Field
Debug.AddCard(46986414,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --With no cards on the field, I summon Dark Magician and attack directly for game.

--Player's Hand
Debug.AddCard(5318639,0,0,LOCATION_HAND,0,POS_FACEDOWN) --MST
Debug.AddCard(5318639,0,0,LOCATION_HAND,0,POS_FACEDOWN) --MST

Debug.ReloadFieldEnd()
Debug.ShowHint("Mystical Space Typhoon does not negate the card it destroys.")
Debug.ShowHint("However, it does prevent Continuous Spell/Traps and Field Spells from resolving.")

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