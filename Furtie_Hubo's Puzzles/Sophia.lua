--[[message
Don't think twice, it's all alright.

	Creator: Furtie_Hubo
  Difficulty: 7/10
  Hall of fame:
    1. ...
    2. ...
    3. ...

If you have solved this puzzle, don't forget to send me your solution as a replay, so I can put your name on the hall of fame.

Contact details:
  - Furtie_Hubo#1905 (Discord)

If you doubt the legitimacy of the puzzle, feel free to contact me on Discord.
]]

--Sophia
Debug.SetAIName("Furtie_Hubo")
Debug.ReloadFieldBegin(DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,4)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,9000,0,0)--Furtie_Hubo Lp

--Furtie Hubo Field
local monster = Debug.AddCard(85991529,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK, true)--Kozmo Dark Planet
local equip1 = Debug.AddCard(49306994,1,1,LOCATION_SZONE,1,POS_FACEUP)--White Veil
local equip2 = Debug.AddCard(49306994,1,1,LOCATION_SZONE,2,POS_FACEUP)--White Veil
local equip3 = Debug.AddCard(49306994,1,1,LOCATION_SZONE,3,POS_FACEUP)--White Veil

--Challenger Deck
Debug.AddCard(42129512,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(17390179,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(4335427,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(9411399,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(9411399,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(9411399,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(84388461,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(56343672,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(21495657,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(9047460,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(15839054,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(32679370,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(32679370,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(32679370,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(9742784,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(26674724,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(99185129,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(1845204,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(54447022,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(97211663,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(9622164,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(9622164,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(9622164,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(31423101,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(65993085,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Challenger Extra Deck
Debug.AddCard(63519819,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(80896940,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(2403771,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(79606837,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(79606837,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(81846453,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(27552504,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(54191698,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(74997493,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(5043010,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(49725936,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(61665245,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(98095162,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(59934749,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(50588353,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Challenger Hand  
Debug.AddCard(28985331,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Start the Puzzle
Debug.ReloadFieldEnd()
Debug.PreEquip(equip1,monster)
Debug.PreEquip(equip2,monster)
Debug.PreEquip(equip3,monster)
Debug.ShowHint("Win this turn!\nCreate by Furtie_Hubo.")
aux.BeginPuzzle()
