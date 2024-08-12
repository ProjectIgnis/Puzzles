--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--Partially rewritten by edo9300
--[[message
Can you solve the Sphinx's riddle?

	Creator: Eroldin
	Difficulty: 6/10
	Master Rule: 2
]]
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetAIName("Eroldin: Prove Your Skill!")
Debug.SetPlayerInfo(0,18200,0,0)
Debug.SetPlayerInfo(1,9000,0,0)

--Main Deck (yours)
Debug.AddCard(95286165,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(55713623,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Extra Deck (yours)
Debug.AddCard(63519819,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(40619825,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(47529357,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(21900719,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(46052429,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(79759861,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(64631466,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(55144522,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Banished (yours)
Debug.AddCard(27288416,0,0,LOCATION_REMOVED,0,POS_FACEUP)
Debug.AddCard(27125110,0,0,LOCATION_REMOVED,0,POS_FACEUP)

--Spell & Trap Zones (yours)
Debug.AddCard(77622396,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(51790181,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(39019325,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(24094653,0,0,LOCATION_SZONE,0,POS_FACEDOWN)
Debug.AddCard(27174286,0,0,LOCATION_SZONE,4,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(87997872,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(51402177,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
Debug.AddCard(15013468,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)
local m_2=Debug.AddCard(40659562,1,1,LOCATION_MZONE,0,POS_FACEUP_DEFENSE,true)
local m_3=Debug.AddCard(40659562,1,1,LOCATION_MZONE,4,POS_FACEUP_DEFENSE,true)

--Spell & Trap Zones (opponent's)
Debug.AddCard(23424603,1,1,LOCATION_FZONE,0,POS_FACEUP)
local eq_0=Debug.AddCard(7625614,1,1,LOCATION_SZONE,2,POS_FACEUP)
local eq_1=Debug.AddCard(7625614,1,1,LOCATION_SZONE,1,POS_FACEUP)
Debug.AddCard(72302403,1,1,LOCATION_SZONE,3,POS_FACEUP)
Debug.AddCard(72302403,1,1,LOCATION_SZONE,0,POS_FACEUP)

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
Equip(eq_1,m_3)
aux.BeginPuzzle()
