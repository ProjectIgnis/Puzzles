--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 3600
Opponent's Starting LP: 15200
Complexity: 8/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,3600,0,0)
Debug.SetPlayerInfo(1,15200,0,0)
Debug.SetAIName("Professor Sartyr")

--Main Deck (yours)
Debug.AddCard(24094653,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(74848038,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(89631142,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Extra Deck (yours)
Debug.AddCard(23995346,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(70828912,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(69162969,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(504700026,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(89631142,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(95281259,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(55144522,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(90928333,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(34627841,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(17985575,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
Debug.AddCard(67724379,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(89631142,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (yours)
Debug.AddCard(97077563,0,0,LOCATION_SZONE,0,POS_FACEDOWN)
Debug.AddCard(5728014,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(34460239,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(504700166,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(511003023,0,0,LOCATION_SZONE,4,POS_FACEUP)

--Monster Zones (opponent's)
Debug.AddCard(18325492,1,1,LOCATION_MZONE,3,POS_FACEUP_DEFENSE,true)
local m_1=Debug.AddCard(76232340,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(31305911,1,1,LOCATION_MZONE,1,POS_FACEUP_DEFENSE,true)

--Spell & Trap Zones (opponent's)
local eq_0=Debug.AddCard(47529357,1,1,LOCATION_SZONE,2,POS_FACEUP)
Debug.AddCard(504700141,1,1,LOCATION_SZONE,3,POS_FACEUP)

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

-Sacrifice Lord of D. & Koumori Dragon to tribute summon Blue-Eyes White Dragon in attack mode.
-Activate Generation Shift, selecting Blue-Eyes White Dragon.
-Activate Pot of Greed, then activate Monster Reincarnation.
-Discard Premature Burial and select Blue-Eyes White Dragon.
-Activate Polymerization to fusion summon Blue-Eyes Ultimate Dragon.
-Activate Call of the Haunted and select Blue-Eyes White Dragon.
-Activate Dark Factory of Mass Production.
-Select both Blue-Eyes White Dragon, then activate A Rival Appears!.
-Select Sengenjin to summon Blue-Eyes White Dragon in attack mode.
-Activate Lightning Vortex by discarding Burst Stream of Destruction.
-Normal Summon Kaibaman with Ultimate Offering.
-Activate Kaibaman special ability to special summon Blue-Eyes White Dragon from your hand.
-Activate The Warrior Returning Alive and select Kaibaman.
-Normal Summon Kaibaman with Ultimate Offering.
-Activate Aqua Chorus, then Attack with all monsters. (100 / 0)
]]