Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)

Debug.SetPlayerInfo(1,4000,0,0)

Debug.AddCard(160002044,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(160002042,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(160001025,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160001024,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160001025,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160002030,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160416007,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160421002,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160001025,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160301010,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160416007,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160421015,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(160302014,1,1,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(160002050,1,1,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(160002044,1,1,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(160001002,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.ReloadFieldEnd()
Duel.SetLP(0,200)
Duel.SetLP(1,3000)
aux.BeginPuzzle()
