Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Main Deck (yours)
Debug.AddCard(160003004,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160005030,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160005011,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160002043,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160006029,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (opponent's)
Debug.AddCard(160003026,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160204009,1,1,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (opponent's)
Debug.AddCard(160001000,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE)

Debug.ReloadFieldEnd()
Duel.SetLP(0,6000)
Duel.SetLP(1,2000)
aux.BeginPuzzle()
