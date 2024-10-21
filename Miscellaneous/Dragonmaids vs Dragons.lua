--[[message
This Puzzle is made by 闪光的白日梦 and optimized by Eroldin.
The original can be found at:
https://www.bilibili.com/video/BV1Lq4y1p7Mh/

	Difficulty: ?/10
]]

Debug.SetAIName("闪光的白日梦: Prove your skill!")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,1001,0,0)
Debug.SetPlayerInfo(1,4850,0,0)
Debug.AddCard(40110009,0,0,LOCATION_DECK,0,POS_FACEUP_ATTACK)
Debug.AddCard(42055234,0,0,LOCATION_DECK,0,POS_FACEUP_ATTACK)
Debug.AddCard(49575521,0,0,LOCATION_DECK,0,POS_FACEUP_ATTACK)
Debug.AddCard(32600024,0,0,LOCATION_DECK,0,POS_FACEUP_ATTACK)
Debug.AddCard(15848542,0,0,LOCATION_GRAVE,0,POS_FACEUP_ATTACK)
Debug.AddCard(24799107,0,0,LOCATION_EXTRA,0,POS_FACEDOWN_ATTACK)
Debug.AddCard(41232647,0,0,LOCATION_EXTRA,0,POS_FACEDOWN_ATTACK)
Debug.AddCard(50913601,0,0,LOCATION_SZONE,5,POS_FACEUP_ATTACK)
Debug.AddCard(14625090,0,0,LOCATION_SZONE,0,POS_FACEUP_ATTACK)
Debug.AddCard(86780027,0,0,LOCATION_SZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(86780027,0,0,LOCATION_SZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(86780027,0,0,LOCATION_SZONE,3,POS_FACEUP_ATTACK)
Debug.AddCard(40398073,0,0,LOCATION_HAND,2,POS_FACEUP_ATTACK)
Debug.AddCard(76782778,0,0,LOCATION_HAND,3,POS_FACEUP_ATTACK)
Debug.AddCard(13171876,0,0,LOCATION_HAND,4,POS_FACEUP_ATTACK)
Debug.AddCard(97342942,0,0,LOCATION_HAND,5,POS_FACEUP_ATTACK)
Debug.AddCard(50913601,1,1,LOCATION_SZONE,5,POS_FACEUP_ATTACK)
Debug.AddCard(44095762,1,1,LOCATION_SZONE,0,POS_FACEDOWN_ATTACK)
Debug.AddCard(99267151,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(86780027,1,1,LOCATION_SZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(99267151,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(86780027,1,1,LOCATION_SZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(99267151,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)
Debug.AddCard(86780027,1,1,LOCATION_SZONE,3,POS_FACEUP_ATTACK)
Debug.AddCard(77910045,1,1,LOCATION_SZONE,4,POS_FACEUP_ATTACK)
Debug.AddCard(10669138,1,1,LOCATION_MZONE,6,POS_FACEUP_ATTACK)
Debug.ReloadFieldEnd()
aux.BeginPuzzle()


--[[
Solution:
1- Normal Summon "Laundry Dragonmaid" and activate its effect
2- Activate the effect of "Dragonmaid Ernus" and Special Summon "Nurse Dragonmaid"
3- Activate the effect of "Nurse Dragonmaid" to Special Summon "Chamber Dragonmaid"
4- Activate the effect of "Chamber Dragonmaid" and add "Dragonmaid Changeover" to the hand
5- Activate the effect of "Welcome Dragonmaid" and add "Dragonmaid Thinkhec" to the hand
6- Activate "Dragonmaid Changeover" and Fusion Summon "Dragonmaid Sheou" using "Dragonmaid Thinkhec" and "Chamber Dragonmaid"
7- Enter the battle phase 
8- Activate the effect of "Nurse Dragonmaid" to Special Summon "Dragonmaid Ernus"
9- Activate the effect of "Laundry Dragonmaid" to Special Summon "Dragonmaid Nudyarl"
10- Attack Five-Headed Link Dragon with "Dragonmaid Sheou" and activate its effect to negate "Mirror Force" and Special Summon "House Dragonmaid"
11- Attack Five-Headed Link Dragon with "House Dragonmaid"
12- End the battle phase and activate the effect of "Dragonmaid Ernus" to Special Summon "Nurse Dragonmaid"
13- Activate the effect of "House Dragonmaid", destroying one "Five-Headed Dragon"
14- Activate the effect of "Dragonmaid Nudyarl" to Special Summon "Laundry Dragonmaid"
15- Activate the effect of "House Dragonmaid", destroying one "Five-Headed Dragon"
16- Activate the effect of "Dragonmaid Changeover", returning to the hand "Laundry Dragonmaid"
17- Activate the effect of "House Dragonmaid", destroying one "Five-Headed Dragon"
18- Activate "Dragonmaid Changeover" and Fusion Summon "Dragonmaid Sheou" using only monsters from the hand
19- Activate "Ectoplasmer"
20- Enter the End Phase and tribute "Dragonmaid Sheou" with "Ectoplasmer"
]]--
