Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)

Debug.SetPlayerInfo(1,4000,0,0)

Debug.AddCard(160301002,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(160001037,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(160301012,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160301012,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160301012,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160301010,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160428009,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(160001048,1,1,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(160001042,1,1,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(160001042,1,1,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(160001002,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160301007,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160428010,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160301008,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160301002,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.ReloadFieldEnd()
Duel.SetLP(0,100)
Duel.SetLP(1,100)
aux.BeginPuzzle()