--Z-ARC Fusion
--AlphaKretin
Debug.SetAIName("RulingBot")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,3)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

--Player's Extra Deck
Debug.AddCard(13331639,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Zarc
Debug.AddCard(13331639,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Zarc

--Player's Field
Debug.AddCard(76794549,0,0,LOCATION_MZONE,0,POS_FACEUP_ATTACK) --Look at this Astrograph

--Player's Hand
Debug.AddCard(36484016,0,0,LOCATION_HAND,0,POS_FACEDOWN) --MSF

--Player's Graveyard
Debug.AddCard(11067666,0,0,LOCATION_GRAVE,0,POS_FACEUP) --White Wing Magician
Debug.AddCard(75672051,0,0,LOCATION_GRAVE,0,POS_FACEUP) --Black Fang
Debug.AddCard(49684352,0,0,LOCATION_GRAVE,0,POS_FACEUP) --Iris
Debug.AddCard(48461764,0,0,LOCATION_GRAVE,0,POS_FACEUP) --Poison
Debug.AddCard(44508094,0,0,LOCATION_GRAVE,0,POS_FACEUP) --Stardust Dragon
Debug.AddCard(91949988,0,0,LOCATION_GRAVE,0,POS_FACEUP) --Gaia Dragon
Debug.AddCard(69610326,0,0,LOCATION_GRAVE,0,POS_FACEUP) --Darkwurm
Debug.AddCard(23995346,0,0,LOCATION_GRAVE,0,POS_FACEUP) --BEUD
Debug.AddCard(82044279,0,0,LOCATION_GRAVE,0,POS_FACEUP) --Clear Wing
Debug.AddCard(16195942,0,0,LOCATION_GRAVE,0,POS_FACEUP) --Dark Rebellion
Debug.AddCard(16178681,0,0,LOCATION_GRAVE,0,POS_FACEUP) --OEPD
Debug.AddCard(41209827,0,0,LOCATION_GRAVE,0,POS_FACEUP) --Starve Venom

Debug.ReloadFieldEnd()
Debug.ShowHint("The materials for Z-ARC's Fusion Summon and the required monsters for Astrograph Sorceror's effect are different.")
Debug.ShowHint("Pay attention to the difference between Monster type and card names, and experiment with which cards you can use with each.")

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