--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 3100
Opponent's Starting LP: 15200
Complexity: 3+/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,3100,0,0)
Debug.SetPlayerInfo(1,15200,0,0)
Debug.SetAIName("Professor Sartyr")

--Hand (yours)
Debug.AddCard(504700030,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(14391920,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(504700068,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(66362965,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(58071123,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(504700159,0,0,LOCATION_MZONE,3,POS_FACEDOWN_DEFENSE,true)

--Spell & Trap Zones (yours)
Debug.AddCard(40633297,0,0,LOCATION_SZONE,2,POS_FACEDOWN)


--Main Deck (opponent's)
Debug.AddCard(89631142,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(87796900,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(14181608,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(87564352,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(89631142,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(89631142,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(13069066,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(6285791,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(15025844,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(32274490,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(5053103,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(69669405,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(76184692,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(15025844,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(76184692,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(76184692,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(32452818,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(88819587,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(41392891,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(88819587,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(68846917,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(35762283,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(41392891,1,1,LOCATION_DECK,0,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(31305911,1,1,LOCATION_MZONE,4,POS_FACEDOWN_DEFENSE,true)
local m_1=Debug.AddCard(14181608,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)
Debug.AddCard(31812496,1,1,LOCATION_MZONE,2,POS_FACEDOWN_DEFENSE,true)
Debug.AddCard(27125110,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (opponent's)
Debug.AddCard(68073522,1,1,LOCATION_SZONE,2,POS_FACEUP)
local eq_0=Debug.AddCard(47529357,1,1,LOCATION_SZONE,3,POS_FACEUP)

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

-Activate Bad Reaction to Simochi and flip summon Dark Jeroid.
-Designate Oxygeddon as the target to deduct 800 attack points.
-Tribute summon The Fiend Megacyber from your hand in attack mode.
-Sacrifice Dark Jeroid in order to do so.
-Activate Ring of Magnetism and designate Oxygeddon as the target.
-Activate Axe of Despair and designate The Fiend Megacyber as the target.
-Attack Thousand-Eyes Idol with The Fiend Megacyber. (3100 / 12000)
-Attack Stone Statue of the Aztecs with Oxygeddon. (100 / 12000)
-Activate Inferno Tempest for game. (100 / 0)
]]