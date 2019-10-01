--Xyz Tutorial
--AlphaKretin
Debug.SetAIName("TutorialBot")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,3)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,2300,0,0)

--AI's field.
Debug.AddCard(85742772,1,1,LOCATION_SZONE,2,POS_FACEUP) --Gravity Bind
Debug.AddCard(88120966,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --Gimmick Puppet Giant Grinder
Debug.AddCard(92418590,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --Dreary Doll
Debug.AddCard(34620088,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --Shadow Feeler

--Player's Extra Deck
Debug.AddCard(91499077,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Gagaga Sam

--Player's Field
Debug.AddCard(67120578,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK) --Gagaga Head
Debug.AddCard(26082117,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --Gagaga Magician
Debug.AddCard(12423762,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK) --Gagaga Gardna

Debug.ReloadFieldEnd()
Debug.ShowHint("Xyz Summon by overlaying two monsters of the same level.")
Debug.ShowHint("The materials stay under the card and can be detached to activate effects.")
Debug.ShowHint("Xyz Monsters have Ranks, not Levels.")
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