Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)

Debug.SetPlayerInfo(1,4000,0,0)

Debug.AddCard(160003010,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(160005047,0,0,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)
Debug.AddCard(160003028,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160002008,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160005025,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160003027,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160403002,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160002006,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160203022,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(160202016,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)
Debug.AddCard(160005065,1,1,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)
Debug.AddCard(160202014,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160202017,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.ReloadFieldEnd()
Duel.SetLP(0,100)
Duel.SetLP(1,5900)
aux.BeginPuzzle()
