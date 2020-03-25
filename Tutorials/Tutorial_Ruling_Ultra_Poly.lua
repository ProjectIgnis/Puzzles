--SVFD and Ultra Poly
--AlphaKretin
Debug.SetAIName("RulingBot")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,3)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4500,0,0)

--Player's Extra Deck
Debug.AddCard(25586143,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Chimerafflesia
Debug.AddCard(41209827,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Starve Venom
Debug.AddCard(62709239,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Break Sword

--Player's Field
Debug.AddCard(35272499,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK) --Scorpio
Debug.AddCard(61677004,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --Cobra

--Player's Hand
Debug.AddCard(76647978,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Ultra Polymerization

Debug.ReloadFieldEnd()
Debug.ShowHint("You cannot use Starving Venom Fusion Dragon with the second effect of Ultra Polymerization.")
Debug.ShowHint("This is because its materials must be on the field.")

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