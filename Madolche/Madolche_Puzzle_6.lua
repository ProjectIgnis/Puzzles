--Madolche Puzzle
--Creator: HTDa

Debug.SetAIName("Madolche Puzzle 6")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,100,0,0) -- 0 = Player ID, Life Points, Cards Draw
Debug.SetPlayerInfo(1,3900,0,0)

--Hand (yours)
-- Debug.AddCard(91350799,0,0,LOCATION_HAND,0,POS_FACEDOWN) -- Madolche Hootcake
-- Debug.AddCard(48252330,0,0,LOCATION_HAND,0,POS_FACEDOWN) -- Madolche Butlerusk
-- Debug.AddCard(52404456,0,0,LOCATION_HAND,0,POS_FACEDOWN) -- Madolche Messengelato
-- Debug.AddCard(12980373,0,0,LOCATION_HAND,0,POS_FACEDOWN) -- Madolche Mewfeuille
Debug.AddCard(11868731,0,0,LOCATION_HAND,0,POS_FACEDOWN) -- Madolche Magileine

--Main Deck (yours)
Debug.AddCard(74641045,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- Madolche Puddingcess
-- Debug.AddCard(14001430,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- Madolche Chateau
-- Debug.AddCard(71348837,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- Madolche Salon
Debug.AddCard(77848740,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- Madolche Petingcessoeur

--Extra Deck (yours)
Debug.AddCard(37164373,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) -- Madolche Queen Tiramisu
Debug.AddCard(44311445,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) -- Madolche Puddingcess Chocolat-a-la-Mode

--GY (yours)
-- Debug.AddCard(34680482,0,0,LOCATION_GRAVE,0,POS_FACEUP) -- Madolche Anjelly

--Spell & Trap Zones (yours)

--Spell & Trap Zones (opponent's)
-- Debug.AddCard(72302403,1,1,LOCATION_SZONE,4,POS_FACEUP) -- Swords of Revealing Light

Debug.ReloadFieldEnd()

Debug.ShowHint("Welcome to Madolche Puzzle 6 \nLet's learn yet YET another combo")
Debug.ShowHint("Inflict 3900 battle damage this turn to win!")

aux.BeginPuzzle()