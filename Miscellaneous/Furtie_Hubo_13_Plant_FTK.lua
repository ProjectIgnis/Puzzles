--[[message
Fortunately, the Plant FTK was only competitive and playable in the OCG.

	Creator: Furtie_Hubo
  Difficulty: 8/10
  Master Rule: 4
]]

-- Plant FTK
Debug.SetAIName("Furtie_Hubo")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_PSEUDO_SHUFFLE+DUEL_SIMPLE_AI,4)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,37400,0,0)

-- Furtie_Hubo's Hand
Debug.AddCard(18964575,1,1,LOCATION_HAND,0,POS_FACEUP) -- Swift Scarecrow

-- Furtie_Hubo's Field
Debug.AddCard(31305911,1,1,LOCATION_MZONE,0,POS_FACEUP_DEFENSE) -- Marshmallon
Debug.AddCard(31305911,1,1,LOCATION_MZONE,1,POS_FACEUP_DEFENSE) -- Marshmallon
Debug.AddCard(31305911,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE) -- Marshmallon
Debug.AddCard(31305911,1,1,LOCATION_MZONE,3,POS_FACEUP_DEFENSE) -- Marshmallon
Debug.AddCard(31305911,1,1,LOCATION_MZONE,4,POS_FACEUP_DEFENSE) -- Marshmallon
Debug.AddCard(76375976,1,1,LOCATION_FZONE,0,POS_FACEUP) -- Mystic Mine
Debug.AddCard(47475363,1,1,LOCATION_SZONE,0,POS_FACEDOWN) -- Drowning Mirror Force
Debug.AddCard(47060347,1,1,LOCATION_SZONE,1,POS_FACEUP) -- Aegis of Gaia
Debug.AddCard(47475363,1,1,LOCATION_SZONE,2,POS_FACEDOWN) -- Drowning Mirror Force
Debug.AddCard(47060347,1,1,LOCATION_SZONE,3,POS_FACEUP) -- Aegis of Gaia
Debug.AddCard(47475363,1,1,LOCATION_SZONE,4,POS_FACEDOWN) -- Drowning Mirror Force

-- Challenger's Deck
Debug.AddCard(15341821,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(85431040,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(85431040,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(85431040,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(67441435,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(48686504,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(48686504,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(48686504,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(61677004,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(35272499,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(35272499,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(11747708,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(44928016,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(01845204,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(74122412,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(74122412,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(74122412,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(74122412,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(74122412,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(74122412,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(74122412,0,0,LOCATION_DECK,0,POS_FACEDOWN)

-- Challenger's Extra Deck
Debug.AddCard(63519819,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(86066372,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(21200905,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(85289965,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(50588353,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(98095162,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(05043010,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(39064822,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(02857636,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(38342335,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(41999284,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(88000953,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(61665245,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(05821478,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(32617464,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

-- Challenger's Hand
Debug.AddCard(9047460,0,0,LOCATION_HAND,0,POS_FACEDOWN) -- Blackwing - Steam the Cloak
Debug.AddCard(5560911,0,0,LOCATION_HAND,0,POS_FACEDOWN) -- Destrudo the Lost Dragon's Frisson
Debug.AddCard(72291078,0,0,LOCATION_HAND,0,POS_FACEDOWN) -- Mecha Phantom Beast O-Lion
Debug.AddCard(23558733,0,0,LOCATION_HAND,0,POS_FACEDOWN) -- Phoenixian Cluster Amaryllis
Debug.AddCard(35272499,0,0,LOCATION_HAND,0,POS_FACEDOWN) -- Predaplant Ophrys Scorpio
Debug.AddCard(74122412,0,0,LOCATION_HAND,0,POS_FACEDOWN) -- Nekroz of Gungnir

-- Start the puzzle
Debug.ReloadFieldEnd()
aux.BeginPuzzle()
