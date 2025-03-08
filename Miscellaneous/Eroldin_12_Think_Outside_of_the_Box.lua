--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--Partially rewritten by edo9300
--[[message
To win this puzzle, you must think outside of the box. Are you capable enough?
	Creator: Eroldin
	Difficulty: 6/10
	Master Rule: 2
]]
Debug.SetAIName("Eroldin: Prove your skill!")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,2100,0,0)
Debug.SetPlayerInfo(1,11700,0,0)

--Main Deck (yours)
Debug.AddCard(7565547,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(38699854,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(22610082,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(55144522,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(21593987,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(7672244,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(13676474,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(31000575,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(37620434,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(55144522,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Extra Deck (yours)
Debug.AddCard(70902743,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(67030233,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(48948935,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(9952083,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(14943837,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(21159309,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(79571449,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(74848038,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(23557835,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Banished (yours)
Debug.AddCard(58242947,0,0,LOCATION_REMOVED,0,POS_FACEUP)

--Spell & Trap Zones (yours)
Debug.AddCard(70391588,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(70391588,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(94634433,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(83778600,0,0,LOCATION_SZONE,0,POS_FACEDOWN)
Debug.AddCard(83675475,0,0,LOCATION_SZONE,4,POS_FACEDOWN)

--Extra Deck (opponent's)
Debug.AddCard(70902743,1,1,LOCATION_EXTRA,0,POS_FACEDOWN)

--Hand (opponent's)
Debug.AddCard(4068622,1,1,LOCATION_HAND,0,POS_FACEDOWN)

--GY (opponent's)
Debug.AddCard(44508095,1,1,LOCATION_GRAVE,0,POS_FACEUP,true)
Debug.AddCard(4896788,1,1,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (opponent's)
Debug.AddCard(86327225,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
local m_2=Debug.AddCard(7802006,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
local m_3=Debug.AddCard(55277252,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (opponent's)
Debug.AddCard(52503575,1,1,LOCATION_SZONE,2,POS_FACEUP)
Debug.AddCard(94634433,1,1,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(22628574,1,1,LOCATION_SZONE,3,POS_FACEDOWN)
local eq_1=Debug.AddCard(83746708,1,1,LOCATION_SZONE,0,POS_FACEUP)
local eq_0=Debug.AddCard(83746708,1,1,LOCATION_SZONE,4,POS_FACEUP)
Debug.AddCard(68462976,1,1,LOCATION_FZONE,0,POS_FACEUP)

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

--[[
1. "Foolish Revival" --> "Stardust"
2. "Activate both "Star Siphon"
3. "Token Feastevil" and chain "Chain Summoning"
4. "Dimmension Fusion"
5. "Junk Collector" --> "Foolish Revival" --> "Spirit of the Pot (S.P)"
6. "Gracefull" --> "Majestic" and "Conscription"
7. "Set Shadow Tamer"
8. "Pot" Draw 1 extra
9. "Monster Reincarnation" --> "Makyura" --> "Majestic"
10. Summon "Majestic"
11. "Pot" Draw 1 extra
12. "Book of Taiyou"
13. "Shadow Tamer" --> "Grand Elder" and chain "Collected Power" --> "Shadow Tamer"
14. "Mask of Remnants"
15. "Masked Beast" --> "Grand Edler" and "Siphon LV8"
16. "Debris Dragon"
17. Shien's Spy --> "Debris Dragon"
--Battle Phase--
18. "Masked Beast" --> "Shinato" --> "Red Dragon"
19. "Red Dragon" --> "S.P"
20. "Urgent Tuning"
21. Attack for the win
]]
