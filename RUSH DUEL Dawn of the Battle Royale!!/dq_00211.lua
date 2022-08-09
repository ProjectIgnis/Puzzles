Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Extra Deck (yours)
Debug.AddCard(160204024,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160001025,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160002020,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160002001,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160001024,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160001026,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(160302009,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)

--Spell & Trap Zones (yours)
Debug.AddCard(160304023,0,0,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)
Debug.AddCard(160204051,0,0,LOCATION_SZONE,2,POS_FACEDOWN_ATTACK)
Debug.AddCard(160302011,0,0,LOCATION_SZONE,3,POS_FACEDOWN_ATTACK)

--GY (opponent's)
Debug.AddCard(160416003,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160428009,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(160006014,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(160204015,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(160428010,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)

--Spell & Trap Zones (opponent's)
Debug.AddCard(160301013,1,1,LOCATION_SZONE,2,POS_FACEDOWN_ATTACK)
Debug.AddCard(160417005,1,1,LOCATION_SZONE,3,POS_FACEDOWN_ATTACK)

Debug.ReloadFieldEnd()
Duel.SetLP(0,3100)
Duel.SetLP(1,4500)
aux.BeginPuzzle()
