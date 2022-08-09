Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Main Deck (yours)
Debug.AddCard(160201029,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160005019,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160002025,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160421003,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160006019,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160201034,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Spell & Trap Zones (yours)
Debug.AddCard(160005039,0,0,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)

--Main Deck (opponent's)
Debug.AddCard(160001012,1,1,LOCATION_DECK,0,POS_FACEDOWN)

--GY (opponent's)
Debug.AddCard(160006000,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160006012,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(160006038,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(160004028,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)

--Spell & Trap Zones (opponent's)
Debug.AddCard(160006061,1,1,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)

Debug.ReloadFieldEnd()
Duel.SetLP(0,1600)
Duel.SetLP(1,5900)
aux.BeginPuzzle()
