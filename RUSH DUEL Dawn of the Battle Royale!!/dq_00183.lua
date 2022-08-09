Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Main Deck (yours)
Debug.AddCard(160201031,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160004014,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160004017,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160401004,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160005036,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160201035,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160421002,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160006018,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(160005019,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160002025,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(160204015,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(160204022,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)

Debug.ReloadFieldEnd()
Duel.SetLP(0,2800)
Duel.SetLP(1,3600)
aux.BeginPuzzle()
