Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Main Deck (yours)
Debug.AddCard(160203034,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160004004,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160203035,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160006035,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160421002,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160303019,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160421005,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160428009,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160004005,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160006036,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Spell & Trap Zones (yours)
Debug.AddCard(160203036,0,0,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)

--Monster Zones (opponent's)
Debug.AddMaximumCard(1,160203006,160203005,160203007)

Debug.ReloadFieldEnd()
Duel.SetLP(0,2900)
Duel.SetLP(1,7000)
aux.BeginPuzzle()
