Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Hand (yours)
Debug.AddCard(160002000,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160201035,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160005035,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160002002,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160004015,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(160006024,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160003032,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160005025,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Spell & Trap Zones (yours)
Debug.AddCard(160002037,0,0,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)
Debug.AddCard(160006039,0,0,LOCATION_SZONE,2,POS_FACEDOWN_ATTACK)
Debug.AddCard(160001043,0,0,LOCATION_SZONE,3,POS_FACEDOWN_ATTACK)

--GY (opponent's)
Debug.AddCard(160405002,1,1,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (opponent's)
Debug.AddCard(160001000,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(160002030,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE)

Debug.ReloadFieldEnd()
Duel.SetLP(0,1000)
Duel.SetLP(1,2500)
aux.BeginPuzzle()
