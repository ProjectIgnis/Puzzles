--Madolche Puzzle
--Creator: HTDa

Debug.SetAIName("Madolche Puzzle 1")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,100,0,0) -- 0 = Player ID, Life Points, Cards Draw
Debug.SetPlayerInfo(1,2500,0,0)

--Main Deck (yours)
Debug.AddCard(74641045,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- Madolche Puddingcess

--Extra Deck (yours)
Debug.AddCard(37164373,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) -- Madolche Queen Tiramisu
Debug.AddCard(44311445,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) -- Madolche Puddingcess Chocolat-a-la-Mode

--Hand (yours)
Debug.AddCard(77848740,0,0,LOCATION_HAND,0,POS_FACEDOWN) -- Madolche Petingcessoeur

Debug.ReloadFieldEnd()

Debug.ShowHint("Welcome to Madolche Puzzle 1 \nLearn a basic Madolche combo")

Debug.ShowHint("Hint: \"Madolche Petingcessoeur\" is a great hand opener \nBut it locks you into only special summoning \"Madolche\" monsters for the rest of the turn (if you use all of its effects)")
Debug.ShowHint("Read effects of cards in play (that includes your Hand, Deck, Extra Deck)")
Debug.ShowHint("Inflict 2500 battle damage this turn to win!")

aux.BeginPuzzle()