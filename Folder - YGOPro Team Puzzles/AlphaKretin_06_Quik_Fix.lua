--[[message
SPYRALs were broken even before Double Helix
]]
Debug.SetAIName("AlphaKretin")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,4)

Debug.SetPlayerInfo(0,1000,0,0)
Debug.SetPlayerInfo(1,12200,0,0)

--AI's field.
Debug.AddCard(7093411,1,1,LOCATION_SZONE,0,POS_FACEUP)
Debug.AddCard(32710364,1,1,LOCATION_SZONE,1,POS_FACEUP)
Debug.AddCard(69937550,1,1,LOCATION_SZONE,2,POS_FACEUP)
Debug.AddCard(21698716,1,1,LOCATION_SZONE,3,POS_FACEUP)
Debug.AddCard(95600067,1,1,LOCATION_SZONE,4,POS_FACEUP)
Debug.AddCard(12644061,1,1,LOCATION_SZONE,5,POS_FACEUP)

--AI's Extra Deck

--AI’s GY

--Player's Extra Deck
Debug.AddCard(33909817,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Princessprite
Debug.AddCard(46895036,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Dullahan
Debug.AddCard(65305468,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --F0
Debug.AddCard(89642993,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Shamoji Soldier! :D
Debug.AddCard(84124261,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Utopia Tree
Debug.AddCard(52653092,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Literaly Yuma
Debug.AddCard(3987233,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Fabulous Doggo

--Player's Hand
Debug.AddCard(78080961,0,0,LOCATION_HAND,0,POS_FACEDOWN) --QF

--Player's Field
Debug.AddCard(41091257,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK) --Dandy
Debug.AddCard(2295440,0,0,LOCATION_SZONE,1,POS_FACEDOWN) --141
Debug.AddCard(63995093,0,0,LOCATION_SZONE,2,POS_FACEDOWN) --Machine Dupe
Debug.AddCard(37364101,0,0,LOCATION_SZONE,3,POS_FACEDOWN) --Stoic Challenge

--Player's Main Deck
Debug.AddCard(78080961,0,0,LOCATION_DECK,0,POS_FACEDOWN) --QF
Debug.AddCard(78080961,0,0,LOCATION_DECK,0,POS_FACEDOWN) --QF
Debug.AddCard(37433748,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Cut my life into pieces/I do not get this meme
Debug.AddCard(37433748,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Cut my life into pieces/I do not get this meme
Debug.AddCard(37433748,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Cut my life into pieces/I do not get this meme
Debug.AddCard(4474060,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Pizza delivery!
Debug.AddCard(4474060,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Pizza delivery!
Debug.AddCard(4474060,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Pizza delivery!
Debug.AddCard(30979619,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Toot toot, chugga chugga
Debug.AddCard(30979619,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Toot toot, chugga chugga
Debug.AddCard(30979619,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Toot toot, chugga chugga
Debug.AddCard(73828446,0,0,LOCATION_DECK,0,POS_FACEDOWN) --I can't think of a joke for fully armed, sad
Debug.AddCard(73828446,0,0,LOCATION_DECK,0,POS_FACEDOWN) --I can't think of a joke for fully armed, sad
Debug.AddCard(73828446,0,0,LOCATION_DECK,0,POS_FACEDOWN) --I can't think of a joke for fully armed, sad
Debug.AddCard(53989821,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Util wire
Debug.AddCard(53989821,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Util wire

--Player's GY

Debug.ReloadFieldEnd()
Debug.ShowHint("SPYRALs could loop before Double Helix!")
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