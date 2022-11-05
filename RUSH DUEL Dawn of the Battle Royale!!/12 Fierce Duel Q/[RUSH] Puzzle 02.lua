Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Main Deck (yours)
Debug.AddCard(160002016,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160006014,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160301001,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160401001,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160003014,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160001032,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Spell & Trap Zones (yours)
Debug.AddCard(160301011,0,0,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)

--GY (opponent's)
Debug.AddCard(160001015,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160003007,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160001002,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160404001,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160001000,1,1,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (opponent's)
Debug.AddCard(160003025,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)

--Spell & Trap Zones (opponent's)
Debug.AddCard(160202008,1,1,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)

Debug.ReloadFieldEnd()
Duel.SetLP(0,2900)
Duel.SetLP(1,3000)
aux.BeginPuzzle()
