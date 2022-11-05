Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Main Deck (yours)
Debug.AddCard(160203014,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160002005,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160203013,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160002029,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160002004,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160006037,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160203009,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(160005054,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160203015,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Spell & Trap Zones (yours)
Debug.AddCard(160412004,0,0,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)
Debug.AddCard(160203017,0,0,LOCATION_SZONE,2,POS_FACEDOWN_ATTACK)

--Hand (opponent's)
Debug.AddCard(160004020,1,1,LOCATION_HAND,0,POS_FACEDOWN)

--GY (opponent's)
Debug.AddCard(160203027,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160202038,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160203026,1,1,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (opponent's)
Debug.AddCard(160202037,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE)

--Spell & Trap Zones (opponent's)
Debug.AddCard(160001046,1,1,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)

Debug.ReloadFieldEnd()
Duel.SetLP(0,500)
Duel.SetLP(1,4900)
aux.BeginPuzzle()
