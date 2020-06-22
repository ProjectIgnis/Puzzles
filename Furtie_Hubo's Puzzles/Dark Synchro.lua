--[[message
Have you ever wondered why Level Eater is banned?

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


--Dark Synchro
Debug.SetAIName("Furtie_Hubo")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,27300,0,0)

--Furtie_Hubo Hand
Debug.AddCard(18964575,1,1,LOCATION_HAND,0,POS_FACEUP)--Swift Scarecrow

--Furtie Hubo Field
Debug.AddCard(96570609,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)--Ehther the Heavenly Monarch
Debug.AddCard(47475363,1,1,LOCATION_SZONE,0,POS_FACEDOWN)--Drowning Mirror Force
Debug.AddCard(47475363,1,1,LOCATION_SZONE,1,POS_FACEDOWN)--Drowning Mirror Force
Debug.AddCard(47475363,1,1,LOCATION_SZONE,2,POS_FACEDOWN)--Drowning Mirror Force
Debug.AddCard(47475363,1,1,LOCATION_SZONE,3,POS_FACEDOWN)--Drowning Mirror Force
Debug.AddCard(47475363,1,1,LOCATION_SZONE,4,POS_FACEDOWN)--Drowning Mirror Force

--Furtie Hubo Grave
Debug.AddCard(34710660,1,1,LOCATION_GRAVE,0,POS_FACEUP)--Electromagnetic Turtle

--Challenger Deck
Debug.AddCard(99946920,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(63977008,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(25935625,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(57421866,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(9742784,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(52068432,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(26674724,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(99185129,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(14735698,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(9622164,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(9622164,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(9622164,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Challenger Extra Deck
Debug.AddCard(35952884,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(35952884,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(35952884,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(97836203,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(83755611,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(2403771,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(53389254,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(53389254,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(37675907,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(65536818,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(79606837,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(55863245,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(81846453,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(37038993,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(62560742,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Challenger Hand
Debug.AddCard(9929398,0,0,LOCATION_HAND,0,POS_FACEDOWN)--Blackwing - Gofu the Vague Shadow
Debug.AddCard(81439173,0,0,LOCATION_HAND,0,POS_FACEDOWN)--Foolish Burial
Debug.AddCard(74122412,0,0,LOCATION_HAND,0,POS_FACEDOWN)--Nekroz of Gungnir

--Start the Puzzle
Debug.ReloadFieldEnd()
Debug.ShowHint("Win this turn!\nCreate by Furtie_Hubo.")
aux.BeginPuzzle()
