--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
--[[message
You were warned by "Gragonith", that the "Lord of D." and the White Dragonflight have enlisted the aid of a "Summoned Skull" to invade the mountains where the Dark Dragonflight nests.
Punish the opposing dragonflight and their sorcerer for their arrogance and bring peace back to your mountains.
Be warned though, the "Lord of D." is a dasterdly tricky foe.

	Creator: Eroldin
	Difficulty: 4/10
	Master Rule: 2
  
]]
Debug.SetAIName("Eroldin: Prove Your Skill!")
Debug.SetPlayerInfo(0,900,0,0)
Debug.SetPlayerInfo(1,7200,0,0)

--Main Deck (yours)
Debug.AddCard(64335804,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(48229808,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(74677426,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(11224103,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(25290459,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(23171610,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(691925,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(25789292,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Extra Deck (yours)
Debug.AddCard(11901678,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(96561011,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(88264978,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(21785144,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(37520316,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(36262024,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(23842445,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(26118970,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Spell & Trap Zones (yours)
Debug.AddCard(50913601,0,0,LOCATION_FZONE,0,POS_FACEUP)
Debug.AddCard(71490127,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(68540058,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(70828912,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(31550470,0,0,LOCATION_SZONE,0,POS_FACEDOWN)
Debug.AddCard(39701395,0,0,LOCATION_SZONE,4,POS_FACEDOWN)

--Main Deck (opponent's)
Debug.AddCard(8124921,1,1,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (opponent's)
Debug.AddCard(44519536,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(7902349,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(33396948,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(70903634,1,1,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (opponent's)
local m_2=Debug.AddCard(17985575,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(70781054,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
Debug.AddCard(62873545,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)
Debug.AddCard(89631144,1,1,LOCATION_MZONE,0,POS_FACEUP_ATTACK,true)
Debug.AddCard(89631144,1,1,LOCATION_MZONE,4,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (opponent's)
Debug.AddCard(95132338,1,1,LOCATION_SZONE,2,POS_FACEUP)
local eq_0=Debug.AddCard(6178850,1,1,LOCATION_SZONE,1,POS_FACEUP)
local eq_1=Debug.AddCard(48576971,1,1,LOCATION_SZONE,3,POS_FACEUP)
Debug.AddCard(73915051,1,1,LOCATION_SZONE,0,POS_FACEDOWN)
Debug.AddCard(83675475,1,1,LOCATION_SZONE,4,POS_FACEDOWN)

Debug.ReloadFieldEnd()

--Equip Function
local function Equip(c,target)
	Debug.PreEquip(c,target)
	local ctype=c:Type()
	if ctype&TYPE_EQUIP==0 then
		local code=EFFECT_CHANGE_TYPE
		local value=TYPE_EQUIP+TYPE_SPELL
		if c:IsType(TYPE_TRAP) then
			code=EFFECT_ADD_TYPE
			value=TYPE_EQUIP
		elseif ctype&TYPE_UNION~=0 then
			value=value+TYPE_UNION
		elseif ctype&TYPE_TOKEN~=0 then
			value=value+TYPE_TOKEN
		end
		local eff=Effect.CreateEffect(c)
		eff:SetType(EFFECT_TYPE_SINGLE)
		eff:SetCode(code)
		eff:SetValue(value)
		eff:SetProperty(EFFECT_FLAG_CANNOT_DISABLE)
		eff:SetReset(RESET_EVENT+0x17e0000)
		c:RegisterEffect(eff,true)
	end
end

--Equipped Cards
Equip(eq_0,m_2)
Equip(eq_1,m_2)
aux.BeginPuzzle()

--[[
1. Summon "Black Dragon's Chick"
2. Special Summon the "Darkness Metal Dragon (D.M.D)"
3. Cards of Consonance
4. Solar Recharge
5. "Chalice" --> "Lord of D."
6. Premature Burial --> "Horus"
7. Activate "D.M.D" --> "Red-Eyes"
8. Special Summon "Darkness Dragon"
9. "Mind Control:  --> Summoned Skull
10. "Dragon's Mirror"
11. "Escape from the Dark Dimension" --> "Red-Eyes"
12. "Metalmorph" --> "Red-Eyes"
13. Special Summon from Deck "Metal Dragon"
14. "Limiter Removal"
15. "Nitro Unit" --> "Ultimate Dragon"
16. "Level Up!"
--Battle Phase--
17. "Metal Dragon" --> "Ultimate Dragon"
18. "Darkness Dragon" --> "Blue-Eyes"
19. "Skull Dragon" --> "Blue-Eyes"
20. "Horus" --> "Lord of D." (Chain "Horus")
21. Attack with "D.M.D" for the Win.
]]
