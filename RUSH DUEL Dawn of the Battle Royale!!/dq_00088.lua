Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)

Debug.SetPlayerInfo(1,4000,0,0)

Debug.AddCard(160202046,0,0,LOCATION_FZONE,0,POS_FACEUP)
Debug.AddCard(160202043,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160401002,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160202043,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160202045,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160202044,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160301010,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160421003,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(160428009,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(160421002,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)
Debug.AddCard(160001002,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.ReloadFieldEnd()
Duel.SetLP(0,100)
Duel.SetLP(1,2500)
aux.BeginPuzzle()
