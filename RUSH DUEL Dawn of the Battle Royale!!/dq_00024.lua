Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Main Deck (yours)
Debug.AddCard(160301005,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160301006,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160301010,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160416007,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160428009,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160002018,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160416007,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160428010,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(160416007,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)

--Main Deck (opponent's)
Debug.AddCard(160001002,1,1,LOCATION_DECK,0,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(160421002,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(160418001,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(160002021,1,1,LOCATION_MZONE,3,POS_FACEUP_DEFENSE)

Debug.ReloadFieldEnd()
Duel.SetLP(0,600)
Duel.SetLP(1,3000)
aux.BeginPuzzle()
