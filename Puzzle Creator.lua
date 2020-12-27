--Project Ignis puzzle creator
--SPDX-License-Identifier: AGPL-3.0-or-later
--by edo9300, senpaizuri, Naim, Larry126

Debug.SetAIName("[AI]Ignis")
Debug.ReloadFieldBegin(0,5)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

Debug.ReloadFieldEnd()

--[[message
This is a Puzzle that generates other puzzles. When played, it prompts you to add cards - to locations you choose - until you select No, when the puzzle is saved.
]]

local io=require("io")
local os=require("os")

local MoveMzone = {
function(c,p)
	return c:IsType(TYPE_MONSTER) and (Duel.GetLocationCount(p,LOCATION_MZONE)>0
			or (c:IsType(TYPE_EXTRA|TYPE_PENDULUM) and (Duel.CheckLocation(p,LOCATION_MZONE,5) or Duel.CheckLocation(p,LOCATION_MZONE,6))))
end,
function(c,p)
	local zone=c:IsType(TYPE_EXTRA|TYPE_PENDULUM) and 0x7f or 0xff
	Duel.MoveToField(c,0,p,LOCATION_MZONE,POS_FACEUP|POS_FACEDOWN,true,zone)
	c:CompleteProcedure()
	if c:IsType(TYPE_XYZ) then
		local ccount=0
		while ccount<5 and Duel.SelectYesNo(0,2214) do
			local ac=Duel.AnnounceCard(0)
			local mat=Duel.CreateToken(p,ac)
			Duel.Remove(mat,POS_FACEUP,REASON_RULE)
			Duel.Overlay(c,mat)
			ccount=ccount+1
		end
	end
	if c:IsType(TYPE_GEMINI) and c:IsFaceup() and Duel.SelectYesNo(0,2213) then
		c:EnableGeminiState()
	end	
end,
2201
}

local MovePzone = {
function(c,p)
	return c:IsType(TYPE_PENDULUM) and (Duel.CheckLocation(p,LOCATION_PZONE,0) or Duel.CheckLocation(p,LOCATION_PZONE,1))
end,
function(c,p)
	Duel.MoveToField(c,0,p,LOCATION_PZONE,POS_FACEUP,false)
end,
2203
}

local MoveHand = {
function(c,p)
	return not (c:IsType(TYPE_EXTRA) and c:IsType(TYPE_MONSTER))
end,
function(c,p)
	Duel.SendtoHand(c,p,REASON_RULE)
end,
2206
}

local MoveDeck = {
function(c,p)
	return not (c:IsType(TYPE_EXTRA) and c:IsType(TYPE_MONSTER))
end,
function(c,p)
	local pos=Duel.SelectPosition(0,c,POS_ATTACK)
	Duel.SendtoDeck(c,p,0,REASON_RULE)
	if (pos&POS_FACEUP~=0) then
		Duel.EnableGlobalFlag(GLOBALFLAG_DECK_REVERSE_CHECK)
		c:ReverseInDeck()
	end
end,
2207
}

local MoveExtra = {
function(c,p)
	return (c:IsType(TYPE_EXTRA) and c:IsType(TYPE_MONSTER)) or c:IsType(TYPE_PENDULUM)
end,
function(c,p)
	local pos=POS_FACEDOWN
	if c:IsType(TYPE_PENDULUM) and c:IsType(TYPE_EXTRA) then
		pos=Duel.SelectPosition(0,c,POS_ATTACK)
	elseif c:IsType(TYPE_PENDULUM) then
		pos=POS_FACEUP
	end
	if (pos&POS_FACEUP~=0) then Duel.SendtoExtraP(c,p,REASON_RULE) else Duel.SendtoHand(c,p,REASON_RULE) end
end,
2208
}

local MoveGrave = {
function(c,p)
	return true
end,
function(c,p)
	Duel.SendtoGrave(c,REASON_RULE,p)
end,
2205
}

local MoveBanished = {
function(c,p)
	return true
end,
function(c,p)
	Duel.Remove(c,Duel.SelectPosition(0,c,POS_ATTACK),REASON_RULE,p)
end,
2209
}

