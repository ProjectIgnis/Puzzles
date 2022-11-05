Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Main Deck (yours)
Debug.AddCard(160301010,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160302011,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160001025,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160001024,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160302006,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160302001,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Main Deck (opponent's)
Debug.AddCard(160001002,1,1,LOCATION_DECK,0,POS_FACEDOWN)

--GY (opponent's)
Debug.AddCard(160003002,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160003002,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160003002,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160003054,1,1,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (opponent's)
Debug.AddCard(160003032,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(160003032,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(160003032,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)

--Spell & Trap Zones (opponent's)
Debug.AddCard(160003054,1,1,LOCATION_SZONE,2,POS_FACEDOWN)

Debug.ReloadFieldEnd()
Duel.SetLP(0,100)
Duel.SetLP(1,2500)
aux.BeginPuzzle()
