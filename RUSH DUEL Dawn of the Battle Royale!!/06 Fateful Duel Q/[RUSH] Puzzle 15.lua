Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Main Deck (yours)
Debug.AddCard(160302004,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160302007,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160302007,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160405003,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160004040,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160003024,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160302001,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160302010,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160302010,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(160003022,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160003023,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (yours)
Debug.AddCard(160003025,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)

--Main Deck (opponent's)
Debug.AddCard(160001002,1,1,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (opponent's)
Debug.AddCard(160004033,1,1,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(160004007,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(160004009,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)

--Spell & Trap Zones (opponent's)
Debug.AddCard(160004057,1,1,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(160004056,1,1,LOCATION_SZONE,3,POS_FACEDOWN)

Debug.ReloadFieldEnd()
Duel.SetLP(0,100)
Duel.SetLP(1,8000)
aux.BeginPuzzle()
