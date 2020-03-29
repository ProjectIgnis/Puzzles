--Lyrilusc
--Created by Naim
Debug.SetAIName("Naim")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,3)
Debug.SetPlayerInfo(0,100,0,0)
Debug.SetPlayerInfo(1,11200,0,0)
--[[message
Multiple attackers are fun when you can abuse them. Even funnier if they can attack directly.
In this puzzle you will do that by using Lyrilusc monsters.

Your Starting LP: 100
Opponent's Starting LP: 11200
Complexity: 5/10.

Objective: Win this turn.
Note: This puzzle is set to Master Rules 3
]]


Debug.ShowHint("Win this turn!")

--your hand
Debug.AddCard(97949165,0,0,LOCATION_HAND,0,POS_FACEUP_ATTACK)		--turquoise
Debug.AddCard(34550857,0,0,LOCATION_HAND,0,POS_FACEUP_ATTACK)		--cobalt
Debug.AddCard(85431040,0,0,LOCATION_HAND,0,POS_FACEUP_ATTACK)		--evil thorn
Debug.AddCard(51405049,0,0,LOCATION_HAND,0,POS_FACEUP_ATTACK)		--where arf thou
Debug.AddCard(43422537,0,0,LOCATION_HAND,0,POS_FACEUP_ATTACK)		--double summon

--your deck
Debug.AddCard(45452224,0,0,LOCATION_DECK,0,POS_FACEDOWN)			--kynka-byo
Debug.AddCard(85431040,0,0,LOCATION_DECK,0,POS_FACEDOWN)			--evil thorn
Debug.AddCard(85431040,0,0,LOCATION_DECK,0,POS_FACEDOWN)			--evil thorn
Debug.AddCard(60954556,0,0,LOCATION_DECK,0,POS_FACEDOWN)			--sapphire
Debug.AddCard(60954556,0,0,LOCATION_DECK,0,POS_FACEDOWN)			--sapphire
Debug.AddCard(97949165,0,0,LOCATION_DECK,0,POS_FACEDOWN)			--turquoise

--your extra deck
Debug.AddCard(8491961,0,0,LOCATION_EXTRA,0,POS_FACEUP_ATTACK)		--recite starling
Debug.AddCard(8491961,0,0,LOCATION_EXTRA,0,POS_FACEUP_ATTACK)		--recite starling
Debug.AddCard(65305468,0,0,LOCATION_EXTRA,0,POS_FACEUP_ATTACK)		--f0
Debug.AddCard(48608796,0,0,LOCATION_EXTRA,0,POS_FACEUP_ATTACK)		--assembly nightingale

--opponent's
Debug.AddCard(44968687,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)		--Legendary Fisherman III

--Insert any message here
--insert additional message here
Debug.ReloadFieldEnd()
aux.BeginPuzzle()
