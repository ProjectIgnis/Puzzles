Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Main Deck (yours)
Debug.AddCard(160203014,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160203011,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160412007,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160412007,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Extra Deck (yours)
Debug.AddCard(160204037,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160002029,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160203011,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160203014,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160002005,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160203010,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Spell & Trap Zones (yours)
Debug.AddCard(160203018,0,0,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)
Debug.AddCard(160203017,0,0,LOCATION_SZONE,2,POS_FACEDOWN_ATTACK)
Debug.AddCard(160204051,0,0,LOCATION_SZONE,3,POS_FACEDOWN_ATTACK)

--Hand (opponent's)
Debug.AddCard(160204045,1,1,LOCATION_HAND,0,POS_FACEDOWN)

--GY (opponent's)
Debug.AddCard(160204004,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(160204001,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(160002030,1,1,LOCATION_MZONE,3,POS_FACEDOWN_DEFENSE)

--Spell & Trap Zones (opponent's)
Debug.AddCard(160204014,1,1,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)

Debug.ReloadFieldEnd()
Duel.SetLP(0,2400)
Duel.SetLP(1,1500)
aux.BeginPuzzle()
