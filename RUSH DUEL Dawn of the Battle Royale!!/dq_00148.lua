Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)

Debug.SetPlayerInfo(1,4000,0,0)

Debug.AddCard(160005003,0,0,LOCATION_MZONE,3,POS_FACEUP_DEFENSE)
Debug.AddCard(160005041,0,0,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)
Debug.AddCard(160201017,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160201018,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160201015,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160005023,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160421005,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160204007,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(160204001,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(160204051,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160204006,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.ReloadFieldEnd()
Duel.SetLP(0,4000)
Duel.SetLP(1,4400)
aux.BeginPuzzle()