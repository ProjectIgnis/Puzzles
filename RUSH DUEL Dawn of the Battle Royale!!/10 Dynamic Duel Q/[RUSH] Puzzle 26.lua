Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Main Deck (yours)
Debug.AddCard(160003008,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160003019,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160003030,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160002010,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160002028,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160002011,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160003019,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Spell & Trap Zones (yours)
Debug.AddCard(160005049,0,0,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)
Debug.AddCard(160002039,0,0,LOCATION_FZONE,0,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(160003012,1,1,LOCATION_MZONE,1,POS_FACEUP_DEFENSE)
Debug.AddCard(160002032,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE)
Debug.AddCard(160003012,1,1,LOCATION_MZONE,3,POS_FACEUP_DEFENSE)

Debug.ReloadFieldEnd()
Duel.SetLP(0,2500)
Duel.SetLP(1,5000)
aux.BeginPuzzle()
