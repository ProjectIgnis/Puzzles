Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)

Debug.SetPlayerInfo(1,4000,0,0)

Debug.AddCard(160203036,0,0,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)
Debug.AddCard(160204027,0,0,LOCATION_SZONE,2,POS_FACEDOWN_ATTACK)
Debug.AddCard(160203037,0,0,LOCATION_SZONE,3,POS_FACEDOWN_ATTACK)
Debug.AddCard(160004026,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160004029,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160203035,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160004028,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160004005,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160004004,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160204034,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(160003000,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)
Debug.AddCard(160204051,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160201020,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160307004,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.ReloadFieldEnd()
Duel.SetLP(0,1200)
Duel.SetLP(1,5800)
aux.BeginPuzzle()