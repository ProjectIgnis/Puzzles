--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--Partially rewritten by edo9300
--[[message
~~Baby you're as cold as ice, you're willing to sacrifice our...~~
Oh... Ahum... sorry...
Fire monsters are trying to dry-up your oceans.
Use your icy powers to wipe them out.

	Creator: Eroldin
	Difficulty: 5
	Master Rule: 2
]]
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetAIName("Eroldin: Prove Your Skill!")
Debug.SetPlayerInfo(0,2100,0,0)
Debug.SetPlayerInfo(1,19000,0,0)

--Main Deck (yours)
Debug.AddCard(96947648,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(55144522,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(23842445,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(34016756,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(59546528,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(24661486,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(91468551,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(24661486,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(24661486,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(14462257,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(32750510,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(28348537,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(40916023,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(91133740,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(91133740,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(5758500,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(23557835,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(55144522,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Spell & Trap Zones (yours)
Debug.AddCard(82999629,0,0,LOCATION_FZONE,0,POS_FACEUP)
Debug.AddCard(57953380,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(83764719,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(83778600,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(51790181,0,0,LOCATION_SZONE,0,POS_FACEDOWN)
Debug.AddCard(55144522,0,0,LOCATION_SZONE,4,POS_FACEDOWN)

--Main Deck (opponent's)
Debug.AddCard(48411996,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(48411996,1,1,LOCATION_DECK,0,POS_FACEDOWN)

--GY (opponent's)
Debug.AddCard(48411996,1,1,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (opponent's)
local m_2=Debug.AddCard(17548456,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
local m_0=Debug.AddCard(85028288,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
Debug.AddCard(81843628,1,1,LOCATION_MZONE,3,POS_FACEDOWN_DEFENSE,true)

--Spell & Trap Zones (opponent's)
local eq_0=Debug.AddCard(56747793,1,1,LOCATION_SZONE,2,POS_FACEUP)
Debug.AddCard(12247206,1,1,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(62279055,1,1,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(41356845,1,1,LOCATION_SZONE,4,POS_FACEDOWN)
local eq_1=Debug.AddCard(32268901,1,1,LOCATION_SZONE,0,POS_FACEUP)

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
Equip(eq_1,m_0)
aux.BeginPuzzle()

--[[
1. "Card of Safe Return (CoSR)"
2. "Monster Reborn" --> "Cold". Trigger "CoSR"
3. "Temple"
4. "Foolish" --> "Stauriko". Follow the chain and trigger "CoSR"
5. Special Summon "Aqua Spirit" --> Ice Queen
6. "Pot" x2
7. "Benovolence" --> "Blizzard" and "Master"
8. "Pot"
9. Special Summon 'Master" by tributing you two weaker monsters
10. Activate "Cold" 3x --> "Snowman" and "Dance" --> "Meteor" and 2 "Stauriko"
11. "Salvage"
12. Activate "Master" --> "Stauriko (without a counter)"
13. "Nitro" --> "Titano"
14. "Riryoku" --> "Meteor" --> Any one of your "Cold"
15. Activate "Master"
16. "Soul" --> "Master" and "Dance"
17. "Dimension"
18. "Master" --> Any of YOUR monsters
19. Special Summon "Blizzard" --> "Dance (ONLY!)"
20. Activate "Cold" x2 --> Any of YOUR monsters
---Battle Phase---
21. "Blizzard" --> "Titano"
22. Attack for the win.
]]
