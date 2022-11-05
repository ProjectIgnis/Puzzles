Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Main Deck (yours)
Debug.AddCard(160302007,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160003007,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160003021,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160003007,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160302010,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160003023,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160003022,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160003024,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Main Deck (opponent's)
Debug.AddCard(160301010,1,1,LOCATION_DECK,0,POS_FACEDOWN)

--GY (opponent's)
Debug.AddCard(160301008,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160301006,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160401001,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160002016,1,1,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (opponent's)
Debug.AddCard(160301001,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)

--Spell & Trap Zones (opponent's)
Debug.AddCard(160301013,1,1,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(160002039,1,1,LOCATION_FZONE,0,POS_FACEUP)

Debug.ReloadFieldEnd()
Duel.SetLP(0,100)
Duel.SetLP(1,3000)
aux.BeginPuzzle()
