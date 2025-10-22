--Original Puzzle Name: QB06
Debug.SetAIName("Pseudo AI")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,3)
Debug.SetPlayerInfo(0,100,0,0)
Debug.SetPlayerInfo(1,100,0,0)

--[[message
A puzzle to use Exodia


Your Starting LP: 100
Opponent's Starting LP: 100
Complexity: 5/10.
Objective: Win this turn.
Note: This puzzle is set to Master Rules 3
]]

Debug.AddCard(07902349,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(44519536,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(70903634,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(08124921,1,1,LOCATION_HAND,0,POS_FACEDOWN)

Debug.AddCard(80863132,1,1,LOCATION_SZONE,0,POS_FACEDOWN)
Debug.AddCard(80863132,1,1,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(80863132,1,1,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(04440873,1,1,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(04440873,1,1,LOCATION_SZONE,4,POS_FACEDOWN)

Debug.AddCard(33396948,1,1,LOCATION_DECK,0,POS_FACEDOWN)

Debug.AddCard(26202165,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)

Debug.AddCard(33396948,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(21502796,0,0,LOCATION_MZONE,1,POS_FACEDOWN_DEFENSE)
Debug.AddCard(21502796,0,0,LOCATION_MZONE,3,POS_FACEDOWN_DEFENSE)

Debug.AddCard(44519536,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(07902349,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(70903634,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(08124921,0,0,LOCATION_DECK,0,POS_FACEDOWN)

Debug.AddCard(41142615,0,0,LOCATION_SZONE,0,POS_FACEDOWN)
Debug.AddCard(93946239,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(93946239,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(49140998,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(36280194,0,0,LOCATION_SZONE,4,POS_FACEDOWN)

Debug.AddCard(51790181,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(67169062,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(70278545,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(98645731,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(55144522,0,0,LOCATION_HAND,0,POS_FACEDOWN)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
Solution:
Activate The Cheerful Coffin and send Sillva, Beiige, and Broww to the graveyard
Special summon Beiige and Silva in attack position. Draw with Broww
Summon Zure in attack position. Enter Battle phase
Attack White Magical Hat with Scarr (discarding Goldd and destroy both Blue-Eyes White Dragons)
Special summon Goldd in attack position and then attack.

]]
