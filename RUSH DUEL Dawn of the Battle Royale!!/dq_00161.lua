Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)

Debug.SetPlayerInfo(1,4000,0,0)

Debug.AddCard(160005044,0,0,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)
Debug.AddCard(160001037,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160004025,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160004023,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160004022,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160004021,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160203030,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160004001,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160004002,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160004003,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160309017,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160309021,1,1,LOCATION_MZONE,1,POS_FACEUP_DEFENSE)
Debug.AddCard(160006026,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE)
Debug.AddCard(160309021,1,1,LOCATION_MZONE,3,POS_FACEUP_DEFENSE)
Debug.AddCard(160003056,1,1,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)
Debug.AddCard(160006051,1,1,LOCATION_FZONE,0,POS_FACEUP)
Debug.AddCard(160006009,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.ReloadFieldEnd()
Duel.SetLP(0,800)
Duel.SetLP(1,4000)
aux.BeginPuzzle()
