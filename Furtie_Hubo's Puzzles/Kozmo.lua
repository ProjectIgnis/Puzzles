--[[message
You can play Kozmo without Card of Demise. Who'd have thought?

	Creator: Furtie_Hubo
  Difficulty: 9/10
  Hall of fame:
    1. ...
    2. ...
    3. ...

If you have solved this puzzle, don't forget to send me your solution as a replay, so I can put your name on the hall of fame.

Contact details:
  - Furtie_Hubo#1905 (Discord)

If you doubt the legitimacy of the puzzle, feel free to contact me on Discord.
]]

--Kozmo
Debug.SetAIName("Furtie_Hubo")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,19000,0,0)

--Furtie_Hubo Field
Debug.AddCard(23093604,1,1,LOCATION_MZONE,0,POS_FACEUP_DEFENSE)--X-Saber Pashuul
Debug.AddCard(23093604,1,1,LOCATION_MZONE,1,POS_FACEUP_DEFENSE)--X-Saber Pashuul
Debug.AddCard(23093604,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)--X-Saber Pashuul
Debug.AddCard(23093604,1,1,LOCATION_MZONE,3,POS_FACEUP_DEFENSE)--X-Saber Pashuul
Debug.AddCard(23093604,1,1,LOCATION_MZONE,4,POS_FACEUP_DEFENSE)--X-Saber Pashuul
Debug.AddCard(35037880,1,1,LOCATION_SZONE,0,POS_FACEDOWN)--Saber Reflection
Debug.AddCard(35037880,1,1,LOCATION_SZONE,1,POS_FACEDOWN)--Saber Reflection
Debug.AddCard(35037880,1,1,LOCATION_SZONE,2,POS_FACEDOWN)--Saber Reflection
Debug.AddCard(35037880,1,1,LOCATION_SZONE,3,POS_FACEDOWN)--Saber Reflection
Debug.AddCard(35037880,1,1,LOCATION_SZONE,4,POS_FACEDOWN)--Saber Reflection

--Challenger Deck
Debug.AddCard(85991529,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(55885348,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(20849090,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(94454495,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(94454495,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(37679169,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(31061682,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(1274455,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(1274455,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(54149433,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(56907986,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(56907986,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Challenger Extra Deck
Debug.AddCard(63767246,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(88177324,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(66547759,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(91949988,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(10443957,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(77334267,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(73964868,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(29669359,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(69840739,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(58069384,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(62709239,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(85252081,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(95992081,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(1249315,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(65305468,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Challenger Hand  
Debug.AddCard(67723438,0,0,LOCATION_HAND,0,POS_FACEDOWN)--Emergency Teleport
Debug.AddCard(67237709,0,0,LOCATION_HAND,0,POS_FACEDOWN)--Kozmotown
Debug.AddCard(57554544,0,0,LOCATION_HAND,0,POS_FACEDOWN)--Fire King Island
Debug.AddCard(85991529,0,0,LOCATION_HAND,0,POS_FACEDOWN)--Kozmo Dark Planet
Debug.AddCard(55885348,0,0,LOCATION_HAND,0,POS_FACEDOWN)--Kozmo Dark Destroyer

--Start the Puzzle
Debug.ReloadFieldEnd()
Debug.ShowHint("Win this turn!\nCreate by Furtie_Hubo.")
aux.BeginPuzzle()
