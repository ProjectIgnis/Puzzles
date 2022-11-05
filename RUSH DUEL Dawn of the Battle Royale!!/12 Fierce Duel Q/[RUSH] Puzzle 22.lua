Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Main Deck (yours)
Debug.AddCard(160201032,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160001028,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160005002,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160306003,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160306012,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(160006013,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160201035,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (yours)
Debug.AddCard(160201035,0,0,LOCATION_MZONE,2,POS_FACEUP_DEFENSE)

--Spell & Trap Zones (yours)
Debug.AddCard(160006041,0,0,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)
Debug.AddCard(160005039,0,0,LOCATION_SZONE,3,POS_FACEDOWN_ATTACK)

--GY (opponent's)
Debug.AddCard(160304012,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160002014,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160304012,1,1,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (opponent's)
Debug.AddCard(160006013,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(160006013,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)

--Spell & Trap Zones (opponent's)
Debug.AddCard(160306026,1,1,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)
Debug.AddCard(160006061,1,1,LOCATION_SZONE,3,POS_FACEDOWN_ATTACK)

Debug.ReloadFieldEnd()
Duel.SetLP(0,600)
Duel.SetLP(1,4500)
aux.BeginPuzzle()
