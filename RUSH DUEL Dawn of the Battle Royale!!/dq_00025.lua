Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)

Debug.SetPlayerInfo(1,4000,0,0)

Debug.AddCard(160002001,0,0,LOCATION_MZONE,2,POS_FACEUP_DEFENSE)
Debug.AddCard(160001025,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160001024,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160002020,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160002019,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160001002,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160302009,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160421002,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(160001002,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.ReloadFieldEnd()
Duel.SetLP(0,100)
Duel.SetLP(1,500)
aux.BeginPuzzle()
