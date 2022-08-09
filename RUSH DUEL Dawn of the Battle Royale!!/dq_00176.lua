Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Main Deck (yours)
Debug.AddCard(160428009,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160428010,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160402005,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160203003,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160203002,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160203001,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160004032,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(160004015,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)

--GY (opponent's)
Debug.AddCard(160005009,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160005009,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160005009,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160005032,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)

--Spell & Trap Zones (opponent's)
Debug.AddCard(160005058,1,1,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)

Debug.ReloadFieldEnd()
Duel.SetLP(0,1600)
Duel.SetLP(1,2800)
aux.BeginPuzzle()
