--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--Partially rewritten by edo9300
--[[message
A request from my fiance to create a puzzle where the player:
---
1. Only owns female monsters
2. Is allowed to control non-female monsters, except during the battle phase.
---
As such, I present to you: "Ladies Night". Have fun!

	Creator: Eroldin
	Difficulty: 7/10
	Master Rule: 2
]]
Debug.SetAIName("Eroldin: Prove Your Skill!")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,3000,0,0)
Debug.SetPlayerInfo(1,8200,0,0)

--Main Deck (yours)
Debug.AddCard(80316585,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(31764353,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(6178850,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(90219263,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(70828912,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(55144522,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(37744402,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(23557835,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(79571449,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(32268901,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(19159413,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(55144522,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(61757117,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(81674782,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Extra Deck (yours)
Debug.AddCard(22160245,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(63703130,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(58932615,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(94820406,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(47480070,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(55144522,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(91449144,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(37520316,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Spell & Trap Zones (yours)
Debug.AddCard(98792570,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(27967615,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(78986941,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(81325903,0,0,LOCATION_SZONE,0,POS_FACEDOWN)
Debug.AddCard(60234913,0,0,LOCATION_SZONE,4,POS_FACEDOWN)

--Main Deck (opponent's)
Debug.AddCard(89943724,1,1,LOCATION_DECK,0,POS_FACEDOWN)

--Monster Zones (opponent's)
local m_3=Debug.AddCard(78512663,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(76263644,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
local m_4=Debug.AddCard(4896788,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)
local m_5=Debug.AddCard(91932350,1,1,LOCATION_MZONE,0,POS_FACEUP_ATTACK,true)
Debug.AddCard(21844577,1,1,LOCATION_MZONE,4,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (opponent's)
Debug.AddCard(81380218,1,1,LOCATION_FZONE,0,POS_FACEUP)
local eq_1=Debug.AddCard(6178850,1,1,LOCATION_SZONE,2,POS_FACEUP)
local eq_0=Debug.AddCard(11913700,1,1,LOCATION_SZONE,1,POS_FACEUP)
Debug.AddCard(56120475,1,1,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(78783370,1,1,LOCATION_SZONE,0,POS_FACEDOWN)
local eq_2=Debug.AddCard(56747793,1,1,LOCATION_SZONE,4,POS_FACEUP)

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
Equip(eq_0,m_3)
Equip(eq_1,m_4)
Equip(eq_2,m_5)
aux.BeginPuzzle()
