Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)

Debug.SetPlayerInfo(1,4000,0,0)

Debug.AddCard(160204051,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(160006036,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160305015,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160201007,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160402006,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160204051,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160204033,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(160004007,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(160004008,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(160004033,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)
Debug.AddCard(160004056,1,1,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(160004009,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.ReloadFieldEnd()
Duel.SetLP(0,2500)
Duel.SetLP(1,2500)
aux.BeginPuzzle()
