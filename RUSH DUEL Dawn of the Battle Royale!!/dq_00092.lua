Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)

Debug.SetPlayerInfo(1,4000,0,0)

Debug.AddCard(160301002,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK)
Debug.AddCard(160301007,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160301008,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160301004,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160402003,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160428009,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160301005,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160003001,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160001019,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160301008,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160301006,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160301010,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160202036,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE)
Debug.AddCard(160202041,1,1,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(160202040,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160202039,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160202038,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160202038,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160202038,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.ReloadFieldEnd()
Duel.SetLP(0,100)
Duel.SetLP(1,3300)
aux.BeginPuzzle()