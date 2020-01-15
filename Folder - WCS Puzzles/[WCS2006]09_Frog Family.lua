
Debug.SetAIName("カエル一家")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)

Debug.SetPlayerInfo(0,1000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

Debug.AddCard(84451804,0,0,LOCATION_DECK,0,POS_FACEDOWN)

Debug.AddCard(10456559,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(34187685,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(12538374,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(84451804,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(84451804,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(69456283,0,0,LOCATION_HAND,0,POS_FACEDOWN)

Debug.AddCard(12538374,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(10456559,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)

Debug.AddCard(98494543,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(30606547,1,1,LOCATION_SZONE,2,POS_FACEUP)

Debug.AddCard(12538374,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(44883830,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(24094653,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)

Debug.AddCard(09910360,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

Debug.ReloadFieldEnd()
Debug.ShowHint("１回合內取得勝利")
aux.BeginPuzzle()



--[[
Solution:
-Activate Magical Stone Excation, discarding a T.A.D.P.O.L.E. and a 
Treeborn Frog from your hand, to get Polymerization from the graveyard
-Summon a Des Frog, sacrificing the Treeborn Frog on the field
-Use Des Frog's summoning effect to summon Des Frog from your deck 
(important: NOT YOUR HAND!)
-Use Polymerization to summon D.3.S. Frog in attack position
-Activate Double Attack, discarding Koitsu, and use it on D.3.S. Frog
-Go into battle phase
-Attack twice with D.3.S. Frog and win
]]