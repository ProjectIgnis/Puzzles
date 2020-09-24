--[[message
According to a Chinese myth, a carp can turn into a dragon. But can you do the same with a coelacanth?

	Creator: Eroldin
	Difficulty: ★★☆☆☆
	Master Rule: 3
]]


--Out of the Ocean came Fire
Debug.SetAIName('Eroldin: Prove Your Skill!')
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)
Debug.SetPlayerInfo(0,29000,0,0)
Debug.SetPlayerInfo(1,26850,0,0)

--Challenger's Deck
Debug.AddCard(83239739,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Oyster Meister
Debug.AddCard(83239739,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(93369354,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Fishborg Blaster
Debug.AddCard(93369354,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(83239739,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Challenger's Extra Deck
Debug.AddCard(50091196,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Formula Synchron
Debug.AddCard(50091196,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(97489701,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Red Nova Dragon
Debug.AddCard(70902743,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Red Dragon Archfiend
Debug.AddCard(29071332,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Armory Arm
Debug.AddCard(29071332,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Challenger's Hand
Debug.AddCard(88307361,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Superancient Deepsea King Coelacanth
Debug.AddCard(13429800,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Great White
Debug.AddCard(13429800,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(13429800,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(90263923,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Leeching the Light
Debug.AddCard(4779091,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Yubel - Terror Incarnate

--Challenger's Spell Zone
Debug.AddCard(58074572,0,0,LOCATION_SZONE,2,POS_FACEDOWN) --Demotion
Debug.AddCard(72575145,0,0,LOCATION_SZONE,1,POS_FACEDOWN) --Mooyan Curry
Debug.AddCard(34187685,0,0,LOCATION_SZONE,3,POS_FACEDOWN) --Double Attack

--Eroldin's Banned
Debug.AddCard(12482652,1,1,LOCATION_REMOVED,0,POS_FACEUP) --Ojama Green
Debug.AddCard(12482652,1,1,LOCATION_REMOVED,0,POS_FACEUP)
Debug.AddCard(12482652,1,1,LOCATION_REMOVED,0,POS_FACEUP)
Debug.AddCard(12482652,1,1,LOCATION_REMOVED,0,POS_FACEUP)
Debug.AddCard(12482652,1,1,LOCATION_REMOVED,0,POS_FACEUP)
Debug.AddCard(12482652,1,1,LOCATION_REMOVED,0,POS_FACEUP)
Debug.AddCard(12482652,1,1,LOCATION_REMOVED,0,POS_FACEUP)
Debug.AddCard(12482652,1,1,LOCATION_REMOVED,0,POS_FACEUP)
Debug.AddCard(12482652,1,1,LOCATION_REMOVED,0,POS_FACEUP)
Debug.AddCard(12482652,1,1,LOCATION_REMOVED,0,POS_FACEUP)
Debug.AddCard(12482652,1,1,LOCATION_REMOVED,0,POS_FACEUP)
Debug.AddCard(12482652,1,1,LOCATION_REMOVED,0,POS_FACEUP)
Debug.AddCard(12482652,1,1,LOCATION_REMOVED,0,POS_FACEUP)

--Eroldin's Monster Zone
local m_4=Debug.AddCard(27408609,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --Golden Homunculus

--Eroldin's Spell Zone
local eq_0=Debug.AddCard(61127349,1,1,LOCATION_SZONE,2,POS_FACEUP) --Big Bang Shot
local eq_1=Debug.AddCard(40619825,1,1,LOCATION_SZONE,1,POS_FACEUP) --Axe of Despair
local eq_2=Debug.AddCard(40619825,1,1,LOCATION_SZONE,3,POS_FACEUP)
Debug.AddCard(30606547,1,1,LOCATION_SZONE,0,POS_FACEUP) --The Dark Door
local eq_3=Debug.AddCard(22046459,1,1,LOCATION_SZONE,4,POS_FACEUP) --Mega Morph
Debug.AddCard(80921533,1,1,LOCATION_FZONE,0,POS_FACEUP) -- Mausoleum of the Emperor

--Equipped Cards
Debug.PreEquip(eq_0,m_4)
Debug.PreEquip(eq_1,m_4)
Debug.PreEquip(eq_2,m_4)
Debug.PreEquip(eq_3,m_4)

--Start Puzzle
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
