--Madolche Puzzle
--Creator: HTDa

Debug.SetAIName("Madolche Puzzle 7")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,100,0,0) -- 0 = Player ID, Life Points, Cards Draw
Debug.SetPlayerInfo(1,10000,0,0)

--Hand (yours)
-- Debug.AddCard(91350799,0,0,LOCATION_HAND,0,POS_FACEDOWN) -- Madolche Hootcake
-- Debug.AddCard(48252330,0,0,LOCATION_HAND,0,POS_FACEDOWN) -- Madolche Butlerusk
Debug.AddCard(52404456,0,0,LOCATION_HAND,0,POS_FACEDOWN) -- Madolche Messengelato
Debug.AddCard(12980373,0,0,LOCATION_HAND,0,POS_FACEDOWN) -- Madolche Mewfeuille
-- Debug.AddCard(11868731,0,0,LOCATION_HAND,0,POS_FACEDOWN) -- Madolche Magileine

--Main Deck (yours)
Debug.AddCard(14001430,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- Madolche Chateau
Debug.AddCard(60470713,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- Madolche Ticket
Debug.AddCard(77848740,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- Madolche Petingcessoeur

--Extra Deck (yours)
-- Debug.AddCard(37164373,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) -- Madolche Queen Tiramisu
Debug.AddCard(44311445,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) -- Madolche Puddingcess Chocolat-a-la-Mode
-- Debug.AddCard(20343502,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) -- Madolche Teacher Glassouffle
Debug.AddCard(96150936,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) -- Madolche Fresh Sistart

--GY (yours)
-- Debug.AddCard(34680482,0,0,LOCATION_GRAVE,0,POS_FACEUP) -- Madolche Anjelly
Debug.AddCard(12980373,0,0,LOCATION_GRAVE,0,POS_FACEUP) -- Madolche Mewfeuille

--Spell & Trap Zones (yours)
Debug.AddCard(71348837,0,0,LOCATION_SZONE,0,POS_FACEUP) -- Madolche Salon

--Monster Zones (yours)
Debug.AddCard(20343502,0,0,LOCATION_MZONE,0,POS_FACEUP_ATTACK,true) -- Madolche Teacher Glassouffle
Debug.AddCard(74641045,0,0,LOCATION_MZONE,0,POS_FACEUP) -- Madolche Puddingcess
Debug.AddCard(77848740,0,0,LOCATION_MZONE,0,POS_FACEUP) -- Madolche Petingcessoeur

--Spell & Trap Zones (opponent's)
-- Debug.AddCard(72302403,1,1,LOCATION_SZONE,4,POS_FACEUP) -- Swords of Revealing Light

Debug.ReloadFieldEnd()

Debug.ShowHint("Welcome to Madolche Puzzle 7 \nThis is a harder puzzle with a board already partly setup")
Debug.ShowHint("Hint 1: One of the effects of \"Madolche Teacher Glassoufle\" is key")
-- Debug.ShowHint("Hint 2: Synergize your return from graveyard to deck with \"Madolche Puddingcess Chocolat-a-la-Mode\" effects")
Debug.ShowHint("Hint 2: There are at least 2 valid ways to solve this puzzle, some are stricter in execution than others")
Debug.ShowHint("Inflict 10000 battle damage this turn to win!")

aux.BeginPuzzle()

-- Deb.AddCard(CardID: int, ???: 0/1, PlayerID: 0/1, Location: str, PositionID: int, Position: str, xyz: bool)
