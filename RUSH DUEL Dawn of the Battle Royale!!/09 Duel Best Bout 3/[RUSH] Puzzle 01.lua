Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Main Deck (yours)
Debug.AddCard(160301010,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160302005,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160302006,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160003025,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160002022,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160405003,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(160302009,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160302010,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160302006,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160302003,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160302002,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Main Deck (opponent's)
Debug.AddCard(160001002,1,1,LOCATION_DECK,0,POS_FACEDOWN)

--GY (opponent's)
Debug.AddCard(160302007,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160002019,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160002020,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160001026,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160302008,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160001024,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160001025,1,1,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (opponent's)
Debug.AddCard(160410002,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(160302004,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)

--Spell & Trap Zones (opponent's)
Debug.AddCard(160001037,1,1,LOCATION_SZONE,1,POS_FACEDOWN)

Debug.ReloadFieldEnd()
Duel.SetLP(0,1000)
Duel.SetLP(1,3300)
aux.BeginPuzzle()
