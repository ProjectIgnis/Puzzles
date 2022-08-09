Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Main Deck (yours)
Debug.AddCard(160005029,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160005029,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160005027,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160005028,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160005029,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160203035,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(160005006,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(160005032,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)

--Spell & Trap Zones (yours)
Debug.AddCard(160003053,0,0,LOCATION_FZONE,0,POS_FACEUP)

--Hand (opponent's)
Debug.AddCard(160204051,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160204045,1,1,LOCATION_HAND,0,POS_FACEDOWN)

--GY (opponent's)
Debug.AddCard(160204041,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160204042,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(160204051,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(160204040,1,1,LOCATION_MZONE,1,POS_FACEUP_DEFENSE)
Debug.AddCard(160403001,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE)

Debug.ReloadFieldEnd()
Duel.SetLP(0,100)
Duel.SetLP(1,2700)
aux.BeginPuzzle()
