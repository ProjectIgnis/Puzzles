--Pendulum Tutorial
--AlphaKretin
Debug.SetAIName("TutorialBot")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,3)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,2600,0,0)

--AI's field.
Debug.AddCard(74069667,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --DDD Ragnarok

--Player's Extra Deck
Debug.AddCard(67808837,0,0,LOCATION_EXTRA,0,POS_FACEUP) --PPal King Bear

--Player's Field
Debug.AddCard(20409757,0,0,LOCATION_PZONE,1,POS_FACEUP) --Timegazer in scale

--Player's Hand
Debug.AddCard(94415058,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Stargazer
Debug.AddCard(16178681,0,0,LOCATION_HAND,0,POS_FACEDOWN) --OEPD
Debug.AddCard(44944304,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Laughmaker

Debug.ReloadFieldEnd()
Debug.ShowHint("Activate Pendulum Monsters as Spell Cards, and you can Pendulum Summon monsters with levels between their scales.")
Debug.ShowHint("They can come from your hand, or face-up in your Extra Deck - that's where Pendulum monsters go from the field instead of the Graveyard.")
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