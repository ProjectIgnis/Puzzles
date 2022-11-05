Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Main Deck (yours)
Debug.AddCard(160301010,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160201007,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160201003,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160004020,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160201002,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160001003,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(160201005,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160004018,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160201010,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160201009,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160004020,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160201014,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (yours)
Debug.AddCard(160201006,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(160201008,0,0,LOCATION_MZONE,3,POS_FACEUP_DEFENSE)

--Main Deck (opponent's)
Debug.AddCard(160001002,1,1,LOCATION_DECK,0,POS_FACEDOWN)

--GY (opponent's)
Debug.AddCard(160004006,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160003002,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160004031,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160003002,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160001043,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160004006,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160004046,1,1,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (opponent's)
Debug.AddCard(160004032,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE)

--Spell & Trap Zones (opponent's)
Debug.AddCard(160004055,1,1,LOCATION_SZONE,2,POS_FACEDOWN)

Debug.ReloadFieldEnd()
Duel.SetLP(0,3300)
Duel.SetLP(1,1500)
aux.BeginPuzzle()
