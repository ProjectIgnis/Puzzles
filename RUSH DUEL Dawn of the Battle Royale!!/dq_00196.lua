Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)

Debug.SetPlayerInfo(1,4000,0,0)

Debug.AddCard(160006043,0,0,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)
Debug.AddCard(160004042,0,0,LOCATION_FZONE,0,POS_FACEDOWN)
Debug.AddCard(160203041,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160006001,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160006038,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160006034,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160006001,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160203042,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160006021,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(160006059,1,1,LOCATION_SZONE,2,POS_FACEDOWN_ATTACK)
Debug.AddCard(160202046,1,1,LOCATION_FZONE,0,POS_FACEUP)
Debug.AddCard(160006013,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160306026,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160006059,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.ReloadFieldEnd()
Duel.SetLP(0,1000)
Duel.SetLP(1,2700)
aux.BeginPuzzle()
