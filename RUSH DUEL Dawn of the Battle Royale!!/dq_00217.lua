Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Main Deck (yours)
Debug.AddCard(160204010,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160204050,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160003001,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160204021,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160301006,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Extra Deck (yours)
Debug.AddCard(160204015,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160303019,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160301001,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160303009,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160301005,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160202022,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (opponent's)
Debug.AddCard(160204026,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160302001,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160204050,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160005001,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160001015,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160406009,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(160204022,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)

--Spell & Trap Zones (opponent's)
Debug.AddCard(160204028,1,1,LOCATION_SZONE,2,POS_FACEDOWN_ATTACK)

Debug.ReloadFieldEnd()
Duel.SetLP(0,2500)
Duel.SetLP(1,1500)
aux.BeginPuzzle()
