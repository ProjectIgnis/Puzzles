--[[message
I hope you like to handloop your opponent.

	Creator: Furtie_Hubo
  Difficulty: 10/10
  Master Rule: 3
]]

--Infernity
Debug.SetAIName("Furtie_Hubo")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,18800,0,0)

--Furtie_Hubo's Hand
Debug.AddCard(34710660,1,1,LOCATION_HAND,0,POS_FACEUP)--Electromagnetic Turtle
Debug.AddCard(34710660,1,1,LOCATION_HAND,0,POS_FACEUP)--Electromagnetic Turtle
Debug.AddCard(34710660,1,1,LOCATION_HAND,0,POS_FACEUP)--Electromagnetic Turtle
Debug.AddCard(34710660,1,1,LOCATION_HAND,0,POS_FACEUP)--Electromagnetic Turtle
Debug.AddCard(34710660,1,1,LOCATION_HAND,0,POS_FACEUP)--Electromagnetic Turtle
Debug.AddCard(34710660,1,1,LOCATION_HAND,0,POS_FACEUP)--Electromagnetic Turtle

--Furtie_Hubo's Field
Debug.AddCard(96570609,1,1,LOCATION_MZONE,0,POS_FACEUP_ATTACK)--Ehther the Heavenly Monarch
Debug.AddCard(96570609,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)--Ehther the Heavenly Monarch
Debug.AddCard(96570609,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)--Ehther the Heavenly Monarch
Debug.AddCard(96570609,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)--Ehther the Heavenly Monarch
Debug.AddCard(96570609,1,1,LOCATION_MZONE,4,POS_FACEUP_ATTACK)--Ehther the Heavenly Monarch
Debug.AddCard(47475363,1,1,LOCATION_SZONE,0,POS_FACEDOWN)--Drowning Mirror Force
Debug.AddCard(47475363,1,1,LOCATION_SZONE,1,POS_FACEDOWN)--Drowning Mirror Force
Debug.AddCard(47475363,1,1,LOCATION_SZONE,2,POS_FACEDOWN)--Drowning Mirror Force
Debug.AddCard(47475363,1,1,LOCATION_SZONE,3,POS_FACEDOWN)--Drowning Mirror Force
Debug.AddCard(47475363,1,1,LOCATION_SZONE,4,POS_FACEDOWN)--Drowning Mirror Force

--Furtie_Hubo's Deck
Debug.AddCard(18964575,1,1,LOCATION_DECK,0,POS_FACEDOWN)--Swift Scarecrow
Debug.AddCard(18964575,1,1,LOCATION_DECK,0,POS_FACEDOWN)--Swift Scarecrow
Debug.AddCard(18964575,1,1,LOCATION_DECK,0,POS_FACEDOWN)--Swift Scarecrow
Debug.AddCard(18964575,1,1,LOCATION_DECK,0,POS_FACEDOWN)--Swift Scarecrow
Debug.AddCard(18964575,1,1,LOCATION_DECK,0,POS_FACEDOWN)--Swift Scarecrow
Debug.AddCard(18964575,1,1,LOCATION_DECK,0,POS_FACEDOWN)--Swift Scarecrow

--Challenger's Deck
Debug.AddCard(99177923,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(99177923,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(56209279,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(56209279,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(49080532,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(49080532,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(66957584,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(66957584,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(66957584,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(86197239,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(1845204,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(24094653,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(81439173,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(70828912,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Challenger's Extra Deck
Debug.AddCard(95992081,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(581014,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(95169481,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(16195942,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(95113856,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(95113856,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(42110604,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(86137485,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(95453143,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(52687916,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(52687916,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(52687916,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(17412721,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(17412721,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(80532587,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Challenger's Hand  
Debug.AddCard(99177923,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(14785765,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(56209279,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(49080532,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(85475641,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(72892473,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Start the Puzzle
Debug.ReloadFieldEnd()
aux.BeginPuzzle()
