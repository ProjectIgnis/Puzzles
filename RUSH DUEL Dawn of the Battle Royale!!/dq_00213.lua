Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)

Debug.SetPlayerInfo(1,4000,0,0)

Debug.AddCard(160204006,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(160204045,0,0,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)
Debug.AddCard(160204051,0,0,LOCATION_SZONE,2,POS_FACEDOWN_ATTACK)
Debug.AddCard(160204011,0,0,LOCATION_SZONE,3,POS_FACEDOWN_ATTACK)
Debug.AddCard(160204012,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160204007,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160301005,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160204008,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160406001,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160204004,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(160204003,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(160204002,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(160204001,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(160402009,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(160421002,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(160421007,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)
Debug.AddCard(160001001,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160003007,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160001002,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160003021,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.ReloadFieldEnd()
Duel.SetLP(0,2800)
Duel.SetLP(1,6000)
aux.BeginPuzzle()
