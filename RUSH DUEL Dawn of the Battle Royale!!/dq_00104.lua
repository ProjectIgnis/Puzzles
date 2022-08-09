Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Main Deck (yours)
Debug.AddCard(160301010,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160004007,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160004008,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160004009,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160004008,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160004033,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Main Deck (opponent's)
Debug.AddCard(160001002,1,1,LOCATION_DECK,0,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(160004011,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(160004012,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(160004006,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)

Debug.ReloadFieldEnd()
Duel.SetLP(0,200)
Duel.SetLP(1,4100)
aux.BeginPuzzle()
