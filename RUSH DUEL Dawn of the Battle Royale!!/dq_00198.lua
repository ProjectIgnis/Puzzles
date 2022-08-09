Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Main Deck (yours)
Debug.AddCard(160204026,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160421002,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160409001,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160404002,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160421016,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160410004,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(160001025,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(160001024,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)

--Spell & Trap Zones (yours)
Debug.AddCard(160006040,0,0,LOCATION_SZONE,2,POS_FACEDOWN_ATTACK)

--Monster Zones (opponent's)
Debug.AddCard(160003040,1,1,LOCATION_MZONE,1,POS_FACEUP_DEFENSE)

Debug.ReloadFieldEnd()
Duel.SetLP(0,1000)
Duel.SetLP(1,7500)
aux.BeginPuzzle()
