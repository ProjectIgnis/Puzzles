--Revive Limit
--AlphaKretin
Debug.SetAIName("RulingBot")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,3)

Debug.SetPlayerInfo(0,6000,0,0)
Debug.SetPlayerInfo(1,2500,0,0)

--AI's Field
Debug.AddCard(85742772,1,1,LOCATION_SZONE,2,POS_FACEUP) --Grav Bind

--Player's Field
Debug.AddCard(46986414,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --Dark Magician

--Player's Hand
Debug.AddCard(47222536,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Magic Circle

--Player's Deck
Debug.AddCard(1784686,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Timaeus
Debug.AddCard(2314238,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Dark Magic Attack
Debug.AddCard(4035199,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Filler

Debug.ReloadFieldEnd()
Debug.ShowHint("Dark Magical Circle cannot add The Eye of Timaeus to your hand.")
Debug.ShowHint("The card Circle adds must specifically list the card with the exact name Dark Magician.")
Debug.ShowHint("However, Timaeus lists any monster with \"Dark Magician\" in it's name.")

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