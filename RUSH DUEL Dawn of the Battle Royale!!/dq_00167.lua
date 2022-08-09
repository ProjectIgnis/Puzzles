Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Main Deck (yours)
Debug.AddCard(160006033,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160203007,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160203005,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160203003,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160203002,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160203001,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160203022,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160006033,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160004017,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160202014,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160203021,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160202048,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160203006,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(160002044,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160002044,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160006033,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)

--Spell & Trap Zones (yours)
Debug.AddCard(160002044,0,0,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)

--Main Deck (opponent's)
Debug.AddCard(160301006,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160301010,1,1,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (opponent's)
Debug.AddCard(160428009,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160428010,1,1,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(160421015,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(160411002,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)

--Spell & Trap Zones (opponent's)
Debug.AddCard(160417005,1,1,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)

Debug.ReloadFieldEnd()
Duel.SetLP(0,1200)
Duel.SetLP(1,4000)
aux.BeginPuzzle()
