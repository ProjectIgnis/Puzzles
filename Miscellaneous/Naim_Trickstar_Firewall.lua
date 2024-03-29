--[[message
Firewall Dragon was well-known for enabling loops. Figure out a Trickstar loop with it.

Your Starting LP: 6000
Opponent's Starting LP: 8000
Complexity: 5/10.

Objective: Win this turn.
]]
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)

Debug.SetPlayerInfo(0,6000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

--Main Deck
Debug.AddCard(53932291,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(4145852,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(14152693,0,0,LOCATION_DECK,0,POS_FACEDOWN)
--Extra Deck
Debug.AddCard(5043020,0,0,LOCATION_EXTRA,0,8)
Debug.AddCard(4423206,0,0,LOCATION_EXTRA,0,8)
Debug.AddCard(41375811,0,0,LOCATION_EXTRA,0,8)
Debug.AddCard(85115440,0,0,LOCATION_EXTRA,0,8)
--Hand
Debug.AddCard(81275020,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(293542,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(35199656,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(43898403,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(7969770,0,0,LOCATION_HAND,0,POS_FACEDOWN)
--GY
Debug.AddCard(98700941,0,0,LOCATION_GRAVE,0,POS_FACEUP)
--Spell & Trap Zones
Debug.AddCard(21076084,0,0,LOCATION_SZONE,1,10)
--Main Deck
Debug.AddCard(16617334,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(60643553,1,1,LOCATION_DECK,0,POS_FACEDOWN)
--Hand
Debug.AddCard(17313545,1,1,LOCATION_HAND,0,POS_FACEDOWN)
--Monster Zones
Debug.AddCard(91731841,1,1,LOCATION_MZONE,3,1,true)
--Spell & Trap Zones
Debug.AddCard(82003859,1,1,LOCATION_SZONE,3,5)
Debug.AddCard(37580756,1,1,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.ReloadFieldEnd()
aux.BeginPuzzle()
