Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)

Debug.SetPlayerInfo(1,4000,0,0)

Debug.AddCard(160201001,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160003044,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160201011,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160001003,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160001003,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160201008,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160421004,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160003026,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160421016,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(160404003,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160404003,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160404002,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.ReloadFieldEnd()
Duel.SetLP(0,1600)
Duel.SetLP(1,4000)
aux.BeginPuzzle()