local function EquipCheck(c,ec)
	return c:IsFaceup() and ec:CheckEquipTarget(c)
end
local function UnionCheck(c,ec)
	return c:IsFaceup() and ec:CheckUnionTarget(c)
end
local MoveSzone = {
function(c,p)
	return c:IsType(TYPE_FIELD) or (Duel.GetLocationCount(p,LOCATION_SZONE)>0 and (c:IsType(TYPE_SPELL|TYPE_TRAP) or
			(c:IsType(TYPE_UNION) and Duel.IsExistingMatchingCard(UnionCheck,0,LOCATION_MZONE,LOCATION_MZONE,1,nil,c))))
end,
function(c,p)
	if c:IsType(TYPE_UNION) then
		Duel.Hint(HINT_SELECTMSG,0,HINTMSG_FACEUP)
		Duel.MoveToField(c,0,p,LOCATION_SZONE,POS_FACEUP,true)
		local tc=Duel.SelectMatchingCard(0,UnionCheck,0,LOCATION_MZONE,LOCATION_MZONE,1,1,nil,c):GetFirst()
		if Duel.Equip(p,c,tc) then
			aux.SetUnionState(c)
		end
	else
		if c:IsType(TYPE_FIELD) or c:IsType(TYPE_CONTINUOUS) then
			local loc=LOCATION_SZONE
			if c:IsType(TYPE_FIELD) then loc=LOCATION_FZONE end
			Duel.MoveToField(c,0,p,loc,Duel.SelectPosition(0,c,POS_ATTACK),true)
		elseif c:IsType(TYPE_EQUIP) and Duel.GetFieldGroup(0,LOCATION_MZONE,LOCATION_MZONE):IsExists(Card.CheckUniqueOnField,1,nil,p) then
			if Duel.IsExistingTarget(EquipCheck,0,LOCATION_MZONE,LOCATION_MZONE,1,nil,c) and Duel.SelectYesNo(0,2216) then
				Duel.MoveToField(c,0,p,LOCATION_SZONE,POS_FACEUP,true)
				local eq=Duel.SelectMatchingCard(0,EquipCheck,0,LOCATION_MZONE,LOCATION_MZONE,1,1,nil,c):GetFirst()
				Duel.Equip(p,c,eq)
			else
				Duel.MoveToField(c,0,p,LOCATION_SZONE,POS_FACEDOWN,true)
			end
		else
			Duel.MoveToField(c,0,p,LOCATION_SZONE,POS_FACEDOWN,true)
		end
	end
end,
2202
}

local function CheckOperation(op,c,p,ops,opts)
	if op[1](c,p) then
		table.insert(ops,op[2])
		table.insert(opts,op[3])
	end
end

