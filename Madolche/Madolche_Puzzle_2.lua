--Madolche Puzzle
--Creator: HTDa

Debug.SetAIName("Madolche Puzzle 2")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,100,0,0) -- 0 = Player ID, Life Points, Cards Draw
Debug.SetPlayerInfo(1,2500,0,0)

--Main Deck (yours)

--Extra Deck (yours)
Debug.AddCard(37164373,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) -- Madolche Queen Tiramisu
Debug.AddCard(44311445,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) -- Madolche Puddingcess Chocolat-a-la-Mode

--Hand (yours)
Debug.AddCard(77848740,0,0,LOCATION_HAND,0,POS_FACEDOWN) -- Madolche Petingcessoeur
Debug.AddCard(74641045,0,0,LOCATION_HAND,0,POS_FACEDOWN) -- Madolche Puddingcess

--GY (yours)

--Spell & Trap Zones (yours)
Debug.AddCard(23681456,0,0,LOCATION_SZONE,0,POS_FACEDOWN) -- Madolchepalooza

--Spell & Trap Zones (opponent's)
Debug.AddCard(72302403,1,1,LOCATION_SZONE,4,POS_FACEUP) -- Swords of Revealing Light

Debug.ReloadFieldEnd()

Debug.ShowHint("Welcome to Madolche Puzzle 2 \nBuild up on the combo from Puzzle 1")
Debug.ShowHint("Inflict 2500 battle damage this turn to win!")
Debug.ShowHint("Note: \"Madolche Queen Tiramisu\" cannot activate her effect if there are no \"Madolche\" cards in the graveyard")
Debug.ShowHint("Hint: You don't have to go into \"Madolche Puddingcess Chocolat-a-la-Mode\" immediately")

aux.BeginPuzzle()