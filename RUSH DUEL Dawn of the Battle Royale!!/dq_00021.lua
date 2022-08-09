Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Main Deck (yours)
Debug.AddCard(160301006,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160301010,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160402001,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160301008,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160301007,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160301005,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160428009,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Spell & Trap Zones (yours)
Debug.AddCard(160301012,0,0,LOCATION_SZONE,1,POS_FACEDOWN)

--Main Deck (opponent's)
Debug.AddCard(160001002,1,1,LOCATION_DECK,0,POS_FACEDOWN)

--GY (opponent's)
Debug.AddCard(160301002,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160301008,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160428010,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160301007,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(160418001,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)

--Spell & Trap Zones (opponent's)
Debug.AddCard(160301013,1,1,LOCATION_SZONE,1,POS_FACEDOWN)

Debug.ReloadFieldEnd()
Duel.SetLP(0,100)
Duel.SetLP(1,1600)
aux.BeginPuzzle()
