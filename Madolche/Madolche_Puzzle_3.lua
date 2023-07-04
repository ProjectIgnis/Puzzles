--Madolche Puzzle
--Creator: HTDa

Debug.SetAIName("Madolche Puzzle 3")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,100,0,0) -- 0 = Player ID, Life Points, Cards Draw
Debug.SetPlayerInfo(1,3000,0,0)

--Hand (yours)
Debug.AddCard(34680482,0,0,LOCATION_HAND,0,POS_FACEDOWN) -- Madolche Anjelly
Debug.AddCard(12980373,0,0,LOCATION_HAND,0,POS_FACEDOWN) -- Madolche Mewfeuille

--Main Deck (yours)
Debug.AddCard(74641045,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- Madolche Puddingcess
Debug.AddCard(77848740,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- Madolche Petingcessoeur

--Extra Deck (yours)
Debug.AddCard(37164373,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) -- Madolche Queen Tiramisu
Debug.AddCard(44311445,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) -- Madolche Puddingcess Chocolat-a-la-Mode

--GY (yours)

--Spell & Trap Zones (yours)

--Spell & Trap Zones (opponent's)
Debug.AddCard(72302403,1,1,LOCATION_SZONE,4,POS_FACEUP) -- Swords of Revealing Light

Debug.ReloadFieldEnd()

Debug.ShowHint("Welcome to Madolche Puzzle 3 \nLet's learn another combo")
Debug.ShowHint("Inflict 3000 battle damage this turn to win!")

aux.BeginPuzzle()