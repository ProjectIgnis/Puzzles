--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 5700
Opponent's Starting LP: 5600
Complexity: 6+/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,5700,0,0)
Debug.SetPlayerInfo(1,5600,0,0)
Debug.SetAIName("Professor Sartyr")

--Hand (yours)
Debug.AddCard(13215230,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(67371383,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(62180201,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(11901678,0,0,LOCATION_MZONE,0,POS_FACEUP_ATTACK,true)
Debug.AddCard(9076207,0,0,LOCATION_MZONE,1,POS_FACEDOWN_DEFENSE,true)
Debug.AddCard(34460851,0,0,LOCATION_MZONE,2,POS_FACEDOWN_DEFENSE,true)
Debug.AddCard(34460851,0,0,LOCATION_MZONE,3,POS_FACEDOWN_DEFENSE,true)

--Spell & Trap Zones (yours)
Debug.AddCard(83133491,0,0,LOCATION_SZONE,0,POS_FACEDOWN)
Debug.AddCard(35686188,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(511003023,0,0,LOCATION_SZONE,2,POS_FACEUP)
Debug.AddCard(34646691,0,0,LOCATION_SZONE,3,POS_FACEUP)
Debug.AddCard(511000822,0,0,LOCATION_SZONE,4,POS_FACEDOWN)

--Spell & Trap Zones (opponent's)
local eq_0=Debug.AddCard(22046459,1,1,LOCATION_SZONE,2,POS_FACEUP)

--Monster Zones (opponent's)
Debug.AddCard(504700117,1,1,LOCATION_MZONE,4,POS_FACEUP_ATTACK,true)
Debug.AddCard(504700117,1,1,LOCATION_MZONE,0,POS_FACEUP_ATTACK,true)
Debug.AddCard(77585513,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)
Debug.AddCard(62180201,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE,true)
local m_1=Debug.AddCard(62180201,1,1,LOCATION_MZONE,1,POS_FACEUP_DEFENSE,true)

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

-Normal Summon Dream Clown in attack mode to activate Stumbling.
-Destroy Jinzo then switch Black Skull Dragon into Defense Mode.
-Flip Summon Armed Ninja designating Megamorph as the target.
-Activate Ultimate Offering. (5200 / 5600)
-Sacrifice Dream Clown to tribute summon Amphibian Beast in attack mode.
-Activate Zero Gravity, then follow up with Tragedy.
-Activate Ultimate Offering. (4700 / 5600)
-Sacrifice Armed Ninja and both Flame Manipulators to summon Dark Dreadroute.
-Chain Crush Card Virus to Stumbling and tribute Dark Dreadroute.(4700 / 5600)
-Attack with both monsters for game. (4700 / 5600)
]]