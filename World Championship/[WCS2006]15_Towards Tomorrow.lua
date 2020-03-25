--[[message
Reproduces a Duel Puzzle from "Ultimate Masters: World Championship 2006"
	
	
	Your Starting LP: 1000
	Opponent's Starting LP: 8000
	Complexity: ?/10.
	Objective: Win this turn.
]]
Debug.SetAIName("WCS 2006")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)

Debug.SetPlayerInfo(0,1000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

Debug.AddCard(40640057,1,1,LOCATION_HAND,0,POS_FACEDOWN)

Debug.AddCard(31887905,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(68881649,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(04376658,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(31764353,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(00759393,0,0,LOCATION_MZONE,1,POS_FACEDOWN_DEFENSE)
Debug.AddCard(37970940,0,0,LOCATION_MZONE,2,POS_FACEDOWN_DEFENSE)
Debug.AddCard(74364659,0,0,LOCATION_MZONE,3,POS_FACEDOWN_DEFENSE)
Debug.AddCard(37744402,0,0,LOCATION_MZONE,4,POS_FACEDOWN_DEFENSE)
Debug.AddCard(75356564,1,1,LOCATION_MZONE,0,POS_FACEUP_DEFENSE)
Debug.AddCard(53776525,1,1,LOCATION_MZONE,1,POS_FACEUP_DEFENSE)
Debug.AddCard(75889523,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE)
Debug.AddCard(88753985,1,1,LOCATION_MZONE,3,POS_FACEUP_DEFENSE)
Debug.AddCard(31305911,1,1,LOCATION_MZONE,4,POS_FACEUP_ATTACK)
Debug.AddCard(42945701,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(70156997,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(06540606,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(79333300,0,0,LOCATION_SZONE,4,POS_FACEDOWN)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win this turn.")
aux.BeginPuzzle()

--[[
Solution:
-Flip Summon 'Hiita the Fire Charmer' and select opponent's 'Fox Fire'
-Special Summon 'Familiar-Possessed - Hiita' from your deck
-Flip Summon 'Aussa the Earth Charmer' and select opponent's 'Archfiend Marmot of Nefariousness'
-Special Summon 'Familiar-Possessed - Aussa' from your deck
-Flip Summon 'Wynn the Wind Charmer' and select opponent's 'Petit Dragon'
-Special Summon 'Familiar-Possessed - Wynn' from your deck
-Flip Summon 'Eria the Water Charmer' and select opponent's 'Gigobyte'
-Activate 'Spiritual Water Art - Aoi', tribute 'Gigobyte'
-Attack 'Marshmallon' with 'Familiar-Possessed Wynn'
-Activate 'Spiritual Wind Art - Miyabi'
-Attack directly with everyone
-Activate 'Spiritual Fire Art - Kurenai'
-Activate 'Spiritual Earth Art - Kurogane'
-Attack with the new monster
]]