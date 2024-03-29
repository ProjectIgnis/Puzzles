Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Main Deck (yours)
Debug.AddCard(160201037,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160201029,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160006013,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160001028,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160005002,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160005039,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160002023,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160005036,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(160005019,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160306003,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160002025,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160001028,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160201028,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Spell & Trap Zones (yours)
Debug.AddCard(160005040,0,0,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)

--Monster Zones (opponent's)
Debug.AddCard(160204017,1,1,LOCATION_MZONE,1,POS_FACEUP_DEFENSE)
Debug.AddCard(160204015,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(160002030,1,1,LOCATION_MZONE,3,POS_FACEUP_DEFENSE)

Debug.ReloadFieldEnd()
Duel.SetLP(0,900)
Duel.SetLP(1,6500)
aux.BeginPuzzle()
