Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Main Deck (yours)
Debug.AddCard(160301010,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160003037,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160201007,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160201011,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160001037,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(160403001,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)

--Main Deck (opponent's)
Debug.AddCard(160001002,1,1,LOCATION_DECK,0,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(160421015,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)

Debug.ReloadFieldEnd()
Duel.SetLP(0,100)
Duel.SetLP(1,700)
aux.BeginPuzzle()
