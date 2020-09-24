--[[message
A simple puzzle, which teaches a Red Dragon Archfiend line combo.

	Creator: Eroldin
	Difficulty: ★☆☆☆☆
	Master Rule: 3
]]


--Mastering the Red Dragons
Debug.SetAIName("Eroldin: Prove Your Skill!")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)
Debug.SetPlayerInfo(0,100,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

--Challenger's Spell zone
Debug.AddCard(42079445,0,0,LOCATION_SZONE,1,POS_FACEDOWN) --Descending Lost Star
Debug.AddCard(76407432,0,0,LOCATION_SZONE,2,POS_FACEDOWN) --Assault Counter 
Debug.AddCard(80280737,0,0,LOCATION_SZONE,3,POS_FACEDOWN) --Assault Mode Activate

--Challenger's Hand
Debug.AddCard(20474741,0,0,LOCATION_HAND,0,POS_FACEUP) --Trident Warrior
Debug.AddCard(57568840,0,0,LOCATION_HAND,0,POS_FACEUP) --Delta Flyer
Debug.AddCard(8487449,0,0,LOCATION_HAND,0,POS_FACEUP) --Jester Confit
Debug.AddCard(16638212,0,0,LOCATION_HAND,0,POS_FACEUP) --Creation Resonator
Debug.AddCard(5780210,0,0,LOCATION_HAND,0,POS_FACEUP) --D.D. Spirte

--Challenger's Deck
Debug.AddCard(77336644,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Red Dragon Archfiend/Assault Mode

--Challenger's Extra Deck
Debug.AddCard(70902743,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Red Dragon Archfiend
Debug.AddCard(97489701,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Red Nova Dragon

--Eroldin's Monster zone
Debug.AddCard(46272804,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --Lancer Lindwurm

--Eroldin's Spell zone
Debug.AddCard(44095762,1,1,LOCATION_SZONE,2,POS_FACEDOWN) --Mirror Force

--Start the Puzzle
Debug.ReloadFieldEnd()
aux.BeginPuzzle()

--[[
Copyright agreement:
	This Duel Puzzle is created by Eroldin, also known as DJNightchild
	You are free to share and/or modify this Duel Puzzle, provided you'll agree to the following points
	(you automatically agree to these points when you either play or share this puzzle and it's derivative works):
	1. You wont claim the original puzzle (this puzzle) as your own.
	2. If you share this puzzle AS IS, you will not change the AI name in this puzzle.
	3. If you modify and share this puzzle (a derivative work), refer to the original in both the LUA file and/or the medium you've shared this puzzle on.
	4. Except when agreed to otherwise, you are not allowed to use this puzzle and it's derivative works for commercial purposes.
	Permission for commercial purposes may be granted by contacting Eroldin at djnightchild@gmail.com.
	5. Point 3, 4 and 5 must be added AS IS in any derivative work.
	Legal actions might be undertaken you break this copyright agreement.
]]
