Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)

Debug.SetPlayerInfo(1,4000,0,0)

Debug.AddCard(160203027,0,0,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)
Debug.AddCard(160201009,0,0,LOCATION_SZONE,2,POS_FACEDOWN_ATTACK)
Debug.AddCard(160202037,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160202038,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160203024,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160003026,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160203025,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160203024,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160201022,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160202039,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160203024,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160201022,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160202039,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160202040,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160203025,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160004020,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160203025,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160005015,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.ReloadFieldEnd()
Duel.SetLP(0,1200)
Duel.SetLP(1,11000)
aux.BeginPuzzle()
