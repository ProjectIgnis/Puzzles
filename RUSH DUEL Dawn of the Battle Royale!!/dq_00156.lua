Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)

Debug.SetPlayerInfo(1,4000,0,0)

Debug.AddCard(160003035,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(160412008,0,0,LOCATION_MZONE,2,POS_FACEUP_DEFENSE)
Debug.AddCard(160004054,0,0,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)
Debug.AddCard(160203033,0,0,LOCATION_SZONE,3,POS_FACEDOWN_ATTACK)
Debug.AddCard(160005059,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160005060,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160003018,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160003035,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160001037,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160203033,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160005034,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160001012,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160419006,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(160004036,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE)
Debug.AddCard(160004058,1,1,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)
Debug.AddCard(160004036,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.ReloadFieldEnd()
Duel.SetLP(0,1000)
Duel.SetLP(1,5000)
aux.BeginPuzzle()
