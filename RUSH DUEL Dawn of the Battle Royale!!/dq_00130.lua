Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Main Deck (yours)
Debug.AddCard(160302010,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160302010,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160405001,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160302003,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160001026,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160001037,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160302005,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160302007,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160302008,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160302002,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160302008,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160302004,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160002021,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160002022,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160302011,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160402002,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160002001,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160002020,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160302009,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(160302001,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160302003,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160001024,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160001037,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160302005,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160302012,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160003043,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160302009,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160302014,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160302013,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160302006,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160302012,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160302007,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160003043,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160405003,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(160302006,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(160302005,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(160001025,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK)

--Main Deck (opponent's)
Debug.AddCard(160001002,1,1,LOCATION_DECK,0,POS_FACEDOWN)

--GY (opponent's)
Debug.AddCard(160202022,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160202022,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160202022,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160202021,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(160002030,1,1,LOCATION_MZONE,2,POS_FACEDOWN_DEFENSE)

Debug.ReloadFieldEnd()
Duel.SetLP(0,4000)
Duel.SetLP(1,6700)
aux.BeginPuzzle()
