Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Hand (yours)
Debug.AddCard(160005000,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160004039,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160005001,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160005005,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (opponent's)
Debug.AddCard(160304012,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160304012,1,1,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (opponent's)
Debug.AddMaximumCard(1,160202011,160202010,160202012)

Debug.ReloadFieldEnd()
Duel.SetLP(0,200)
Duel.SetLP(1,100)
aux.BeginPuzzle()
