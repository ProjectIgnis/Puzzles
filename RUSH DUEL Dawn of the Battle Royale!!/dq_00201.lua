Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)

Debug.SetPlayerInfo(1,4000,0,0)

Debug.AddCard(160004011,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(160003034,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(160003051,0,0,LOCATION_SZONE,2,POS_FACEDOWN_ATTACK)
Debug.AddCard(160003052,0,0,LOCATION_FZONE,0,POS_FACEDOWN)
Debug.AddCard(160003055,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160003052,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160006051,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160002013,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160002032,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160002013,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160002012,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160004011,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160201001,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(160004020,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(160421004,1,1,LOCATION_MZONE,3,POS_FACEUP_DEFENSE)
Debug.AddCard(160006060,1,1,LOCATION_SZONE,2,POS_FACEDOWN_ATTACK)
Debug.AddCard(160305006,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160201002,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160005020,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.ReloadFieldEnd()
Duel.SetLP(0,600)
Duel.SetLP(1,3800)
aux.BeginPuzzle()
