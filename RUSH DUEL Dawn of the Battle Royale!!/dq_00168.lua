Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)

Debug.SetPlayerInfo(1,4000,0,0)

Debug.AddCard(160203017,0,0,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)
Debug.AddCard(160203016,0,0,LOCATION_SZONE,2,POS_FACEDOWN_ATTACK)
Debug.AddCard(160203017,0,0,LOCATION_SZONE,3,POS_FACEDOWN_ATTACK)
Debug.AddCard(160002005,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160203018,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160203010,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160203011,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160203008,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160002004,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160203014,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160001006,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160203012,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160203012,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160203012,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160203014,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160005003,1,1,LOCATION_MZONE,1,POS_FACEDOWN_DEFENSE)
Debug.AddCard(160201015,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(160001011,1,1,LOCATION_MZONE,3,POS_FACEDOWN_DEFENSE)
Debug.AddCard(160307004,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160201023,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160005023,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160201020,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.ReloadFieldEnd()
Duel.SetLP(0,1200)
Duel.SetLP(1,3300)
aux.BeginPuzzle()
