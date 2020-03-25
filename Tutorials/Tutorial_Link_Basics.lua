--Link Tutorial
--AlphaKretin
Debug.SetAIName("TutorialBot")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,4)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,200,0,0)

--AI's field.
Debug.AddCard(78437364,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK) --Gouki the Lack of Link-2

--AI's grave/banish. Appropriate materials for the above, for flavor
Debug.AddCard(60461077,1,1,LOCATION_GRAVE,0,POS_FACEUP) --Gouki mats
Debug.AddCard(24073068,1,1,LOCATION_GRAVE,0,POS_FACEUP) --Gouki mats
Debug.AddCard(97688360,1,1,LOCATION_GRAVE,0,POS_FACEUP) --Gouki mats

--Player's Extra Deck
Debug.AddCard(98978921,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Link Spider
Debug.AddCard(34472920,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Honeybot
Debug.AddCard(1861629,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Decode Talker

--Player's Field
Debug.AddCard(35595518,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --Linkslayer
Debug.AddCard(36211150,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK) --Bitron
Debug.AddCard(62706865,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK) --Draconnet

Debug.ReloadFieldEnd()
Debug.ShowHint("Link Summon by sending monsters from the field to the Graveyard, a number equal to the Link Rating of the monster you wish to summon.")
Debug.ShowHint("Link Monsters have Link Markers, which relate to their effects and enable further summons from the Extra Deck where they point.")
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