Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Main Deck (yours)
Debug.AddCard(160005062,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160004041,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160201017,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(160001011,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160201020,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160005003,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160002031,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(160003000,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Spell & Trap Zones (yours)
Debug.AddCard(160005050,0,0,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)

--Monster Zones (opponent's)
Debug.AddCard(160204037,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)

Debug.ReloadFieldEnd()
Duel.SetLP(0,1200)
Duel.SetLP(1,1200)
aux.BeginPuzzle()
