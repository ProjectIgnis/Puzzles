Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Main Deck (yours)
Debug.AddCard(160401004,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160204045,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160401004,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160401004,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160201035,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Extra Deck (yours)
Debug.AddCard(160204029,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(160204030,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160004017,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160201031,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160204031,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160002025,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(160204032,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160204032,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160204032,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)

--Spell & Trap Zones (yours)
Debug.AddCard(160005039,0,0,LOCATION_SZONE,1,POS_FACEDOWN)

--Hand (opponent's)
Debug.AddCard(160005023,1,1,LOCATION_HAND,0,POS_FACEDOWN)

--GY (opponent's)
Debug.AddCard(160201023,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160201018,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160005003,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160201017,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(160201020,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)

Debug.ReloadFieldEnd()
Duel.SetLP(0,1300)
Duel.SetLP(1,9100)
aux.BeginPuzzle()
