Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Extra Deck (yours)
Debug.AddCard(160204040,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160204042,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160204041,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160415001,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Spell & Trap Zones (yours)
Debug.AddCard(160204051,0,0,LOCATION_SZONE,1,POS_FACEDOWN_ATTACK)

--Monster Zones (opponent's)
Debug.AddCard(160201005,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)

--Spell & Trap Zones (opponent's)
Debug.AddCard(160006064,1,1,LOCATION_SZONE,2,POS_FACEDOWN_ATTACK)

Debug.ReloadFieldEnd()
Duel.SetLP(0,300)
Duel.SetLP(1,600)
aux.BeginPuzzle()
