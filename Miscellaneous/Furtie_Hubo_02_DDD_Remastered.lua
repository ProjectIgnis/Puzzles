--[[message
Did you know that D/D/D stands for different dimension daemon?

  Creator: Furtie_Hubo
  Difficulty: 8/10
  Master Rule: 4
]]

--DDD Remastered
Debug.SetAIName("Furtie_Hubo")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_PSEUDO_SHUFFLE+DUEL_SIMPLE_AI,4)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,24100,0,0)

--Furtie_Hubo's Hand
Debug.AddCard(18964575,1,1,LOCATION_HAND,0,POS_FACEUP)--Swift Scarecrow

--Furtie_Hubo's Hand
Debug.AddCard(96570609,1,1,LOCATION_MZONE,0,POS_FACEUP_ATTACK)--Ehther the Heavenly Monarch
Debug.AddCard(96570609,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)--Ehther the Heavenly Monarch
Debug.AddCard(96570609,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)--Ehther the Heavenly Monarch
Debug.AddCard(96570609,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)--Ehther the Heavenly Monarch
Debug.AddCard(96570609,1,1,LOCATION_MZONE,4,POS_FACEUP_ATTACK)--Ehther the Heavenly Monarch
Debug.AddCard(47475363,1,1,LOCATION_SZONE,1,POS_FACEDOWN)--Drowning Mirror Force
Debug.AddCard(47475363,1,1,LOCATION_SZONE,3,POS_FACEDOWN)--Drowning Mirror Force

--Challenger's Deck	
Debug.AddCard(72291412,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(59123937,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(73360025,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(67441435,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Challenger's Extra Deck
Debug.AddCard(84569886,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(16006416,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(74583607,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(74583607,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(50954680,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(44852429,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(987311,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(80696379,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(2530830,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(39030163,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(18963306,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(85289965,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(8802510,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(50588353,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(41999284,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Challenger's Hand  
Debug.AddCard(74069667,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(46796664,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(45206713,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(9742784,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(19580308,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(11609969,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Start the Puzzle
Debug.ReloadFieldEnd()
aux.BeginPuzzle()
