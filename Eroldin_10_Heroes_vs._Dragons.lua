--[[message
You are overwhelmed by your opponent's dragons.
Release your inner Hero!

	Creator: Eroldin
	Difficulty: 5/10
	Master Rule: 3
]]
Debug.SetAIName("Eroldin: Prove Your Skill!")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,3)
Debug.SetPlayerInfo(0,100,0,0)
Debug.SetPlayerInfo(1,19400,0,0)

--Main Deck (yours)
Debug.AddCard(89943723,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(40044918,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(51085303,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(36586443,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(98374133,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(34187685,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(59793705,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(97077563,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(11913700,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Extra Deck (yours)
Debug.AddCard(40854197,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(10920352,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(81566151,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(58147549,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(55171412,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(94192409,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(21593987,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(17955766,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(25090294,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(55144522,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(98266377,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(55144522,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(62107981,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Banished (yours)
Debug.AddCard(89621922,0,0,LOCATION_REMOVED,0,POS_FACEUP)

--Spell & Trap Zones (yours)
Debug.AddCard(42015635,0,0,LOCATION_FZONE,0,POS_FACEUP)
Debug.AddCard(74848038,0,0,LOCATION_SZONE,4,POS_FACEDOWN)
Debug.AddCard(75141056,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(23557835,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(24094653,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(21143940,0,0,LOCATION_SZONE,0,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(74677422,1,1,LOCATION_MZONE,4,POS_FACEUP_ATTACK,true)
Debug.AddCard(74677422,1,1,LOCATION_MZONE,0,POS_FACEUP_ATTACK,true)
Debug.AddCard(89631145,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
Debug.AddCard(23995346,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)
Debug.AddCard(4896788,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (opponent's)
Debug.AddCard(3027001,1,1,LOCATION_SZONE,0,POS_FACEDOWN)
Debug.AddCard(3027001,1,1,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(53239672,1,1,LOCATION_SZONE,2,POS_FACEUP)
Debug.AddCard(3027001,1,1,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(41234315,1,1,LOCATION_SZONE,4,POS_FACEDOWN)
Debug.AddCard(33550694,1,1,LOCATION_FZONE,0,POS_FACEUP)

Debug.ReloadFieldEnd()
aux.BeginPuzzle()
