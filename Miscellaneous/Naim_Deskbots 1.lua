--Deskbots
--Created by Naim
Debug.SetAIName("AI_Ygopro")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,3)
Debug.SetPlayerInfo(0,100,0,0)
Debug.SetPlayerInfo(1,30000,0,0)

--[[message
This puzzle demonstrates Deskbot's ability to output huge damage amount in a single turn!!!!



Your Starting LP: 100
Opponent's Starting LP: 30000
Complexity: 4/10.

Objective: Win this turn.
Note: This puzzle is set to Master Rules 3
]]


Debug.ShowHint("Inflict 30000 damage to win this turn!!")

--your hand
Debug.AddCard(43898403,0,0,LOCATION_HAND,0,POS_FACEUP_ATTACK)		--twin twisters
Debug.AddCard(12215894,0,0,LOCATION_HAND,0,POS_FACEUP_ATTACK)		--deskbot base
Debug.AddCard(75944053,0,0,LOCATION_HAND,0,POS_FACEUP_ATTACK)		--003
Debug.AddCard(94693857,0,0,LOCATION_HAND,0,POS_FACEUP_ATTACK)		--001
Debug.AddCard(23171610,0,0,LOCATION_HAND,0,POS_FACEUP_ATTACK)		--limiter removal
Debug.AddCard(63995093,0,0,LOCATION_HAND,0,POS_FACEUP_ATTACK)		--machine duplication

--your deck
Debug.AddCard(10117149,0,0,LOCATION_DECK,0,POS_FACEDOWN)			--desbot 005
Debug.AddCard(10117149,0,0,LOCATION_DECK,0,POS_FACEDOWN)			--desbot 005
Debug.AddCard(10117149,0,0,LOCATION_DECK,0,POS_FACEDOWN)			--desbot 005
Debug.AddCard(25494711,0,0,LOCATION_DECK,0,POS_FACEDOWN)			--desbot 009
Debug.AddCard(25494711,0,0,LOCATION_DECK,0,POS_FACEDOWN)			--desbot 009
Debug.AddCard(25494711,0,0,LOCATION_DECK,0,POS_FACEDOWN)			--desbot 009
Debug.AddCard(55106249,0,0,LOCATION_DECK,0,POS_FACEDOWN)			--desbot 006
Debug.AddCard(55106249,0,0,LOCATION_DECK,0,POS_FACEDOWN)			--desbot 006
Debug.AddCard(55106249,0,0,LOCATION_DECK,0,POS_FACEDOWN)			--desbot 006
Debug.AddCard(59368956,0,0,LOCATION_DECK,0,POS_FACEDOWN)			--desbot 002
Debug.AddCard(59368956,0,0,LOCATION_DECK,0,POS_FACEDOWN)			--desbot 002
Debug.AddCard(59368956,0,0,LOCATION_DECK,0,POS_FACEDOWN)			--desbot 002
Debug.AddCard(94693857,0,0,LOCATION_DECK,0,POS_FACEDOWN)			--desbot 001
Debug.AddCard(94693857,0,0,LOCATION_DECK,0,POS_FACEDOWN)			--desbot 001

--opponent's
Debug.AddCard(16947147,1,1,LOCATION_HAND,0,POS_FACEDOWN)			--speedroid menko
Debug.AddCard(40605147,1,1,LOCATION_SZONE,2,POS_FACEDOWN)			--solemn strike
Debug.AddCard(50078509,1,1,LOCATION_SZONE,3,POS_FACEDOWN)			--fiendish chain

Debug.ReloadFieldEnd()
aux.BeginPuzzle()
