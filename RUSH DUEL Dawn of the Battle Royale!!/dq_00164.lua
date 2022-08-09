Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Main Deck (yours)
Debug.AddCard(160412009,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160005011,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160412002,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160004020,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160201001,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160005028,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160005007,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Spell & Trap Zones (yours)
Debug.AddCard(160005048,0,0,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)

--Main Deck (opponent's)
Debug.AddCard(160202014,1,1,LOCATION_DECK,0,POS_FACEDOWN)

--GY (opponent's)
Debug.AddCard(160202017,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(160202013,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(160308005,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)

Debug.ReloadFieldEnd()
Duel.SetLP(0,800)
Duel.SetLP(1,2600)
aux.BeginPuzzle()
