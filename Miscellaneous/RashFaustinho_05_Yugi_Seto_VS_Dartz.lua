--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--Partially rewritten by edo9300

--[[message
This duel puzzle attempts to re-create the duel against Dartz, using actual gameplay mechanics.

Be mindful of your LP management!

Creator: RashFaustinho
Your Starting LP: 600
Opponent's Starting LP: 22300
Difficulty: 5/10
]]


Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetAIName("Dartz")
Debug.SetPlayerInfo(0,600,0,0)
Debug.SetPlayerInfo(1,22300,0,0)

--Main Deck (yours)
Debug.AddCard(80019195,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(84565800,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(85800949,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(73398797,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(9786492,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(89631142,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(89631142,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(89631142,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(79814787,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(50725996,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(13048472,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(80161395,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(38033121,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(5405694,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(05758500,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(45948430,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(46986414,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(08240199,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(74848038,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(02903036,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(30208479,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Field (yours)
Debug.AddCard(50939127,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(69015963,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)

--GY (yours)
Debug.AddCard(11082056,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(46232525,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(1784686,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(87210505,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Spell & Trap Zones (yours)
Debug.AddCard(42776960,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(76137276,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(89397517,0,0,LOCATION_SZONE,4,POS_FACEDOWN)
Debug.AddCard(23020408,0,0,LOCATION_SZONE,0,POS_FACEDOWN)
Debug.AddCard(33550694,0,0,LOCATION_FZONE,0,POS_FACEUP)

--Extra
Debug.AddCard(23995346,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(62873545,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(53315891,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(28016193,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Hand (opponent's)
Debug.AddCard(82103466,1,1,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (opponent's)
local m_1=Debug.AddCard(7634581,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (opponent's)
Debug.AddCard(52503575,1,1,LOCATION_SZONE,4,POS_FACEUP)
Debug.AddCard(98139712,1,1,LOCATION_SZONE,3,POS_FACEUP)
Debug.AddCard(84797028,1,1,LOCATION_SZONE,0,POS_FACEUP)
Debug.AddCard(85742772,1,1,LOCATION_SZONE,1,POS_FACEUP)
Debug.AddCard(48179391,1,1,LOCATION_FZONE,0,POS_FACEUP)
local eq_0=Debug.AddCard(83746708,1,1,LOCATION_SZONE,2,POS_FACEUP)

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
Equip(eq_0,m_1)
aux.BeginPuzzle()

--Solution here: https://www.youtube.com/watch?v=yLlfvzyb8iI
