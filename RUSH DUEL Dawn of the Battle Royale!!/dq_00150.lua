Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Main Deck (yours)
Debug.AddCard(160004012,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160403002,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160201018,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160005052,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160421005,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160402004,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(160002017,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160201015,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(160003035,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)

--Spell & Trap Zones (yours)
Debug.AddCard(160005041,0,0,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)

--Hand (opponent's)
Debug.AddCard(160204051,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160402009,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160421002,1,1,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(160204022,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)

--Spell & Trap Zones (opponent's)
Debug.AddCard(160302011,1,1,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)

Debug.ReloadFieldEnd()
Duel.SetLP(0,2000)
Duel.SetLP(1,1500)
aux.BeginPuzzle()