local e1=Effect.GlobalEffect()
e1:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
e1:SetCode(EVENT_STARTUP)
e1:SetCountLimit(1)
e1:SetProperty(EFFECT_FLAG_NO_TURN_RESET)
e1:SetOperation(function(e,tp,eg,ep,ev,re,r,rp)
	while Duel.SelectYesNo(tp,2200) do
		local ac=Duel.AnnounceCard(tp,{OPCODE_ALLOW_ALIASES})
		if Duel.SelectYesNo(tp,2210) then p=tp else p=1-tp end
		local c=Duel.CreateToken(p,ac)
		local ops={}
		local opts={}
		CheckOperation(MovePzone,c,p,ops,opts)
		CheckOperation(MoveSzone,c,p,ops,opts)
		CheckOperation(MoveMzone,c,p,ops,opts)
		CheckOperation(MoveGrave,c,p,ops,opts)
		CheckOperation(MoveHand,c,p,ops,opts)
		CheckOperation(MoveDeck,c,p,ops,opts)
		CheckOperation(MoveExtra,c,p,ops,opts)
		CheckOperation(MoveBanished,c,p,ops,opts)
		ops[Duel.SelectOption(tp,false,table.unpack(opts))+1](c,p)
		Duel.AdjustInstantly()
	end
	if Duel.GetFieldGroupCount(tp,0xff,0xff)==0 then
		Debug.ShowHint("No card has been added, the puzzle won't be saved.\nRestart to create a new puzzle.")
		Duel.Win(PLAYER_NONE,0,0)
		return
	end
	local tme=os.date("%Y",os.time()).."-"..os.date("%m",os.time()).."-"..os.date("%d",os.time()).." "..os.date("%H",os.time()).."-"..os.date("%M",os.time()).."-"..os.date("%S",os.time())
	local f=io.open("./puzzles/Generated Puzzle "..tme..".lua","w+")
	local slp=Duel.GetLP(tp)
	local olp=Duel.GetLP(1-tp)
	f:write("--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)\n--Partially rewritten by edo9300")
	f:write("\nDebug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)")
	f:write("\nDebug.SetPlayerInfo(0,"..slp..",0,0)")
	f:write("\nDebug.SetPlayerInfo(1,"..olp..",0,0)")
	CheckEquips()
	for p=0,1 do
		WriteLocation(f,LOCATION_DECK,p)
		WriteLocation(f,LOCATION_EXTRA,p)
		WriteLocation(f,LOCATION_HAND,p)
		WriteLocation(f,LOCATION_GRAVE,p)
		WriteLocation(f,LOCATION_REMOVED,p)
		WriteLocation(f,LOCATION_MZONE,p)
		WriteLocation(f,LOCATION_SZONE,p)
	end
	
	f:write("\n\nDebug.ReloadFieldEnd()")
	
	if preequips then
		f:write("\n\n--Equipped Cards"..preequips)
	end
	
	if unions then
		f:write("\n\n--Equipped Unions"..unions)
	end
	
	if gemini then
		f:write("\n\n--Summoned Geminis"..gemini)
	end
	
	if deckfaceup then
		f:write("\n\n--Faceup cards in the Deck\nDuel.EnableGlobalFlag(GLOBALFLAG_DECK_REVERSE_CHECK)"..deckfaceup)
	end
	
	f:write("\naux.BeginPuzzle()")
	
	f:close()

	Debug.ShowHint("The puzzle has been sucessfully exported as 'Generated Puzzle "..tme..".lua'.\nRestart to create a new puzzle.")
	Duel.Win(PLAYER_NONE,0,0)
end)
Duel.RegisterEffect(e1,0)

local function maplocation(loc)
	if loc==LOCATION_DECK then return "LOCATION_DECK" end
	if loc==LOCATION_HAND then return "LOCATION_HAND" end
	if loc==LOCATION_MZONE then return "LOCATION_MZONE" end
	if loc==LOCATION_SZONE then return "LOCATION_SZONE" end
	if loc==LOCATION_GRAVE then return "LOCATION_GRAVE" end
	if loc==LOCATION_REMOVED then return "LOCATION_REMOVED" end
	if loc==LOCATION_EXTRA then return "LOCATION_EXTRA" end
	if loc==LOCATION_FZONE then return "LOCATION_FZONE" end
	if loc==LOCATION_PZONE then return "LOCATION_PZONE" end
	Debug.Message("unandled location: "..loc)
	return loc
end
local function mapposition(pos)
	if pos==POS_FACEUP then return "POS_FACEUP" end
	if pos==POS_FACEUP_ATTACK then return "POS_FACEUP_ATTACK" end
	if pos==POS_FACEUP_DEFENSE then return "POS_FACEUP_DEFENSE" end
	if pos==POS_FACEDOWN then return "POS_FACEDOWN" end
	if pos==POS_FACEDOWN_ATTACK then return "POS_FACEDOWN_ATTACK" end
	if pos==POS_FACEDOWN_DEFENSE then return "POS_FACEDOWN_DEFENSE" end
	if pos==POS_ATTACK then return "POS_ATTACK" end
	if pos==POS_DEFENSE then return "POS_DEFENSE" end
	Debug.Message("unandled position: "..pos)
	return pos
end

