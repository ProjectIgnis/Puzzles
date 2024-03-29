Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Main Deck (yours)
Debug.AddCard(160201032,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160201034,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160201031,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160004017,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160306003,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160005018,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160201038,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160002023,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160005040,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160201036,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(160001028,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160005002,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160201039,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160005002,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160201038,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160004017,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160201035,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160306012,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160201031,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160201034,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Spell & Trap Zones (yours)
Debug.AddCard(160201036,0,0,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)
Debug.AddCard(160201039,0,0,LOCATION_SZONE,2,POS_FACEDOWN_ATTACK)

--GY (opponent's)
Debug.AddCard(160203029,1,1,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (opponent's)
Debug.AddCard(160004024,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)

--Spell & Trap Zones (opponent's)
Debug.AddCard(160004054,1,1,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)

Debug.ReloadFieldEnd()
Duel.SetLP(0,900)
Duel.SetLP(1,1500)
aux.BeginPuzzle()
