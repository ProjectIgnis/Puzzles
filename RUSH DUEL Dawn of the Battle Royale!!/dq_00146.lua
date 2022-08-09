Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Main Deck (yours)
Debug.AddCard(160203025,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160202040,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160202038,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160005020,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160004018,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160202039,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160202037,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160201004,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Spell & Trap Zones (yours)
Debug.AddCard(160004039,0,0,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)

--Hand (opponent's)
Debug.AddCard(160201022,1,1,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(160005015,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)

--Spell & Trap Zones (opponent's)
Debug.AddCard(160001046,1,1,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)

Debug.ReloadFieldEnd()
Duel.SetLP(0,800)
Duel.SetLP(1,700)
aux.BeginPuzzle()
