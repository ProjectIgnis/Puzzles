Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)

Debug.SetPlayerInfo(1,4000,0,0)

Debug.AddCard(160309027,0,0,LOCATION_FZONE,0,POS_FACEDOWN)
Debug.AddCard(160309017,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160203029,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160004025,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160421007,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160203049,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160004001,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160203029,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160201001,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(160004020,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(160421004,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)
Debug.ReloadFieldEnd()
Duel.SetLP(0,2900)
Duel.SetLP(1,1000)
aux.BeginPuzzle()
