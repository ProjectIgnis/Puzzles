--[[message
Using the X-Saber archtype is a great way the swarm the field and synchro summon high level monsters. This puzzle is based on that concept, while also using other forms of summoning. Good Luck!

	Creator: Eroldin
	Difficulty: ★★★★☆
	Master Rule: 3
]]


--X Saber
Debug.SetAIName("Eroldin: Prove Your Skill!")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)
Debug.SetPlayerInfo(0,2100,0,0)
Debug.SetPlayerInfo(1,25000,0,0)

--Challenger's Monster Zone
Debug.AddCard(96099959,0,0,LOCATION_MZONE,2,POS_FACEDOWN_DEFENSE) --X-Saber Palomuro

--Challenger's Spell Zone
Debug.AddCard(80280737,0,0,LOCATION_SZONE,0,POS_FACEDOWN) --Assault Mode Activate
Debug.AddCard(97077563,0,0,LOCATION_SZONE,1,POS_FACEDOWN) --Call of the Haunted
Debug.AddCard(72575145,0,0,LOCATION_SZONE,2,POS_FACEDOWN) --Demotion
Debug.AddCard(511000821,0,0,LOCATION_SZONE,3,POS_FACEUP) --Temple of Kings (Pre-Errata)
Debug.AddCard(09786492,0,0,LOCATION_SZONE,4,POS_FACEDOWN) --White Dragon Ritual

--Eroldin's Monster Zone
Debug.AddCard(89127526,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE) --Barrier Resonator

--Eroldin's Spell Zone
Debug.AddCard(14315573,1,1,LOCATION_SZONE,1,POS_FACEDOWN) --Negate Attack
Debug.AddCard(72302403,1,1,LOCATION_SZONE,2,POS_FACEUP) --Sword of Revealing Light 
Debug.AddCard(56120475,1,1,LOCATION_SZONE,3,POS_FACEDOWN) --Sakuretsu Amor
Debug.AddCard(62279055,1,1,LOCATION_SZONE,4,POS_FACEDOWN) --Magic Cylinder

--Challenger's Hand
Debug.AddCard(51808422,0,0,LOCATION_HAND,0,POS_FACEDOWN) --X-Saber Faultroll
Debug.AddCard(51808422,0,0,LOCATION_HAND,0,POS_FACEDOWN) 
Debug.AddCard(73398797,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Paladin of White Dragon
Debug.AddCard(71490127,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Dragon's Mirror
Debug.AddCard(13504844,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Gottems' Emergency Call
Debug.AddCard(87292536,0,0,LOCATION_HAND,0,POS_FACEDOWN) --X-Saber Ragigura
Debug.AddCard(36484016,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Miracle Synchro Fusion
Debug.AddCard(74657662,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Vylon Material
Debug.AddCard(36737092,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Synchro Change

--Eroldin's Hand
Debug.AddCard(44330098,1,1,LOCATION_HAND,0,POS_FACEDOWN) --Gorz the Emissary of Darkness


--Challenger's Deck
Debug.AddCard(77336644,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Blue Eyes White Dragon
Debug.AddCard(89631139,0,0,LOCATION_DECK,1,POS_FACEDOWN) --Red Dragon Archfiend/Assault Mode
Debug.AddCard(46411259,0,0,LOCATION_DECK,2,POS_FACEDOWN) --Metamorphosis
Debug.AddCard(23557835,0,0,LOCATION_DECK,3,POS_FACEDOWN) --Dimension Fusion
Debug.AddCard(55144522,0,0,LOCATION_DECK,4,POS_FACEDOWN) --Pot of Greed
Debug.AddCard(98045062,0,0,LOCATION_DECK,5,POS_FACEDOWN) --Enemy Controller

--Challenger's Extra Deck
Debug.AddCard(64463828,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Superalloy Beast Raptinus
Debug.AddCard(63519819,0,0,LOCATION_EXTRA,1,POS_FACEDOWN) --Thousand-Eyes Restrict
Debug.AddCard(21113684,0,0,LOCATION_EXTRA,2,POS_FACEDOWN) --Supreme Arcanite Magician
Debug.AddCard(99267150,0,0,LOCATION_EXTRA,3,POS_FACEDOWN) --Five-Headed Dragon
Debug.AddCard(02203790,0,0,LOCATION_EXTRA,4,POS_FACEDOWN) --XX-Saber-Hyunlei
Debug.AddCard(93157004,0,0,LOCATION_EXTRA,5,POS_FACEDOWN) --Vylon Omega
Debug.AddCard(75779210,0,0,LOCATION_EXTRA,6,POS_FACEDOWN) --Vylon Epsilon
Debug.AddCard(24696097,0,0,LOCATION_EXTRA,7,POS_FACEDOWN) --Shooting Star Dragon
Debug.AddCard(44508094,0,0,LOCATION_EXTRA,8,POS_FACEDOWN) --Stardust Dragon
Debug.AddCard(70902743,0,0,LOCATION_EXTRA,9,POS_FACEDOWN) --Red Dragon Archfiend
Debug.AddCard(50091196,0,0,LOCATION_EXTRA,10,POS_FACEDOWN) --Formula Synchron
Debug.AddCard(50091196,0,0,LOCATION_EXTRA,11,POS_FACEDOWN)

--Challenger's Grave
Debug.AddCard(75356564,0,0,LOCATION_GRAVE,0,POS_FACEUP) --Petit Dragon
Debug.AddCard(31924889,0,0,LOCATION_GRAVE,1,POS_FACEUP,true) --Arcanite Magician

--Challenger's Banned
Debug.AddCard(89194033,0,0,LOCATION_REMOVED,0,POS_FACEUP) --Mystical Beast of Serket

--Start Puzzle
Debug.ReloadFieldEnd()
aux.BeginPuzzle()
