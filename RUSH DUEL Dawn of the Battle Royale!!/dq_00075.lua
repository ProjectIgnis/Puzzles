Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)

Debug.SetPlayerInfo(1,4000,0,0)

Debug.AddCard(160003049,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(160003051,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(160002032,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160003050,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160002012,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160002013,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160003034,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160001007,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160002013,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160002021,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE)
Debug.AddCard(160002030,1,1,LOCATION_MZONE,3,POS_FACEUP_DEFENSE)
Debug.AddCard(160001002,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.ReloadFieldEnd()
Duel.SetLP(0,100)
Duel.SetLP(1,2600)
aux.BeginPuzzle()
