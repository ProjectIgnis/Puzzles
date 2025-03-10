Debug.SetAIName("WCS 2006")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)

Debug.SetPlayerInfo(0,100,0,0)
Debug.SetPlayerInfo(1,3000,0,0)

--[[message
Reproduces a Duel Puzzle from "Ultimate Masters: World Championship 2006", featuring the destruction of Three Sacred Beasts


	Your Starting LP: 100
	Opponent's Starting LP: 3000
	Complexity: 2/10.
	Objective: Win this turn.
]]

Debug.AddCard(69456283,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(1546123,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(46411259,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(48202661,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(13179332,0,0,LOCATION_MZONE,1,POS_FACEUP_DEFENSE)
Debug.AddCard(26202165,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(73414375,0,0,LOCATION_MZONE,3,POS_FACEDOWN_DEFENSE)
Debug.AddCard(37580756,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(4178474,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(80604091,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(29267084,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(54704216,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(26905245,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(32491822,1,1,LOCATION_MZONE,3,POS_FACEUP_DEFENSE)
Debug.AddCard(69890967,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(6007213,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win this turn")
aux.BeginPuzzle()

--[[
Solution:
-Activate "Raigeki Break", discarding "Aitsu" to destroy your "Sangan".
-Select "Koitsu" for the effect of "Sangan".
-Chain "Michizure" to the effect of "Sangan" to destroy "Hamon, Lord of Striking Thunder".
-Flip Summon "Dimension Jar".
-Use the effect of "Dimension Jar" to remove any 3 of "Ultimate Offering", "Shadow Spell", "Nightmare Wheel", or "Metal Reflect Slime" from the opponent's Graveyard from play.
-Tribute "Charcoal Inpachi" and "Dimension Jar" to Tribute Summon "Koitsu".
-Activate "Metamorphosis", tributing "Koitsu" to Special Summon "Cyber End Dragon" in Attack Position.
-Attack "Uria, Lord of Searing Flames" with "Cyber End Dragon".

Alternative Solution:
-Activate "Raigeki Break", discarding "Aitsu" to destroy your "Sangan".
-Select "Koitsu" for the effect of "Sangan".
-Chain "Michizure" to the effect of "Sangan" to destroy "Hamon, Lord of Striking Thunder".
-Tribute "Charcoal Inpachi" and the face-down "Dimension Jar" Tribute Summon "Koitsu".
-Activate "Metamorphosis", tributing "Koitsu" to Special Summon "Cyber End Dragon" in Attack Position.
-Attack the "Phantasm Token" with "Cyber End Dragon".
]]