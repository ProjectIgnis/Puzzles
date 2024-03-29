Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Main Deck (yours)
Debug.AddCard(160202013,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160201029,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160301003,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160201032,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160302003,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160002024,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160201033,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160306009,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160005019,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160002023,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(160005019,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (opponent's)
Debug.AddCard(160203008,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(160002005,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)

Debug.ReloadFieldEnd()
Duel.SetLP(0,1900)
Duel.SetLP(1,2300)
aux.BeginPuzzle()
