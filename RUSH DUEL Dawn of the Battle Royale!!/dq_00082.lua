Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)

Debug.SetPlayerInfo(1,4000,0,0)

Debug.AddCard(160202014,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160202007,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160202012,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160421006,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160202010,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160301010,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160002030,1,1,LOCATION_MZONE,2,POS_FACEDOWN_DEFENSE)
Debug.AddCard(160001002,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.ReloadFieldEnd()
Duel.SetLP(0,100)
Duel.SetLP(1,2800)
aux.BeginPuzzle()
