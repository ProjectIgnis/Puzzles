--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 3000
Opponent's Starting LP: 10500
Complexity: 3+/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,3000,0,0)
Debug.SetPlayerInfo(1,10500,0,0)
Debug.SetAIName("Professor Sartyr")

--Hand (yours)
Debug.AddCard(25880422,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(82828051,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(51482758,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(31036355,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(51632798,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (yours)
local m_4=Debug.AddCard(39168895,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
local m_5=Debug.AddCard(39168895,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
Debug.AddCard(13944422,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (yours)
local eq_0=Debug.AddCard(65169794,0,0,LOCATION_SZONE,4,POS_FACEUP)
local eq_2=Debug.AddCard(65169794,0,0,LOCATION_SZONE,3,POS_FACEUP)
Debug.AddCard(68400115,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(82732705,0,0,LOCATION_SZONE,1,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(21175632,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (opponent's)
local eq_1=Debug.AddCard(45986603,1,1,LOCATION_SZONE,3,POS_FACEUP)
local eq_3=Debug.AddCard(45986603,1,1,LOCATION_SZONE,2,POS_FACEUP)

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
Equip(eq_0,m_4)
Equip(eq_1,m_4)
Equip(eq_2,m_5)
Equip(eq_3,m_5)

Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

-Normal summon Fusilier Dragon, the Dual-Mode Beast from your hand to the field.
-Activate The Emperor's Holiday, then activate Creature Swap.
-Target either Berserk Gorilla to swap for St. Joan.
-Activate Block Attack and target swapped Berserk Gorilla. (3000 / 10000)
-Activate Skill Drain. (2000 / 10000)
-Attack with all remaining monsters. (2000 / 500)
-Switch to Main Phase II.
-Activate Remove Trap and target Skill Drain. (2000 / 500)
-Activate Earthquake for game. (2000 / 0)
]]
