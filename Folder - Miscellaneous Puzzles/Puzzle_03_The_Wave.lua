--Puzzle made by Gideon, idea by Kingu
--[[message
There were many reasons to ban Zoodiacs. Here's another.


	Your Starting LP: 8000
	Opponent's Starting LP: 8000
	Complexity: 1/10.
	Objective: Win this turn.

]]
Debug.SetAIName("Haha_You_Cant_Atk")
Debug.ReloadFieldBegin(0x80)

Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)
--Ratpier
Debug.AddCard(78872731,0,0,LOCATION_HAND,0,POS_FACEDOWN)
--Galaxy Wave
Debug.AddCard(77098449,0,0,LOCATION_HAND,0,POS_FACEDOWN)
--Main deck. Ramrams
Debug.AddCard(04145852,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(04145852,0,0,LOCATION_DECK,0,POS_FACEDOWN)
--2 more Ratpiers =.= And people question why its limited
Debug.AddCard(78872731,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(78872731,0,0,LOCATION_DECK,0,POS_FACEDOWN)
--Fire formation - Tensu
Debug.AddCard(10719350,0,0,LOCATION_DECK,0,POS_FACEDOWN)
--Left arm offering because I like cutting peoples arms off.
Debug.AddCard(86541496,0,0,LOCATION_DECK,0,POS_FACEDOWN)
--Extra deck time.
--Number 93
Debug.AddCard(23187256,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
--Fire fist - tiger king
Debug.AddCard(96381979,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
--Daigusto emeral
Debug.AddCard(00581014,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
--Gagaga cowboy 
Debug.AddCard(12014404,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
--Tigermortar
Debug.AddCard(11510448,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
--HammerKong
Debug.AddCard(14970113,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
--Chakanine
Debug.AddCard(41375811,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
--Drident which is banned in OCG
Debug.AddCard(48905153,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
--Boarbow
Debug.AddCard(74393852,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
--Broadbull aslo banned in OCG
Debug.AddCard(85115440,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
--Utopic future
Debug.AddCard(65305468,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(65305468,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
--Future Slash
Debug.AddCard(43490025,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(43490025,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(43490025,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.ReloadFieldEnd()
Debug.ShowHint("Win this turn!")
Debug.ShowHint("You cannot attack, this is the first turn.")
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
