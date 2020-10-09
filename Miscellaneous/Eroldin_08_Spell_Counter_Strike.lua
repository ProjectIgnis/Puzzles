--[[message
This puzzle focusses on the use of Spell Counters. Good luck!

	Creator: Eroldin
	Difficulty: 8/10
	Master Rule: 3
]]


--Spell Counter Strike
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_PSEUDO_SHUFFLE+DUEL_SIMPLE_AI)
Debug.SetAIName("Eroldin: Prove Your Skill!")
Debug.SetPlayerInfo(0,900,0,0)
Debug.SetPlayerInfo(1,30100,0,0)

--Challenger's Deck
Debug.AddCard(511001039,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Dark Magician of Chaos (Pre-Errata)
Debug.AddCard(38033124,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Dark Magician Girl
Debug.AddCard(70828912,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Premature Burial
Debug.AddCard(55144522,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Pot of Greed
Debug.AddCard(69542930,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Dedication through Light and Darkness

--Challenger's Extra Deck
Debug.AddCard(63101919,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Tempest Magician

--Challenger's Hand
Debug.AddCard(6061630,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Magicial Exemplar
Debug.AddCard(83269557,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Dark Valkyria
Debug.AddCard(30208479,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Magician of Black Chaos
Debug.AddCard(46986414,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Dark Magician
Debug.AddCard(30208479,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(40732515,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Endymion, the Master Magician
Debug.AddCard(5318639,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Mystical Space Typhoon
Debug.AddCard(45462639,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Dark Red Enchanter

--Challenger's Grave
Debug.AddCard(5052212,0,0,LOCATION_GRAVE,0,POS_FACEUP) --Battle Tuned
Debug.AddCard(55144522,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(36107810,0,0,LOCATION_GRAVE,0,POS_FACEUP) --Night's End Sorcerer

--Challenger's Spell Zone
Debug.AddCard(75014062,0,0,LOCATION_SZONE,0,POS_FACEDOWN) --Spell Power Grasp
Debug.AddCard(95750695,0,0,LOCATION_SZONE,1,POS_FACEDOWN) --Supervise
Debug.AddCard(1353770,0,0,LOCATION_SZONE,2,POS_FACEDOWN) --Valhalla, Hall of the Fallen
Debug.AddCard(9952083,0,0,LOCATION_SZONE,3,POS_FACEDOWN) --Chain Summoning
Debug.AddCard(34029630,0,0,LOCATION_SZONE,4,POS_FACEDOWN) --Pitch-Black Power Stone
Debug.AddCard(39910367,0,0,LOCATION_FZONE,0,POS_FACEUP) --Magical City of Endymion

--Eroldin's Deck
Debug.AddCard(77336644,1,1,LOCATION_DECK,0,POS_FACEDOWN) --Red Dragon Archfiend/Assault Mode
Debug.AddCard(2525268,1,1,LOCATION_DECK,0,POS_FACEDOWN) --Defender, the Magical Knight

--Eroldin's Extra Deck
Debug.AddCard(70902743,1,1,LOCATION_EXTRA,0,POS_FACEDOWN) --Red Dragon Archfiend

--GY Erolin's Graveyard
Debug.AddCard(88819587,1,1,LOCATION_GRAVE,0,POS_FACEUP) --Baby Dragon
Debug.AddCard(89631139,1,1,LOCATION_GRAVE,0,POS_FACEUP) --Blue-Eyes White Dragon
Debug.AddCard(89631139,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(89631139,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(46986414,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(23995346,1,1,LOCATION_GRAVE,0,POS_FACEUP) --Blue-Eyes Ultimate Dragon

--Monster Zones (opponent's)
Debug.AddCard(22837504,1,1,LOCATION_MZONE,0,POS_FACEUP_ATTACK) --Mist Valley Soldier
Debug.AddCard(41902352,1,1,LOCATION_MZONE,1,POS_FACEUP_DEFENSE) --Blackwing - Kochi the Daybreak
Debug.AddCard(53347303,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --Blue-Eyes Shining Dragon
Debug.AddCard(6061630,1,1,LOCATION_MZONE,3,POS_FACEUP_DEFENSE)

--Spell & Trap Zones (opponent's)
Debug.AddCard(50755,1,1,LOCATION_SZONE,0,POS_FACEDOWN) --Magician's Circle
Debug.AddCard(94634433,1,1,LOCATION_SZONE,1,POS_FACEDOWN) --Urgent Tuning
Debug.AddCard(47060347,1,1,LOCATION_SZONE,2,POS_FACEDOWN) --Aegis of Gaia
Debug.AddCard(80280737,1,1,LOCATION_SZONE,3,POS_FACEDOWN) --Assauly Mode Activate

Debug.ReloadFieldEnd()
aux.BeginPuzzle()
