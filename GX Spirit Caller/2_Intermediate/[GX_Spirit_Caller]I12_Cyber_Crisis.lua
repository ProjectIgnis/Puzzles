--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 100
Opponent's Starting LP: 6500
Complexity: 5/10

Objective: Win this Turn
]]
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,100,0,0)
Debug.SetPlayerInfo(1,6500,0,0)
Debug.SetAIName("Professor Sartyr")

--Main Deck (yours)
Debug.AddCard(3019642,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Extra Deck (yours)
Debug.AddCard(40418351,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(74848038,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(70278545,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(79759861,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(41230939,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(67371383,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(17658803,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(504700068,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (yours)
local m_1=Debug.AddCard(89631142,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)
Debug.AddCard(77625948,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (yours)
Debug.AddCard(3659803,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(511002997,0,0,LOCATION_SZONE,1,POS_FACEDOWN)

--Spell & Trap Zones (opponent's)
local eq_0=Debug.AddCard(45986603,1,1,LOCATION_SZONE,2,POS_FACEUP)

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

-Sacrifice Cyberdark Edge to summon Amphibian Beast.
-Activate Monster Reincarnation. Discard Luster Dragon 2 to add Cyberdark Edge to your hand.
-Activate Tribute to the Doomed. Discard Axe of Despair to destroy Blue-Eyes White Dragon.
-Activate Pot of Generosity, selecting Cyberdark Horn and Cyberdark Edge.
-Activate Future Fusion, selecting Cyberdark Horn, Cyberdark Edge and Cyberdark Keel.
-Activate Overload Fusion. Remove Cyberdark Horn, Cyberdark Edge and Cyberdark Keel from play to summon Cyberdark Dragon.
-Activate Cyberdark Dragon's effect, equipping it with Blue-Eyes White Dragon.
-Enter the Battle Phase.
-Attack directly with Amphibian Beast and Cyberdark Dragon.
]]