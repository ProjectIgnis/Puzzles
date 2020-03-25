--Synchro Tutorial
--AlphaKretin
Debug.SetAIName("TutorialBot")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,3)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,1000,0,0)

--AI's field.
Debug.AddCard(73580471,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --Black Rose Dragon

--AI's grave/banish. Appropriate materials for the above, for flavor
Debug.AddCard(17720747,1,1,LOCATION_GRAVE,0,POS_FACEUP) -- Black Rose materials
Debug.AddCard(48686504,1,1,LOCATION_GRAVE,0,POS_FACEUP) -- Black Rose materials

--Player's Extra Deck
Debug.AddCard(60800381,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Junk Warrior
Debug.AddCard(44508094,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Stardust Dragon

--Player's Field
Debug.AddCard(63977008,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --Junk Synchron
Debug.AddCard(9365703,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK) --Speed Warrior
Debug.AddCard(60800381,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK) --Junk Warrior

Debug.ReloadFieldEnd()
Debug.ShowHint("Synchro Summon by sending a Tuner monster and a non-Tuner monster to the Graveyard.")
Debug.ShowHint("The levels of the materials added together must equal the level of the Synchro Monster.")
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
