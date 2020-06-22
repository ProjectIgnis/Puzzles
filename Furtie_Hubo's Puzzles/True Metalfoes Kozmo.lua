--[[message
Surprisingly, True Draco, Kozmo and Metalfoes have synergy.

	Creator: Furtie_Hubo
  Difficulty: 9/10
  Hall of fame:
    1. ...
    2. ...
    3. ...

If you have solved this puzzle, don't forget to send me your solution as a replay, so I can put your name on the hall of fame.

Contact details:
  - Furtie_Hubo#1905 (Discord)

If you doubt the legitimacy of the puzzle, feel free to contact me on Discord.
]]

--True Metalfoes Kozmo
Debug.SetAIName("Furtie_Hubo")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,21500,0,0)

--Furtie Hubo Field
Debug.AddCard(96570609,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)--Ehther the Heavenly Monarch
Debug.AddCard(47475363,1,1,LOCATION_SZONE,1,POS_FACEDOWN)--Drowning Mirror Force
Debug.AddCard(47475363,1,1,LOCATION_SZONE,2,POS_FACEDOWN)--Drowning Mirror Force
Debug.AddCard(47475363,1,1,LOCATION_SZONE,3,POS_FACEDOWN)--Drowning Mirror Force

--Furtie Hubo Grave
Debug.AddCard(34710660,1,1,LOCATION_GRAVE,0,POS_FACEUP)--Electromagnetic Turtle

--Challenger Deck
Debug.AddCard(69351984,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(69351984,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(33256280,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(55885348,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(55885348,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(21377582,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(21377582,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(94454495,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(94454495,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(12408276,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(31061682,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(56907986,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(73594093,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(75425320,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(13035077,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(13035077,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(13035077,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(67237709,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(67237709,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(67237709,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(69711728,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(69711728,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Challenger Extra Deck
Debug.AddCard(54401832,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(28016193,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(4688231,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(81612598,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(91949988,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(38495396,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(99469936,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(10443957,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(77334267,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(94119480,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(73964868,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(29669359,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(50449881,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(58069384,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(55067058,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Challenger Hand  
Debug.AddCard(7868571,0,0,LOCATION_HAND,0,POS_FACEDOWN)--Metalfoes Silverd
Debug.AddCard(60473572,0,0,LOCATION_HAND,0,POS_FACEDOWN)--Metalfoes Steelen
Debug.AddCard(20849090,0,0,LOCATION_HAND,0,POS_FACEDOWN)--Kozmo Forerunner
Debug.AddCard(73468603,0,0,LOCATION_HAND,0,POS_FACEDOWN)--Set Rotation
Debug.AddCard(73468603,0,0,LOCATION_HAND,0,POS_FACEDOWN)--Set Rotation
Debug.AddCard(73468603,0,0,LOCATION_HAND,0,POS_FACEDOWN)--Set Rotation

--Start the Puzzle
Debug.ReloadFieldEnd()
Debug.ShowHint("Win this turn!\nCreate by Furtie_Hubo.")
aux.BeginPuzzle()
