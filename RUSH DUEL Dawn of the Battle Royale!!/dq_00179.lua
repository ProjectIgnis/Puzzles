Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)

Debug.SetPlayerInfo(1,4000,0,0)

Debug.AddCard(160301011,0,0,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)
Debug.AddCard(160001032,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160003014,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160428010,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160428009,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160006014,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160416003,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160410004,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(160202008,1,1,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)
Debug.AddCard(160418001,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160421016,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160001002,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160003007,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160001015,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.ReloadFieldEnd()
Duel.SetLP(0,2900)
Duel.SetLP(1,3000)
aux.BeginPuzzle()
