Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Main Deck (yours)
Debug.AddCard(160204050,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160201023,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160002031,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Extra Deck (yours)
Debug.AddCard(160204034,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(160204034,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(160204034,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160201020,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160307004,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160005024,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160307004,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160005003,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Spell & Trap Zones (yours)
Debug.AddCard(160204049,0,0,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)
Debug.AddCard(160204050,0,0,LOCATION_SZONE,2,POS_FACEDOWN_ATTACK)

--Monster Zones (opponent's)
Debug.AddMaximumCard(1,160203006,160203005,160203007)

Debug.ReloadFieldEnd()
Duel.SetLP(0,100)
Duel.SetLP(1,8000)
aux.BeginPuzzle()