local function WriteCard(file,card,identifier)
	identifier=identifier and ("local "..identifier.."=") or ""
	local location=card:GetLocation()
	local sequence=card:GetSequence()
	local controller=card:GetControler()
	local otg=card:GetOverlayTarget()
	local position=card:GetPosition()
	local proc=""
	if otg then
		location=otg:GetLocation()
		sequence=otg:GetSequence()
		controller=otg:GetControler()
	end
	if location~=LOCATION_MZONE then
		if (position&POS_FACEUP)~=0 then position=POS_FACEUP
		else position=POS_FACEDOWN end
	end
	if card:IsLocation(LOCATION_PZONE) then
		location=LOCATION_PZONE
		if sequence==4 then sequence=1 end
	elseif card:IsLocation(LOCATION_FZONE) then
		location=LOCATION_FZONE
		sequence=0
	elseif card:IsLocation(LOCATION_MZONE) then
		proc=",true"
	elseif not otg and not card:IsLocation(LOCATION_ONFIELD) then
		sequence=0
	end
	file:write("\n"..identifier.."Debug.AddCard("..card:GetCode()..","..controller..","..card:GetOwner()..","..maplocation(location)..","..sequence..","..mapposition(position)..proc..")")
end

local function maphint(loc)
	if loc==LOCATION_DECK then return "Main Deck" end
	if loc==LOCATION_HAND then return "Hand" end
	if loc==LOCATION_MZONE then return "Monster Zones" end
	if loc==LOCATION_SZONE then return "Spell & Trap Zones" end
	if loc==LOCATION_GRAVE then return "GY" end
	if loc==LOCATION_REMOVED then return "Banished" end
	if loc==LOCATION_EXTRA then return "Extra Deck" end
	Debug.Message("unandled location hint: "..loc)
	return ""
end

uniquecount=0
equipscheck={}
function CheckEquips()
	for tc in aux.Next(Duel.GetFieldGroup(0,LOCATION_MZONE,LOCATION_MZONE)) do
		for eq in aux.Next(tc:GetEquipGroup()) do
			local uniqeqip=equipscheck[eq]
			if not uniqeqip then
				uniqeqip="eq_"..uniquecount
				uniquecount=uniquecount+1
				equipscheck[eq]=uniqeqip
			end
		end
	end
end
function WriteLocation(file,loc,player)
	local g=Duel.GetFieldGroup(player,loc,0)
	if #g>0 then
		file:write("\n\n--"..maphint(loc))
		if player==0 then
			file:write(" (yours)")
		else
			file:write(" (opponent's)")
		end
		for tc in aux.Next(g) do
			local uniq=nil
			local eqg=tc:GetEquipGroup()
			if #eqg>0 then
				uniq="m_"..uniquecount
				uniquecount=uniquecount+1
				for eq in aux.Next(eqg) do
					local uniqeqip=equipscheck[eq]
					preequips=preequips and (preequips.."\nDebug.PreEquip("..uniqeqip..","..uniq..")") or ("\nDebug.PreEquip("..uniqeqip..","..uniq..")")
					if eq:IsHasEffect(EFFECT_UNION_STATUS) then
						unions=unions and (unions.."\naux.SetUnionState("..uniqeqip..")") or ("\naux.SetUnionState("..uniqeqip..")")
					end
				end
			end
			if tc:IsGeminiState() then
				if not uniq then
					uniq="m_"..uniquecount
					uniquecount=uniquecount+1
				end
				gemini=gemini and (gemini.."\n"..uniq..":EnableGeminiState()") or ("\n"..uniq..":EnableGeminiState()")
			end
			if tc:IsLocation(LOCATION_DECK) and tc:IsFaceup() then
				if not uniq then
					uniq="m_"..uniquecount
					uniquecount=uniquecount+1
				end
				deckfaceup=deckfaceup and (deckfaceup.."\n"..uniq..":ReverseInDeck()") or ("\n"..uniq..":ReverseInDeck()")
			end
			WriteCard(file,tc,uniq or equipscheck[tc])
			for _tc in aux.Next(tc:GetOverlayGroup()) do
				WriteCard(file,_tc)
			end
		end
	end
end
