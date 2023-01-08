--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 100
Opponent's Starting LP: 2500
Complexity: 3/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,100,0,0)
Debug.SetPlayerInfo(1,2500,0,0)
Debug.SetAIName("Professor Sartyr")

--Main Deck (yours)
Debug.AddCard(63695531,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(22609617,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(41230939,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(504700142,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(48305365,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(97687912,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(511000868,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Spell & Trap Zones (yours)
Debug.AddCard(38699854,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(14087893,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(504700114,0,0,LOCATION_SZONE,3,POS_FACEDOWN)

--Monster Zones (opponent's)
local m_1=Debug.AddCard(20277860,1,1,LOCATION_MZONE,3,POS_FACEUP_DEFENSE,true)
Debug.AddCard(99785935,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (opponent's)
local eq_0=Debug.AddCard(47529357,1,1,LOCATION_SZONE,3,POS_FACEUP)
Debug.AddCard(504700052,1,1,LOCATION_SZONE,2,POS_FACEDOWN)

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

-Normal Summon Mystic Tomato.
-Activate Book of Moon, selecting Armored Zombie.
-Activate Book of Taiyou, selecting Armored Zombie.
-Enter the Battle Phase.
-Attack Alpha The Magnet Warrior with Mystic Tomato. Both are destroyed.
Use the effect of Mystic Tomato to Special Summon Mataza the Zapper.
-Activate Rush Recklessly, selecting Mataza the Zapper.
-Attack Armored Zombie with Mataza the Zapper.
-Attack directly with Mataza the Zapper.
]]