--[[message
Let Krawlers float like never before!
]]
Debug.SetAIName("AlphaKretin")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,4)

Debug.SetPlayerInfo(0,1,0,0)
Debug.SetPlayerInfo(1,20800,0,0)


--Player's hand
Debug.AddCard(67831115,0,0,LOCATION_HAND,0,POS_FACEDOWN) --WL in Shadows
Debug.AddCard(15710054,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Mystical Space Krawler

--Player's deck
Debug.AddCard(46083111,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Krawler Burial
Debug.AddCard(10698416,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Krawler +1
Debug.AddCard(83293307,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Krawler ROTA
Debug.AddCard(51205763,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Krawler Reborn
Debug.AddCard(15710054,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Mystical Space Krawler
Debug.AddCard(88316955,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Man-Eater Krawler
Debug.AddCard(67441435,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Glow-Up Bulb
Debug.AddCard(86784733,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Yusakusei
Debug.AddCard(54537489,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Mare Mare
Debug.AddCard(33420078,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Plaguespreader
Debug.AddCard(33420078,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Plaguespreader
Debug.AddCard(33420078,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Plaguespreader
Debug.AddCard(33420078,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Plaguespreader
Debug.AddCard(33420078,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Plaguespreader
Debug.AddCard(33420078,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Plaguespreader

--Player's extra
Debug.AddCard(92781606,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Quarliark
Debug.AddCard(54191698,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Manekin Neko
Debug.AddCard(43202238,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Yazi
Debug.AddCard(25472513,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Star Shaman
Debug.AddCard(44508094,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Stardust
Debug.AddCard(24696097,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Shooting Star
Debug.AddCard(31919988,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Duck Diviner

--AI's field
Debug.AddCard(5821478,1,1,LOCATION_MZONE,5,POS_FACEUP_ATTACK,true) --Topologic Bomber Dragon
Debug.AddCard(30834988,1,1,LOCATION_SZONE,2,POS_FACEDOWN) --All-out Attacks

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in one turn!")
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