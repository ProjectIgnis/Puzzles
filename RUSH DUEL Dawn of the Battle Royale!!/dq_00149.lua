Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)

Debug.SetPlayerInfo(1,4000,0,0)

Debug.AddCard(160307009,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(160004041,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160402004,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160421005,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160005024,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160201018,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160004012,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160307009,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160003013,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160005003,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160202002,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.ReloadFieldEnd()
Duel.SetLP(0,4000)
Duel.SetLP(1,3400)
aux.BeginPuzzle()