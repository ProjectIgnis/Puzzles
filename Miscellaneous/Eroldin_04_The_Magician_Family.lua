--[[message
Magicians have always been accused of being devil worshipers. Show them, this is not the case!

	Creator: Eroldin
	Difficulty: 5/10
	Master Rule: 3
]]


--The Magician Family
Debug.SetAIName('Eroldin: "Prove Your Skill!"')
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,3)
Debug.SetPlayerInfo(0,200,0,0)
Debug.SetPlayerInfo(1,16400,0,0)

--Main Deck (yours)
Debug.AddCard(46986414,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(46986414,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(1784686,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(42006475,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(30208479,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(30208479,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(71490127,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(30603688,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Extra Deck (yours)
Debug.AddCard(10000030,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(96471335,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(43892409,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(75380687,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(41721210,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(30208479,0,0,LOCATION_HAND,0,POS_FACEUP)
Debug.AddCard(30603688,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(38033125,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(7198399,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(78986941,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(60709218,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(25774450,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (yours)
local m_2=Debug.AddCard(46986414,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (yours)
Debug.AddCard(26708437,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(55144522,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(97077563,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(79571449,0,0,LOCATION_SZONE,0,POS_FACEDOWN)
Debug.AddCard(57995165,0,0,LOCATION_SZONE,4,POS_FACEDOWN)

--GY (opponent's)
Debug.AddCard(15259703,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(15259703,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(15259703,1,1,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (opponent's)
Debug.AddCard(4167084,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(66540884,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
Debug.AddCard(66540884,1,1,LOCATION_MZONE,3,POS_FACEUP_DEFENSE,true)
Debug.AddCard(29603180,1,1,LOCATION_MZONE,0,POS_FACEUP_ATTACK,true)
Debug.AddCard(29603180,1,1,LOCATION_MZONE,4,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (opponent's)
Debug.AddCard(94585852,1,1,LOCATION_FZONE,0,POS_FACEUP)
Debug.AddCard(44947065,1,1,LOCATION_SZONE,2,POS_FACEUP)
Debug.AddCard(70342110,1,1,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(70342110,1,1,LOCATION_SZONE,3,POS_FACEDOWN)
local eq_0=Debug.AddCard(83584898,1,1,LOCATION_SZONE,0,POS_FACEUP)
local eq_1=Debug.AddCard(83584898,1,1,LOCATION_SZONE,4,POS_FACEUP)

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
Equip(eq_1,m_2)
aux.BeginPuzzle()


--[[Solution:
1. Activate the set "Extra-Foolish Burial" and send "Dark Magician the Dragon Knight" to the GY.
2. Activate "Mystic Box", destroy "Annihilator Archfiend" and give control of "Dark Magician" to your opponent.
3. Activate the set "Graceful Charity" and discard two copies of "Magician of Black Chaos".
4. Activate the set "Pot of Greed", then discard "Dark Magician Girl" to Special Summon from your Hand "Apprentice Illusion Magician".
5. On Summon, activate "Apprentice" effect to add "Dark Magician" from the Deck to your Hand.
6. Discard "Black Chaos" to Special Summon another "Apprentice" from your Hand. 
7. On Summon, activate "Apprentice" effect to add another "Dark Magician" from the Deck to your Hand.
8. Normal Summon "Chocolate Magician Girl" then activate its effect and discard "Dark Magician".
9. Xyz Summon "Magi Magi ☆ Magician Gal" using the two copies of "Apprentice" as materials.
10. Activate "Magi Magi" effect and banish "Order to Charge" from your Hand to take control of "Archfiend Heiress".
11. Switch "Heiress" to Attack Position, then Xyz Summon "Ebon Illusion Magician" on top of "Magi Magi".
12. Activate "Ebon" effect and detatch "Magi Magi" to Special Summon "Dark Magician" from your Hand.
13. Activate "Bond Between Teacher and Student" from your Hand to Special Summon "Dark Magician Girl" from your GY.
14. Activate "The Eye of Timaeus" from your Hand and target "Magician Girl" to Fusion Summon "Dark Magician Girl the Dragon Knight".
15. Activate "Magician Girl Dragon Knight" effect and discard "Palladium Oracle Mana" to destroy "Burden of the Mighty".
16. Activate "Dragon's Mirror" from your Hand.
17. Fusion Summon "Amulet Dragon" using "Dark Magician" on the Field and the "Dragon Knight" in the GY as materials.
18. Activate "Amulet Dragon" effect and banish all 11 Spell Cards in both player's GY.
19. Enter Battle Phase. Attack "Dark Magician" with "Heiress" and "Chocolate".
20. Chain the "Dimensional Prison" on "Chocolate" with "Palladium" to Special Summon the latter from the GY.
21. Activate "Call of the Haunted" to Special Summon "Apprentice". Attack "Dark Magician" with "Apprentice".
22. Attack "Annihilator" with "Palladium". Activate the latter's effect to Special Summon "Magician Girl" from the GY.
23. Attack "Heiress" with "Magician Girl". Before Damage Calculation, activate "Apprentice" effect.
24. Activate "Xyz Reborn" and Special Summon "Magi Magi" from the GY.
25. Attack "The First Darklord" with "Amulet Dragon". Activate the latter's effect to Special Summon "Dark Magician" from the GY.
26. Attack directly with all for game.
--]]
