Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)

Debug.SetPlayerInfo(1,4000,0,0)

Debug.AddCard(160006046,0,0,LOCATION_SZONE,2,POS_FACEDOWN_ATTACK)
Debug.AddCard(160006023,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160006047,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160006002,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160006024,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160003028,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160006011,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160006003,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160003027,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160006023,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160004017,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(160204030,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(160204031,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)
Debug.AddCard(160203004,1,1,LOCATION_SZONE,2,POS_FACEDOWN_ATTACK)
Debug.ReloadFieldEnd()
Duel.SetLP(0,300)
Duel.SetLP(1,5100)
aux.BeginPuzzle()
