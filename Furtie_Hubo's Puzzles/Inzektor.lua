--[[message
After you have solved this puzzle, you will probably never forget the name of the most powerful Equip Spell in Yugioh.

	Creator: Furtie_Hubo
  Difficulty: 10/10
  Hall of fame:
    1. ...
    2. ...
    3. ...

If you have solved this puzzle, don't forget to send me your solution as a replay, so I can put your name on the hall of fame.

Contact details:
  - Furtie_Hubo#1905 (Discord)

If you doubt the legitimacy of the puzzle, feel free to contact me on Discord.
]]

--Inzektor
Debug.SetAIName("Furtie_Hubo")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,24400,0,0)

--Furtie_Hubo Hand
Debug.AddCard(18964575,1,1,LOCATION_HAND,0,POS_FACEUP)--Swift Scarecrow

--Furtie Hubo Field
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

--Furtie Hubo Grave
Debug.AddCard(34710660,1,1,LOCATION_GRAVE,0,POS_FACEUP)--Electromagnetic Turtle

--Challenger Deck
Debug.AddCard(94573223,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(21977828,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(65844845,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(65844845,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(52601736,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(52601736,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(52601736,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(38450736,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(38450736,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(38450736,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(21790410,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(21790410,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(21790410,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(69207766,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(95395761,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(95395761,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(95395761,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(59438930,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(2461031,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(16550875,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(16550875,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Challenger Extra Deck
Debug.AddCard(17412721,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(52687916,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(91949988,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(91949988,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(29669359,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(50449881,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(34945480,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(16195942,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(54719828,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(95169481,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(91499077,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(8809344,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(62709239,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(62709239,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(62709239,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Challenger Hand  
Debug.AddCard(68184115,0,0,LOCATION_HAND,0,POS_FACEDOWN)--Inzektor Dragonfly
Debug.AddCard(1845204,0,0,LOCATION_HAND,0,POS_FACEDOWN)--Instant Fusion
Debug.AddCard(81439173,0,0,LOCATION_HAND,0,POS_FACEDOWN)--Foolish Burial
Debug.AddCard(83764718,0,0,LOCATION_HAND,0,POS_FACEDOWN)--Monster Reborn
Debug.AddCard(67723438,0,0,LOCATION_HAND,0,POS_FACEDOWN)--Emergency Teleport
Debug.AddCard(69243953,0,0,LOCATION_HAND,0,POS_FACEDOWN)--Butterfly Dagger - Elma

--Start the Puzzle
Debug.ReloadFieldEnd()
Debug.ShowHint("Win this turn!\nCreate by Furtie_Hubo.")
aux.BeginPuzzle()
