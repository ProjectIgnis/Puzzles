--Madolche Puzzle
--Creator: HTDa

Debug.SetAIName("Madolche Puzzle 9")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,100,0,0) -- 0 = Player ID, Life Points, Cards Draw
Debug.SetPlayerInfo(1,5800,0,0)

--Hand (yours)
-- Debug.AddCard(48252330,0,0,LOCATION_HAND,0,POS_FACEDOWN) -- Madolche Butlerusk
-- Debug.AddCard(12980373,0,0,LOCATION_HAND,0,POS_FACEDOWN) -- Madolche Mewfeuille
Debug.AddCard(11868731,0,0,LOCATION_HAND,0,POS_FACEDOWN) -- Madolche Magileine


--Main Deck (yours)
Debug.AddCard(74641045,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- Madolche Puddingcess
Debug.AddCard(14001430,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- Madolche Chateau
Debug.AddCard(60470713,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- Madolche Ticket
Debug.AddCard(77848740,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- Madolche Petingcessoeur
Debug.AddCard(91350799,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- Madolche Hootcake
Debug.AddCard(52404456,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- Madolche Messengelato
Debug.AddCard(52404456,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- Madolche Messengelato
Debug.AddCard(79759367,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- Madolche Nights
Debug.AddCard(68159562,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- Madolche Promenade
Debug.AddCard(34680482,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- Madolche Anjelly
Debug.AddCard(71348837,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- Madolche Salon


--Extra Deck (yours)
Debug.AddCard(37164373,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) -- Madolche Queen Tiramisu
Debug.AddCard(44311445,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) -- Madolche Puddingcess Chocolat-a-la-Mode
Debug.AddCard(44311445,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) -- Madolche Puddingcess Chocolat-a-la-Mode
Debug.AddCard(20343502,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) -- Madolche Teacher Glassouffle
Debug.AddCard(96150936,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) -- Madolche Fresh Sistart

--GY (yours)

--Spell & Trap Zones (yours)

--Monster Zones (yours)

--Spell & Trap Zones (opponent's)
Debug.AddCard(72302403,1,1,LOCATION_SZONE,4,POS_FACEUP) -- Swords of Revealing Light

Debug.ReloadFieldEnd()

Debug.ShowHint("Welcome to Madolche Puzzle 9 \nThis is the second of a series of intermediate/hard puzzles")
Debug.ShowHint("The theme of these puzzles is: Combo from a few starting cards")
Debug.ShowHint("Note: This puzzle will have redundant cards as well, so experiment to find the best combo")
Debug.ShowHint("Inflict 5800 battle damage this turn to win!")
-- Debug.ShowHint("Fun fact: You can even inflict 11000 battle damage!")

aux.BeginPuzzle()