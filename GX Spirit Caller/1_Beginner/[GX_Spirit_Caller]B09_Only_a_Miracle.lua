--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 100
Opponent's Starting LP: 1700
Complexity: 2/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,100,0,0)
Debug.SetPlayerInfo(1,1700,0,0)
Debug.SetAIName("Professor Sartyr")

--Hand (yours)
Debug.AddCard(71413901,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Spell & Trap Zones (yours)
Debug.AddCard(60082869,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(37011715,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(41420027,0,0,LOCATION_SZONE,3,POS_FACEDOWN)

--GY (opponent's)
Debug.AddCard(73891874,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(504700105,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(22046459,1,1,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (opponent's)
local m_1=Debug.AddCard(89631142,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (opponent's) partially written by PryQ
local eq_0=Debug.AddCard(1435851,1,1,LOCATION_SZONE,3,POS_FACEUP)
local t_1=Debug.AddCard(51452091,1,1,LOCATION_SZONE,2,POS_FACEDOWN)
t_1:GetActivateEffect():SetCondition(function() return Duel.GetCurrentChain(true)>1 end)

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

Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

-Summon Breaker the Magical Warrior.
-Use Breaker the Magical Warrior's effect to destroy Dragon Treasure.
-Chain to this with Dust Tornado, targeting their face-down Royal Decree.
-They will chain Royal Decree.
-You chain Miraculous Rebirth, selecting White-Horned Dragon.
-As a result of this chain Dragon Treasure is destoyed.
-Use White-Horned Dragon's effect, removing Dragon Treasure, Megamorph and Magical Labyrinth to increase its ATK by 900.
-Enter the Battle Phase.
-Attack their Blue-Eyes White Dragon with White-Horned Dragon.
-Attack directly with Breaker the Magical Warrior.
]]
