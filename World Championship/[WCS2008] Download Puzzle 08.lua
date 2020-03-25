--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! World Championship 2008"

	Your Starting LP: 2500
	Opponent's Starting LP: 2100
	Complexity: 3/10.
	Objective: Win this turn.
]]
Debug.SetAIName("WCS 2008")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)
Debug.SetPlayerInfo(0,2500,0,0)
Debug.SetPlayerInfo(1,2100,0,0)

Debug.AddCard(79323590,1,1,LOCATION_SZONE,0,POS_FACEUP)
Debug.AddCard(79323590,1,1,LOCATION_SZONE,1,POS_FACEUP)
Debug.AddCard(03136426,1,1,LOCATION_SZONE,2,POS_FACEUP)
Debug.AddCard(85742772,1,1,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(53119267,1,1,LOCATION_SZONE,4,POS_FACEUP)

Debug.AddCard(65240384,1,1,LOCATION_MZONE,0,POS_FACEUP_ATTACK)
Debug.AddCard(65240384,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(62180201,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(62180201,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)

Debug.AddCard(12206212,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(76812113,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(76812113,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(21900719,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(90219263,0,0,LOCATION_DECK,0,POS_FACEDOWN)

Debug.AddCard(77778835,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(53567095,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(75782277,0,0,LOCATION_SZONE,5,POS_FACEUP)

Debug.AddCard(56570271,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(76812113,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(30914564,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)

Debug.AddCard(98494543,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(12181376,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(83764718,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(91932350,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(27927359,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(54415063,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(34100324,0,0,LOCATION_HAND,0,POS_FACEDOWN)


Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()
--[[ Solution
 Activate "Hysteric Party" and send "Harpie Lady 1" to the grave. Special Summon both "Harpie Lady" & "Harpie Lady 1" in Defense(Level Limit - Area B will force them into that position anyway. In addition, you lose 500LP due to Magical Thorn; You have 2000LP left)
- "Harpies' Hunting Grounds" will activate - Destroy Chain Energy
- Activate "Icarus Attack" and Tribute "Harpie Lady" (The NORMAL one. Not the effect one...) - Destroy 2 Dreadroots
- Summon either "Harpie Lady 2" or "Harpie Lady 3"(You'll lose another 500 bringing you to 1500LP) and the Hunting grounds should trigger. Destroy "Level Limit - Area B"
- Activate "Monster Reborn" and summon "Sacred Crane" in Attack(1000LP Left)
- Activate "Elegant Egotist" and summon "Harpie Lady Sisters"(500LP Left) and the Hunting Grounds should trigger again. Destroy that last Chain Energy!
- Activate "Triangle Ecstasy Spark" and after that, Activate "Magical Stone Excavation" and get "Monster Reborn"
- Activate "Monster Reborn" and bring out any monster. If you brought out a Harpie Lady, Destroy Magical Thorn.
- Go into your Battle Phase
- Sacred Crane attacks Face-Down Defense "Big Shield Gardna"(You lose 400LP; 100LP Remaining)
- Harpie Lady Sisters attacks Face Up Attack "Big Shield Gardna" (Opponent loses 1550 LP; He has 850LP left)
- Activate Both "Ojama Trio" and "Remove Brainwashing"
]]