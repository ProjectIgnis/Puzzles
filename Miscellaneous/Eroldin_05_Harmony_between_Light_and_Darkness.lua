--[[message
Light and darkness have mostly been considered as opposite and polarising forces. However, we shouldn't forget the concept of Ying and Yang. Harmonise the tweo forces and beat your opponent!

	Creator: Eroldin
	Difficulty: ★★★★☆
	Master Rule: 3
]]


--Harmony between Light and Darkness
Debug.SetAIName("Eroldin: Prove Your Skill!")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)
Debug.SetPlayerInfo(0,1000,0,0)
Debug.SetPlayerInfo(1,43000,0,0)

--Challenger's Monster Zone
Debug.AddCard(79979666,0,0,LOCATION_MZONE,2,POS_FACEUP_DEFENSE) --E. Hero Bubbleman

--Challenger's Spell Zone
Debug.AddCard(48130397,0,0,LOCATION_SZONE,0,POS_FACEDOWN) --Super Polymerization
Debug.AddCard(55144522,0,0,LOCATION_SZONE,1,POS_FACEDOWN) --Pot of Greed
Debug.AddCard(83778600,0,0,LOCATION_SZONE,2,POS_FACEDOWN) --Foolish Revival
Debug.AddCard(83778600,0,0,LOCATION_SZONE,3,POS_FACEDOWN) --Foolish Revival
Debug.AddCard(46052429,0,0,LOCATION_SZONE,4,POS_FACEDOWN) --Advanced Ritual Art
Debug.AddCard(81777047,0,0,LOCATION_FZONE,0,POS_FACEUP) --Luminous Spark

--Eroldin's Monster Zone
Debug.AddCard(62873545,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --Dragon Master Knight

--Eroldin's Spell Zone
Debug.AddCard(29401950,1,1,LOCATION_SZONE,2,POS_FACEDOWN) --Bottomless Trap Hole

--Challenger's Hand
Debug.AddCard(82693042,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Sphere of Chaos
Debug.AddCard(72989439,0,0,LOCATION_HAND,1,POS_FACEDOWN) --BLS - EotB
Debug.AddCard(37742478,0,0,LOCATION_HAND,2,POS_FACEDOWN) --Honest
Debug.AddCard(80770678,0,0,LOCATION_HAND,3,POS_FACEDOWN) --S.o.t.H
Debug.AddCard(69542930,0,0,LOCATION_HAND,4,POS_FACEDOWN) --Dedication through L&D
Debug.AddCard(38033121,0,0,LOCATION_HAND,5,POS_FACEDOWN) --DMG
Debug.AddCard(80075749,0,0,LOCATION_HAND,6,POS_FACEDOWN) --Bubble Illusion
Debug.AddCard(61757117,0,0,LOCATION_HAND,7,POS_FACEDOWN) --Northwemko
Debug.AddCard(511001074,0,0,LOCATION_HAND,8,POS_FACEDOWN) --Performapal Trump Witch
Debug.AddCard(43422537,0,0,LOCATION_HAND,9,POS_FACEDOWN) --Double Summon

--Challenger's Deck
Debug.AddCard(511001039,0,0,LOCATION_DECK,0,POS_FACEDOWN) --DMoC (Pre-Errata)
Debug.AddCard(46609443,0,0,LOCATION_DECK,1,POS_FACEDOWN) --Chaos-End Master
Debug.AddCard(46986414,0,0,LOCATION_DECK,2,POS_FACEDOWN) --Dark Magician
Debug.AddCard(27288416,0,0,LOCATION_DECK,3,POS_FACEDOWN) --Mokey Mokey
Debug.AddCard(27174286,0,0,LOCATION_DECK,4,POS_FACEDOWN) --RftDD

--Challenger's Extra Deck
Debug.AddCard(43892408,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --DMGtDK
Debug.AddCard(31385077,0,0,LOCATION_EXTRA,1,POS_FACEDOWN) --Chaos Goddess
Debug.AddCard(98502113,0,0,LOCATION_EXTRA,2,POS_FACEDOWN) --Dark Paladin

--Challenger's Grave
Debug.AddCard(57421866,0,0,LOCATION_GRAVE,0,POS_FACEUP) --Level Eater
Debug.AddCard(28553439,0,0,LOCATION_GRAVE,1,POS_FACEUP) --Magical Dimension
Debug.AddCard(46986414,0,0,LOCATION_GRAVE,2,POS_FACEUP) --Dark Magician
Debug.AddCard(30208479,0,0,LOCATION_GRAVE,3,POS_FACEUP) --MoBC
Debug.AddCard(30208479,0,0,LOCATION_GRAVE,4,POS_FACEUP) --MoBC
Debug.AddCard(46986414,0,0,LOCATION_GRAVE,5,POS_FACEUP) --Dark Magician
Debug.AddCard(30208479,0,0,LOCATION_GRAVE,6,POS_FACEUP) --MoBC
Debug.AddCard(98045062,0,0,LOCATION_GRAVE,7,POS_FACEUP) --Enemy Controller

--Eroldin's Grave
Debug.AddCard(46986414,1,1,LOCATION_GRAVE,0,POS_FACEUP) --Dark Magician
Debug.AddCard(46986414,1,1,LOCATION_GRAVE,1,POS_FACEUP) --Dark Magician
Debug.AddCard(46986414,1,1,LOCATION_GRAVE,2,POS_FACEUP) --Dark Magician
Debug.AddCard(30208479,1,1,LOCATION_GRAVE,3,POS_FACEUP) --MoBC
Debug.AddCard(30208479,1,1,LOCATION_GRAVE,4,POS_FACEUP) --MoBC
Debug.AddCard(30208479,1,1,LOCATION_GRAVE,5,POS_FACEUP) --MoBC
Debug.AddCard(89631139,1,1,LOCATION_GRAVE,6,POS_FACEUP) --BEWD

--Challenger's Banned
Debug.AddCard(78193831,0,0,LOCATION_REMOVED,0,POS_FACEUP) --Buster Blader

--Star Puzzle
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
