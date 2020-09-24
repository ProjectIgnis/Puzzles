--[[message
Magicians have always been accused of being devil worshippers. Show them, this is not the case!

	Creator: Eroldin
	Difficulty: ★★★☆☆
	Master Rule: 3
]]


--The Magician Family
Debug.SetAIName('Eroldin: "Prove Your Skill!"')
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)
Debug.SetPlayerInfo(0,200,0,0)
Debug.SetPlayerInfo(1,16100,0,0)

--Challenger's Monster Zone
local m1=Debug.AddCard(46986414,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --Dark Magician

--CHallenger's Spell Zone
Debug.AddCard(57995165,0,0,LOCATION_SZONE,0,POS_FACEDOWN) --Extra-Foolish Burial
Debug.AddCard(55144522,0,0,LOCATION_SZONE,1,POS_FACEDOWN) --Pot of Greed
Debug.AddCard(26708437,0,0,LOCATION_SZONE,2,POS_FACEDOWN) --XYZ Reborn
Debug.AddCard(97077563,0,0,LOCATION_SZONE,3,POS_FACEDOWN) --Call of the Haunted
Debug.AddCard(79571449,0,0,LOCATION_SZONE,4,POS_FACEDOWN) --Graceful Charity

--Eroldin's Monster Zone
Debug.AddCard(47986555,1,1,LOCATION_MZONE,0,POS_FACEUP_ATTACK) --Millennium Golem
Debug.AddCard(47372349,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK) --Acrobat Monkey
Debug.AddCard(04167084,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --The First Darklord
Debug.AddCard(47372349,1,1,LOCATION_MZONE,3,POS_FACEUP_DEFENSE) --Acrobat Monkey
Debug.AddCard(47986555,1,1,LOCATION_MZONE,4,POS_FACEUP_ATTACK) --Millennium Golem

--Eroldin's Spell Zone
local e1=Debug.AddCard(83584898,1,1,LOCATION_SZONE,0,POS_FACEUP) --Darkword Shackles
Debug.AddCard(70342110,1,1,LOCATION_SZONE,1,POS_FACEDOWN) --Dimensional Prison
Debug.AddCard(44947065,1,1,LOCATION_SZONE,2,POS_FACEUP) --Burden of the Mighty
Debug.AddCard(70342110,1,1,LOCATION_SZONE,3,POS_FACEDOWN) --Dimensional Prison
local e2=Debug.AddCard(83584898,1,1,LOCATION_SZONE,4,POS_FACEUP) --Darkword Shackles

--Challenger's Hand
Debug.AddCard(30603688,0,0,LOCATION_HAND,0,POS_FACEUP) --Apprentice Illusion Magician
Debug.AddCard(07198399,0,0,LOCATION_HAND,1,POS_FACEDOWN) --Choco Magician Girl
Debug.AddCard(38033125,0,0,LOCATION_HAND,2,POS_FACEDOWN) --Dark Magician Girl
Debug.AddCard(30603688,0,0,LOCATION_HAND,3,POS_FACEDOWN) --Apprentice 
Debug.AddCard(78986941,0,0,LOCATION_HAND,4,POS_FACEDOWN) --Order to Charge
Debug.AddCard(60709218,0,0,LOCATION_HAND,5,POS_FACEDOWN) --Bond Between Teacher and Student
Debug.AddCard(25774450,0,0,LOCATION_HAND,6,POS_FACEDOWN) --Mystic Box

--Challenger's Deck
Debug.AddCard(46986414,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Dark Magician
Debug.AddCard(46986414,0,0,LOCATION_DECK,1,POS_FACEDOWN) --Dark Magician
Debug.AddCard(51790181,0,0,LOCATION_DECK,2,POS_FACEDOWN) --Pot of Benevolance
Debug.AddCard(01784686,0,0,LOCATION_DECK,3,POS_FACEDOWN) --The Eye of Timaeus
Debug.AddCard(42006475,0,0,LOCATION_DECK,4,POS_FACEDOWN) --Palladium Oracle Mana
Debug.AddCard(30208479,0,0,LOCATION_DECK,5,POS_FACEDOWN) --MoBC
Debug.AddCard(30208479,0,0,LOCATION_DECK,6,POS_FACEDOWN) --MoBC
Debug.AddCard(71490127,0,0,LOCATION_DECK,7,POS_DACEDOWN) --Dragon's Mirror

--Challenger's Extra Deck
Debug.AddCard(10000030,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Magi Magi Magician Gal
Debug.AddCard(96471335,0,0,LOCATION_EXTRA,1,POS_FACEDOWN) --Ebon Illusion Magician
Debug.AddCard(43892408,0,0,LOCATION_EXTRA,2,POS_FACEDOWN) --DMGtDK
Debug.AddCard(75380687,0,0,LOCATION_EXTRA,3,POS_FACEDOWN) --Amulet Dragon
Debug.AddCard(41721210,0,0,LOCATION_EXTRA,4,POS_FACEDOWN) --DMtDK

--Eroldin's Grave
Debug.AddCard(15259703,1,1,LOCATION_GRAVE,0,POS_FACEDOWN) --Toon World
Debug.AddCard(15259703,1,1,LOCATION_GRAVE,1,POS_FACEDOWN) --Toon World
Debug.AddCard(15259703,1,1,LOCATION_GRAVE,2,POS_FACEDOWN) --Toon World

--Equip commands (Debug.PreEquip(e1,m1))
Debug.PreEquip(e1,m1)
Debug.PreEquip(e2,m1)

--Start Puzzle
Debug.ReloadFieldEnd()
aux.BeginPuzzle()
