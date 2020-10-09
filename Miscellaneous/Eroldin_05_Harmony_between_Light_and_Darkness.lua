--[[message
Light and darkness have mostly been considered as opposite and polarising forces. However, we shouldn't forget the concept of Ying and Yang. Harmonise the two forces and beat your opponent!

	Creator: Eroldin
	Difficulty: 6/10
	Master Rule: 3
]]


--Harmony between Light and Darkness
Debug.SetAIName("Eroldin: Prove Your Skill!")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)
Debug.SetPlayerInfo(0,1000,0,0)
Debug.SetPlayerInfo(1,45600,0,0)

--Challenger's Monster Zone
Debug.AddCard(91501248,0,0,LOCATION_MZONE,1,POS_FACEDOWN_DEFENSE) --PoTF
Debug.AddCard(79979666,0,0,LOCATION_MZONE,2,POS_FACEUP_DEFENSE) --E. Hero Bubbleman

--Challenger's Spell Zone
Debug.AddCard(48130397,0,0,LOCATION_SZONE,0,POS_FACEDOWN) --Super Polymerization
Debug.AddCard(80075749,0,0,LOCATION_SZONE,1,POS_FACEDOWN) --Bubble Illusion
Debug.AddCard(83778600,0,0,LOCATION_SZONE,2,POS_FACEDOWN) --Foolish Revival
Debug.AddCard(83778600,0,0,LOCATION_SZONE,3,POS_FACEDOWN) --Foolish Revival
Debug.AddCard(46052429,0,0,LOCATION_SZONE,4,POS_FACEDOWN) --Advanced Ritual Art
Debug.AddCard(81777047,0,0,LOCATION_FZONE,0,POS_FACEUP) --Luminous Spark

--Eroldin's Monster Zone
Debug.AddCard(62873545,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true) --Dragon Master Knight

--Eroldin's Spell Zone
Debug.AddCard(29401950,1,1,LOCATION_SZONE,2,POS_FACEDOWN) --Bottomless Trap Hole
Debug.AddCard(29401950,1,1,LOCATION_SZONE,1,POS_FACEDOWN) --Bottomless Trap Hole

--Challenger's Hand
Debug.AddCard(82693042,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Sphere of Chaos
Debug.AddCard(72989439,0,0,LOCATION_HAND,0,POS_FACEDOWN) --BLS - EotB
Debug.AddCard(37742478,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Honest
Debug.AddCard(80770678,0,0,LOCATION_HAND,0,POS_FACEDOWN) --S.o.t.H
Debug.AddCard(69542930,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Dedication through L&D
Debug.AddCard(38033121,0,0,LOCATION_HAND,0,POS_FACEDOWN) --DMG
Debug.AddCard(55144522,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Pot of Greed

--Challenger's Deck
Debug.AddCard(511001039,0,0,LOCATION_DECK,0,POS_FACEDOWN) --DMoC (Pre-Errata)
Debug.AddCard(46609443,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Chaos-End Master
Debug.AddCard(46986414,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Dark Magician
Debug.AddCard(27288416,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Mokey Mokey
--Debug.AddCard(30208479,0,0,LOCATION_DECK,0,POS_FACEDOWN) --MoBC
--Debug.AddCard(30208479,0,0,LOCATION_DECK,0,POS_FACEDOWN) --MoBC
Debug.AddCard(27174286,0,0,LOCATION_DECK,0,POS_FACEDOWN) --RftDD
--Debug.AddCard(79571449,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Gracefull
Debug.AddCard(61757117,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Northwemko
Debug.AddCard(43422537,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Double Summon
Debug.AddCard(55144522,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Pot of Greed
Debug.AddCard(59514116,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Secrets of Dark Magic

--Challenger's Extra Deck
Debug.AddCard(50237654,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --The Dark Magicians
Debug.AddCard(31385077,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Chaos Goddess
Debug.AddCard(37818794,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Red-Eyes Dark Dragoon

--Challenger's Grave
Debug.AddCard(57421866,0,0,LOCATION_GRAVE,0,POS_FACEUP) --Level Eater
Debug.AddCard(28553439,0,0,LOCATION_GRAVE,0,POS_FACEUP) --Magical Dimension
Debug.AddCard(46986414,0,0,LOCATION_GRAVE,0,POS_FACEUP) --Dark Magician
Debug.AddCard(30208479,0,0,LOCATION_GRAVE,0,POS_FACEUP) --MoBC
Debug.AddCard(30208479,0,0,LOCATION_GRAVE,0,POS_FACEUP) --MoBC
Debug.AddCard(46986414,0,0,LOCATION_GRAVE,0,POS_FACEUP) --Dark Magician
Debug.AddCard(30208479,0,0,LOCATION_GRAVE,0,POS_FACEUP) --MoBC
Debug.AddCard(98045062,0,0,LOCATION_GRAVE,0,POS_FACEUP) --Enemy Controler

--Eroldin's Grave
Debug.AddCard(46986414,1,1,LOCATION_GRAVE,0,POS_FACEUP) --Dark Magician
Debug.AddCard(46986414,1,1,LOCATION_GRAVE,0,POS_FACEUP) --Dark Magician
Debug.AddCard(46986414,1,1,LOCATION_GRAVE,0,POS_FACEUP) --Dark Magician
Debug.AddCard(30208479,1,1,LOCATION_GRAVE,0,POS_FACEUP) --MoBC
Debug.AddCard(30208479,1,1,LOCATION_GRAVE,0,POS_FACEUP) --MoBC
Debug.AddCard(30208479,1,1,LOCATION_GRAVE,0,POS_FACEUP) --MoBC
Debug.AddCard(89631139,1,1,LOCATION_GRAVE,0,POS_FACEUP) --BEWD
Debug.AddCard(94566432,1,1,LOCATION_GRAVE,0,POS_FACEUP,true) --Kaiser Dragon

--Challenger's Banned
Debug.AddCard(74677422,0,0,LOCATION_REMOVED,0,POS_FACEUP) --Red-Eyes Black Dragon

--Start Puzzle
Debug.ReloadFieldEnd()
aux.BeginPuzzle()
