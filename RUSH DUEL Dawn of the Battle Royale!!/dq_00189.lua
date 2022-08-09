Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Main Deck (yours)
Debug.AddCard(160006012,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160309021,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160002042,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160006007,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160006026,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160309021,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(160202027,0,0,LOCATION_MZONE,1,POS_FACEUP_DEFENSE)

--Spell & Trap Zones (yours)
Debug.AddCard(160201009,0,0,LOCATION_SZONE,3,POS_FACEDOWN_ATTACK)

--Monster Zones (opponent's)
Debug.AddCard(160004028,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)

Debug.ReloadFieldEnd()
Duel.SetLP(0,1600)
Duel.SetLP(1,2400)
aux.BeginPuzzle()
