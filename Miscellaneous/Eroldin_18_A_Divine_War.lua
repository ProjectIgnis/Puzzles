--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--Partially rewritten by edo9300
--[[message
The High Priest of Osiris (Slifer) has declared war on you!
Show them why Ra is the ruling god of Egypt!

	Creator: Eroldin
	Difficulty: 5/10
	Master Rule: 2
]]
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,2)
Debug.SetAIName("Eroldin: Prove Your Skill!")
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

--Main Deck (yours)
Debug.AddCard(23557835,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(5758500,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10012614,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(4162088,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(70828912,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10000012,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Extra Deck (yours)
Debug.AddCard(66235877,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(12247206,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(94940436,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(69015963,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(82888408,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(66607691,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(82432018,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(55144522,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(70368879,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(86805855,0,0,LOCATION_GRAVE,0,POS_FACEUP,true)
Debug.AddCard(26439287,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (yours)
Debug.AddCard(70095155,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (yours)
Debug.AddCard(81332143,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(76137276,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(40633297,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(66719324,0,0,LOCATION_SZONE,0,POS_FACEDOWN)
Debug.AddCard(74923978,0,0,LOCATION_SZONE,4,POS_FACEUP)

--Hand (opponent's)
Debug.AddCard(88819587,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(57793869,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(6007213,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(32012841,1,1,LOCATION_HAND,0,POS_FACEDOWN)

--GY (opponent's)
Debug.AddCard(89631141,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(89631141,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(89631141,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(23995347,1,1,LOCATION_GRAVE,0,POS_FACEUP,true)
Debug.AddCard(88819587,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(88819587,1,1,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (opponent's)
local m_1=Debug.AddCard(110000012,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(32012841,1,1,LOCATION_MZONE,1,POS_FACEUP_DEFENSE,true)
Debug.AddCard(53347303,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)
Debug.AddCard(4896788,1,1,LOCATION_MZONE,4,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (opponent's)
Debug.AddCard(62279055,1,1,LOCATION_SZONE,2,POS_FACEDOWN)
local eq_0=Debug.AddCard(6178850,1,1,LOCATION_SZONE,3,POS_FACEUP)
Debug.AddCard(56433456,1,1,LOCATION_FZONE,0,POS_FACEUP)

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
Debug.ShowHint("This Slifer is from the Console games, NOT the OCG/TCG! Their effects differ.")
aux.BeginPuzzle()
--[[
1. "Rain of Mercy"
2. "Magnet Circle"
3. Activate "Stein"
4. "Upstart Goblin". CHAIN "Reclamation" --> "The Fabled"
5. "Bad Reaction"
6. Summon "Ra" --> "Fabled", "Stein" and "Cyber Dragon". Actvate it's summon effect.
7. "Yu-Jo"
8. "Upstart"
9. Premature --> Proto-Cyber. Activate "Reckless" as reaction.
10. "Photon"
11. "Mask" --> "Fiend"
12. "Pot". Draw 3
13. "Banner"
14. "Soul" --> All 4 "Blue-Eyes" and "Dark Blade the Dragon Knight (DBDK)"
15. "Dimension"
16. "Banner"
17. Actvate "Rah" x2 --> "Millenium" and "Spirit"
18. Activate "Cyber" --> "Millenium"
---Battle Phase--
19. "Fiend" --> "Slifer"
20. "(DBDK)" --> "Slifer" Activate effect --> "Baby" x3 
21. "Ra" --> "Blue-Eyes"
22. Attack with "Cyber" for the win!
]]
