Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)

Debug.SetPlayerInfo(1,4000,0,0)

Debug.AddCard(160204051,0,0,LOCATION_SZONE,2,POS_FACEDOWN_ATTACK)
Debug.AddCard(160004042,0,0,LOCATION_FZONE,0,POS_FACEUP)
Debug.AddCard(160005037,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160203029,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160004025,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160309011,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160004002,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160421007,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160309027,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160004042,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160203030,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160203030,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160204036,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(160308005,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(160203021,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(160204035,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)
Debug.AddCard(160421006,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160202015,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160006033,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160202017,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160202014,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160202013,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.ReloadFieldEnd()
Duel.SetLP(0,2400)
Duel.SetLP(1,2300)
aux.BeginPuzzle()
