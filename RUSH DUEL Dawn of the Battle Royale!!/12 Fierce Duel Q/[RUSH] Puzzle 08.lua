Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Main Deck (yours)
Debug.AddCard(160003005,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160403001,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160006021,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160005022,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160002014,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(160001016,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160001022,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160202021,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (yours)
Debug.AddCard(160406006,0,0,LOCATION_MZONE,2,POS_FACEUP_DEFENSE)
Debug.AddCard(160001012,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK)

--Spell & Trap Zones (yours)
Debug.AddCard(160203032,0,0,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)

--Hand (opponent's)
Debug.AddCard(160001029,1,1,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(160201002,1,1,LOCATION_MZONE,1,POS_FACEUP_DEFENSE)
Debug.AddCard(160001000,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)

--Spell & Trap Zones (opponent's)
Debug.AddCard(160412005,1,1,LOCATION_SZONE,2,POS_FACEDOWN_ATTACK)

Debug.ReloadFieldEnd()
Duel.SetLP(0,3000)
Duel.SetLP(1,1600)
aux.BeginPuzzle()
