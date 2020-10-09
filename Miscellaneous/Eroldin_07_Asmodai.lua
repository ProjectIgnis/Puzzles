--[[message
I've always wonderd which are more usefull... Asmodeus or Asmo & Deus?

	Creator: Eroldin
	Difficulty: 3/10
	Master Rule: 3
]]


--Asmodai
Debug.SetAIName("Eroldin: Prove Your Skill!")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)
Debug.SetPlayerInfo(0,1100,0,0)
Debug.SetPlayerInfo(1,9100,0,0)

--Challenger's SZONE
Debug.AddCard(31550470,0,0,LOCATION_SZONE,0,POS_FACEDOWN) --Escape from the Dark Dimension
Debug.AddCard(14342283,0,0,LOCATION_SZONE,1,POS_FACEDOWN) --Token Stampede
Debug.AddCard(37520316,0,0,LOCATION_SZONE,2,POS_FACEDOWN) --Mind Control
Debug.AddCard(53129443,0,0,LOCATION_SZONE,3,POS_FACEDOWN) --Dark Hole
Debug.AddCard(9952083,0,0,LOCATION_SZONE,4,POS_FACEDOWN) --Chain Summoning

--Challenger's HAND
Debug.AddCard(44436472,0,0,LOCATION_HAND,0,POS_FACEUP) --Double Coston
Debug.AddCard(74848038,0,0,LOCATION_HAND,0,POS_FACEUP) --Monster Reincarnation
Debug.AddCard(21219755,0,0,LOCATION_HAND,0,POS_FACEUP) --Destruction Ring
Debug.AddCard(511000821,0,0,LOCATION_HAND,0,POS_FACEUP) --Templ of the Kings
Debug.AddCard(83675475,0,0,LOCATION_HAND,0,POS_FACEUP) --Token Feastevil
Debug.AddCard(55144522,0,0,LOCATION_HAND,0,POS_FACEUP) --Pot of Greed

--Challenger's DECK
Debug.AddCard(85771019,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Darklord Asmodeus
Debug.AddCard(55690251,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Darklord Desire

--Eroldin's MZONE
local m1=Debug.AddCard(41006930,1,1,LOCATION_MZONE,0,POS_FACEUP_ATTACK) --Strike Ninja
Debug.AddCard(74157028,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true) --Cyber Twin Dragon
Debug.AddCard(89631139,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --Blue-Eyes White Dragon
Debug.AddCard(61257789,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true) --Stardust Dragon/Assault Mode

--Eroldin's SZONE
Debug.AddCard(97077563,1,1,LOCATION_SZONE,1,POS_FACEDOWN) --Call of the Haunted
local e1=Debug.AddCard(37684215,1,1,LOCATION_SZONE,2,POS_FACEUP) --Fusion Sword Murasame Blade
local e2=Debug.AddCard(37684215,1,1,LOCATION_SZONE,3,POS_FACEUP)
Debug.PreEquip(e1,m1)
Debug.PreEquip(e2,m1)
Debug.ReloadFieldEnd()
aux.BeginPuzzle()
