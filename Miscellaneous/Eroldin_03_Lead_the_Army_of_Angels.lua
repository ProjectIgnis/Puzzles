--[[message
An army of Demons has invaded Heaven. Kill them and drive back the evil sorcerer who summoned them.

	Creator: Eroldin
	Difficulty: ★★★☆☆
	Master Rule: 3
]]


--Lead the Army of Angels
Debug.SetAIName("Eroldin: Prove Your Skill!")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)
Debug.SetPlayerInfo(0,14398,0,0)
Debug.SetPlayerInfo(1,21899,0,0)

-- Challenger's Spell Zone
Debug.AddCard(81439173,0,0,LOCATION_SZONE,0,POS_FACEDOWN) --Foolish Burial
Debug.AddCard(25789292,0,0,LOCATION_SZONE,1,POS_FACEDOWN) --Forbidden Chalice
Debug.AddCard(81066751,0,0,LOCATION_SZONE,2,POS_FACEDOWN) --Divine Punishment
Debug.AddCard(09952083,0,0,LOCATION_SZONE,3,POS_FACEDOWN) --Chain Summoning
Debug.AddCard(28890974,0,0,LOCATION_SZONE,4,POS_FACEDOWN) --Celestial Transformation
Debug.AddCard(56433456,0,0,LOCATION_FZONE,0,POS_FACEUP) --The Sanctuary in the Sky

--Eroldin's Monster Zone
Debug.AddCard(61370518,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK) --Skull Archfiend of Lightning
m2=Debug.AddCard(33655493,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --Belial - Marquis of Darkness
Debug.AddCard(70781052,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK) --Summoned Skull

--Eroldin's Spell Zone
e1=Debug.AddCard(37120512,1,1,LOCATION_SZONE,1,POS_FACEUP) --Sword of Dark Destruction
e2=Debug.AddCard(37120512,1,1,LOCATION_SZONE,2,POS_FACEUP)
e3=Debug.AddCard(37120512,1,1,LOCATION_SZONE,3,POS_FACEUP)
Debug.AddCard(76714458,1,1,LOCATION_SZONE,4,POS_FACEDOWN) --Spell of Pain

--Challenger's Hand
Debug.AddCard(48964966,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Athena
Debug.AddCard(49905576,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Meltiel, Sage of the Sky
Debug.AddCard(91345518,0,0,LOCATION_HAND,0,POS_FACEDOWN) --The Agent of Judgment - Saturn
Debug.AddCard(44665365,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Herald pf Perfection
Debug.AddCard(74117290,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Dark World Dealings
Debug.AddCard(74968065,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Hecatrice
Debug.AddCard(27383110,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Dawn of the Herald
Debug.AddCard(68007326,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Guardian Angel Joan

-- Challenger's Deck
Debug.AddCard(01353770,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Archlord Kristya
Debug.AddCard(11260714,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Valhalla, Hall of the Fallen
Debug.AddCard(59509952,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Darklord Superbia

--Eroldin's Deck
Debug.AddCard(49881766,1,1,LOCATION_DECK,0,POS_FACEDOWN) --Archfiend Soldier

-- Challenger's Extra Deck
Debug.AddCard(25958491,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Ancient Sacred Wyvern

-- Challenger's Grave
Debug.AddCard(16638212,0,0,LOCATION_GRAVE,0,POS_FACEUP) --D.D. Sprite
Debug.AddCard(11662742,0,0,LOCATION_GRAVE,0,POS_FACEUP) --Gellenduo

-- Equip commands
Debug.PreEquip(e1,m2)
Debug.PreEquip(e2,m2)
Debug.PreEquip(e3,m2)

-- Start Puzzle
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
