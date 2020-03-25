--Electrum OTK
--Created by Naim for Ygopro Percy
Debug.SetAIName("Naim")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)
Debug.SetPlayerInfo(0,100,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

--[[message
This puzzle demonstrates how Electrum OTK is performed, by using the effects of "Chain Material" to overuse "Fusion Gate" and "Elemental Hero Electrum" and continuously summon Superdreadnought Rail Cannon Gustav Max


	Your Starting LP: 100
	Opponent's Starting LP: 8000
	Complexity: 5/10.
	Objective: Win this turn.
	Note: this puzzle is set to Master Rules 3
]]

Debug.ShowHint("Win this turn!!")

--your hand
Debug.AddCard(33550694,0,0,LOCATION_HAND,0,POS_FACEUP_ATTACK)		--fusion gate

--your field
Debug.AddCard(39980304,0,0,LOCATION_SZONE,2,POS_FACEDOWN)			--chain material

--your deck
Debug.AddCard(84327329,0,0,LOCATION_DECK,0,POS_FACEDOWN)			--clayman
Debug.AddCard(58932615,0,0,LOCATION_DECK,0,POS_FACEDOWN)			--burstinatrix
Debug.AddCard(21844576,0,0,LOCATION_DECK,0,POS_FACEDOWN)			--avian
Debug.AddCard(79979666,0,0,LOCATION_DECK,0,POS_FACEDOWN)			--bubbleman

--your extra deck
Debug.AddCard(29343734,0,0,LOCATION_EXTRA,0,POS_FACEUP_ATTACK)		--electrum
Debug.AddCard(29343734,0,0,LOCATION_EXTRA,0,POS_FACEUP_ATTACK)		--electrum
Debug.AddCard(29343734,0,0,LOCATION_EXTRA,0,POS_FACEUP_ATTACK)		--electrum
Debug.AddCard(16304628,0,0,LOCATION_EXTRA,0,POS_FACEUP_ATTACK)		--gaia
Debug.AddCard(16304628,0,0,LOCATION_EXTRA,0,POS_FACEUP_ATTACK)		--gaia
Debug.AddCard(16304628,0,0,LOCATION_EXTRA,0,POS_FACEUP_ATTACK)		--gaia
Debug.AddCard(56910167,0,0,LOCATION_EXTRA,0,POS_FACEUP_ATTACK)		--gustav
Debug.AddCard(56910167,0,0,LOCATION_EXTRA,0,POS_FACEUP_ATTACK)		--gustav
Debug.AddCard(56910167,0,0,LOCATION_EXTRA,0,POS_FACEUP_ATTACK)		--gustav

--opponent's
Debug.AddCard(15610297,1,1,LOCATION_MZONE,1,POS_FACEDOWN_DEFENSE)		--vijam
Debug.AddCard(15610297,1,1,LOCATION_MZONE,2,POS_FACEDOWN_DEFENSE)		--vijam
Debug.AddCard(15610297,1,1,LOCATION_MZONE,3,POS_FACEDOWN_DEFENSE)		--vijam

Debug.AddCard(40838625,1,1,LOCATION_SZONE,1,POS_FACEDOWN)			--quaking
Debug.AddCard(44656491,1,1,LOCATION_SZONE,2,POS_FACEUP)				--messenger of piece
Debug.AddCard(5650082,1,1,LOCATION_SZONE,3,POS_FACEDOWN)			--storming

--Insert any message here
--insert additional message here
Debug.ReloadFieldEnd()
aux.BeginPuzzle()
