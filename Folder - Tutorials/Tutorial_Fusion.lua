--Fusion Tutorial
--AlphaKretin
Debug.SetAIName("TutorialBot")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,3)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,6900,0,0)

--AI's field.
Debug.AddCard(1546123,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --Cyber End Dragon

--AI's grave/banish
Debug.AddCard(70095154,1,1,LOCATION_GRAVE,0,POS_FACEUP) -- Cyber End Dragon materials
Debug.AddCard(70095154,1,1,LOCATION_GRAVE,0,POS_FACEUP) -- Cyber End Dragon materials
Debug.AddCard(70095154,1,1,LOCATION_GRAVE,0,POS_FACEUP) -- Cyber End Dragon materials
Debug.AddCard(24094653,1,1,LOCATION_GRAVE,0,POS_FACEUP) -- Cyber End Dragon materials

--Player's Extra Deck
Debug.AddCard(3642509,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --E HERO Great Tornado
Debug.AddCard(35809262,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --E HERO Flame Wingman

--Player's Field
Debug.AddCard(21844576,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --E HERO Avian

--Player's Hand
Debug.AddCard(58932615,0,0,LOCATION_HAND,0,POS_FACEDOWN) --E HERO Burstinatrix
Debug.AddCard(24094653,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Poly
Debug.AddCard(45906428,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Miracle Fusion

Debug.ReloadFieldEnd()
Debug.ShowHint("Fusion Summon by using the Spell \"Polymerization\" to fuse monsters from your hand or field.")
Debug.ShowHint("Fusion Materials can be either specific cards, or more general categories.")
Debug.ShowHint("Other card effects can also Fusion Summon.")
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
