Debug.SetAIName("[AI]Ignis")
Debug.ReloadFieldBegin(0,5)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

Debug.ReloadFieldEnd()

--[[message
	This is a Puzzle that generates other puzzles. When played, it prompts you to add cards - to locations you choose - until you select No, when the puzzle is saved.
	Known Issues:
	-You cannot add cards to your OPPONENT's Extra Monster Zone: prefer to add them to another zone, then edit the puzzle and change their sequences.
]]

local io=require("io")
local os=require("os")

function MoveToEmzone(c,tp)
	local p=c:GetControler()
	local tp=0
	--workaround for opponent's extra monster zone
	local zone=0x7f
	if p~=tp then
		Duel.Hint(HINT_SELECTMSG,tp,HINTMSG_TOZONE)
		zone=Duel.SelectDisableField(tp,1,LOCATION_MZONE,LOCATION_MZONE,~0x1f0060,true)
		if zone&0x1f0000~=0 then
			zone=zone>>16
		elseif zone==64 then
			zone=32
		elseif zone==32 then
			zone=64
		end
		--Move to mmzone then to emzone
		if zone&0x60~=0 then
			if Duel.GetLocationCount(p,LOCATION_MZONE)>0 then
				Duel.MoveToField(c,tp,p,LOCATION_MZONE,POS_FACEUP|POS_FACEDOWN,true)
				Duel.MoveSequence(c,math.log(zone,2))
			else
				--Move random monster to emzone, then swap them
				local tc=Duel.GetFieldGroup(p,LOCATION_MZONE,0):Filter(Card.IsInMainMZone,nil):GetFirst()
				Duel.MoveSequence(tc,math.log(zone,2))
				Duel.MoveToField(c,tp,p,LOCATION_MZONE,POS_FACEUP|POS_FACEDOWN,true)
				Duel.AdjustInstantly()
				Duel.SwapSequence(c,tc)
			end
		else
			Duel.MoveToField(c,tp,p,LOCATION_MZONE,POS_FACEUP|POS_FACEDOWN,true,zone)
		end
	else
		Duel.MoveToField(c,tp,p,LOCATION_MZONE,POS_FACEUP|POS_FACEDOWN,true,zone)
	end
end

local e1=Effect.GlobalEffect()
e1:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
e1:SetCode(EVENT_STARTUP)
e1:SetCountLimit(1)
e1:SetProperty(EFFECT_FLAG_NO_TURN_RESET)
e1:SetOperation(function(e,tp,eg,ep,ev,re,r,rp)
	local mzone=2201
	local szone=2202
	local pzone=2203
	local fzone=2204
	local grave=2205
	local hand=2206
	local deck=2207
	local extra=2208
	local ban=2209
	-- local fu=2211
	-- local fd=2212
	local equip=2216
	local attch=2214
	while Duel.SelectYesNo(tp,2200) do
		local ac=Duel.AnnounceCard(tp)
		if Duel.SelectYesNo(tp,2210) then p=tp else p=1-tp end
		local c=Duel.CreateToken(p,ac)
		if c:IsType(TYPE_MONSTER) then
			if c:IsType(TYPE_PENDULUM) then
				if c:IsType(TYPE_FUSION) or c:IsType(TYPE_SYNCHRO) or c:IsType(TYPE_XYZ) then
					e:SetLabel(Duel.SelectOption(tp,false,pzone,mzone,grave,extra,ban))
					if e:GetLabel()==1 then
						MoveToEmzone(c,p)
						c:CompleteProcedure()
						if c:IsType(TYPE_XYZ) then
							local ccount=0
							while ccount<5 and Duel.SelectYesNo(tp,attch) do
								local ac=Duel.AnnounceCard(tp)
								local mat=Duel.CreateToken(p,ac)
								Duel.Remove(mat,POS_FACEUP,REASON_RULE)
								Duel.Overlay(c,mat)
								ccount=ccount+1
							end
						end
					elseif e:GetLabel()==0 then
						Duel.MoveToField(c,tp,p,LOCATION_PZONE,POS_FACEUP,false)
					elseif e:GetLabel()==2 then
						Duel.SendtoGrave(c,REASON_RULE,p)
					elseif e:GetLabel()==3 then
						local pos=Duel.SelectPosition(tp,c,POS_ATTACK)
						if (pos&POS_FACEUP~=0) then Duel.SendtoExtraP(c,p,REASON_RULE) else Duel.SendtoHand(c,p,REASON_RULE) end
					elseif e:GetLabel()==4 then
						Duel.Remove(c,Duel.SelectPosition(tp,c,POS_ATTACK),REASON_RULE,p)
					end
				else
					e:SetLabel(Duel.SelectOption(tp,false,pzone,mzone,grave,hand,deck,extra,ban))
					if e:GetLabel()==1 then
						MoveToEmzone(c,p)
						c:CompleteProcedure()
					elseif e:GetLabel()==0 then
					Duel.MoveToField(c,tp,p,LOCATION_PZONE,POS_FACEUP,false)
					elseif e:GetLabel()==2 then
						Duel.SendtoGrave(c,REASON_RULE,p)
					elseif e:GetLabel()==3 then
						Duel.SendtoHand(c,p,REASON_RULE)
					elseif e:GetLabel()==4 then
						Duel.SendtoDeck(c,p,0,REASON_RULE)
					elseif e:GetLabel()==5 then
						Duel.SendtoExtraP(c,p,REASON_RULE)
					elseif e:GetLabel()==6 then
						Duel.Remove(c,Duel.SelectPosition(tp,c,POS_ATTACK),REASON_RULE,p)
					end
				end
			elseif c:IsType(TYPE_EXTRA) then
				if Duel.GetLocationCount(p,LOCATION_MZONE)>0
					or Duel.CheckLocation(p,LOCATION_MZONE,5) or Duel.CheckLocation(p,LOCATION_MZONE,6) then
					e:SetLabel(Duel.SelectOption(tp,false,mzone,grave,extra,ban))
				else
					e:SetLabel(Duel.SelectOption(tp,false,grave,extra,ban)+1)
				end
				if e:GetLabel()==0 then
					MoveToEmzone(c,p)
					c:CompleteProcedure()
					if c:IsType(TYPE_XYZ) then
						local ccount=0
						while ccount<5 and Duel.SelectYesNo(tp,attch) do
							local ac=Duel.AnnounceCard(tp)
							local mat=Duel.CreateToken(p,ac)
							Duel.Remove(mat,POS_FACEUP,REASON_RULE)
							Duel.Overlay(c,mat)
							ccount=ccount+1
						end
					end
				elseif e:GetLabel()==1 then
					Duel.SendtoGrave(c,REASON_RULE,p)
				elseif e:GetLabel()==2 then
					Duel.SendtoHand(c,p,REASON_RULE)
				elseif e:GetLabel()==3 then
					Duel.Remove(c,Duel.SelectPosition(tp,c,POS_ATTACK),REASON_RULE,p)
				end
			elseif c:IsType(TYPE_UNION) then
				if Duel.GetLocationCount(p,LOCATION_MZONE)>0 and Duel.GetLocationCount(p,LOCATION_SZONE)>0 and Duel.IsExistingMatchingCard(unchk,tp,LOCATION_MZONE,LOCATION_MZONE,1,nil,c) then
					e:SetLabel(Duel.SelectOption(tp,false,equip,mzone,grave,hand,deck,ban))
				elseif Duel.GetLocationCount(p,LOCATION_MZONE)>0 then
					e:SetLabel(Duel.SelectOption(tp,false,mzone,grave,hand,deck,ban)+1)
				elseif Duel.GetLocationCount(p,LOCATION_SZONE)>0 and Duel.IsExistingMatchingCard(unchk,tp,LOCATION_MZONE,LOCATION_MZONE,1,nil,c) then
					local i=Duel.SelectOption(tp,false,equip,grave,hand,deck,ban)
					if i>=1 then i=i+1 end
					e:SetLabel(i)
				else
					e:SetLabel(Duel.SelectOption(tp,false,grave,hand,deck,ban)+2)
				end
				if e:GetLabel()==0 then
					Duel.Hint(HINT_SELECTMSG,tp,HINTMSG_FACEUP)
					local g=Duel.SelectMatchingCard(tp,unchk,tp,LOCATION_MZONE,LOCATION_MZONE,1,1,nil,c)
					local tc=g:GetFirst()
					if tc and aux.CheckUnionEquip(c,tc) and Duel.Equip(tp,c,tc) then
						aux.SetUnionState(c)
					end
				elseif e:GetLabel()==1 then
					Duel.MoveToField(c,tp,p,LOCATION_MZONE,POS_FACEUP|POS_FACEDOWN,true)
					c:CompleteProcedure()
				elseif e:GetLabel()==2 then
					Duel.SendtoGrave(c,REASON_RULE,p)
				elseif e:GetLabel()==3 then
					Duel.SendtoHand(c,p,REASON_RULE)
				elseif e:GetLabel()==4 then
					Duel.SendtoDeck(c,p,0,REASON_RULE)
				elseif e:GetLabel()==5 then
					Duel.Remove(c,Duel.SelectPosition(tp,c,POS_ATTACK),REASON_RULE,p)
				end
			else
				if Duel.GetLocationCount(p,LOCATION_MZONE)>0 then
					e:SetLabel(Duel.SelectOption(tp,false,mzone,grave,hand,deck,ban))
				else
					e:SetLabel(Duel.SelectOption(tp,false,grave,hand,deck,ban)+1)
				end
				if e:GetLabel()==0 then
					Duel.MoveToField(c,tp,p,LOCATION_MZONE,POS_FACEUP|POS_FACEDOWN,true)
					c:CompleteProcedure()
					if c:IsType(TYPE_GEMINI) and Duel.SelectYesNo(tp,2213) then
						c:EnableGeminiState()
					end
				elseif e:GetLabel()==1 then
					Duel.SendtoGrave(c,REASON_RULE,p)
				elseif e:GetLabel()==2 then
					Duel.SendtoHand(c,p,REASON_RULE)
				elseif e:GetLabel()==3 then
					Duel.SendtoDeck(c,p,0,REASON_RULE)
				elseif e:GetLabel()==4 then
					Duel.Remove(c,Duel.SelectPosition(tp,c,POS_ATTACK),REASON_RULE,p)
				end
			end
		elseif c:IsType(TYPE_SPELL) then
			if Duel.GetLocationCount(p,LOCATION_SZONE)>0 then
				e:SetLabel(Duel.SelectOption(tp,false,szone,grave,hand,deck,ban))
			else
				e:SetLabel(Duel.SelectOption(tp,false,grave,hand,deck,ban)+1)
			end
			if e:GetLabel()==0 then
				if c:IsType(TYPE_FIELD) or c:IsType(TYPE_CONTINUOUS) then
					local loc=LOCATION_SZONE
					if c:IsType(TYPE_FIELD) then loc=LOCATION_FZONE end
					Duel.MoveToField(c,tp,p,loc,Duel.SelectPosition(tp,c,POS_ATTACK),true)
				elseif c:IsType(TYPE_EQUIP) and Duel.GetFieldGroup(tp,LOCATION_MZONE,LOCATION_MZONE):IsExists(f,1,nil,p,c) then
					if Duel.IsExistingTarget(f2,0,LOCATION_MZONE,LOCATION_MZONE,1,nil,c) and Duel.SelectYesNo(tp,equip) then
						Duel.MoveToField(c,tp,p,LOCATION_SZONE,POS_FACEUP,true)
						local eq=Duel.SelectMatchingCard(tp,f2,tp,LOCATION_MZONE,LOCATION_MZONE,1,1,nil,c):GetFirst()
						Duel.Equip(tp,c,eq)
					else
						Duel.MoveToField(c,tp,p,LOCATION_SZONE,POS_FACEDOWN,true)
					end
				else
					Duel.MoveToField(c,tp,p,LOCATION_SZONE,POS_FACEDOWN,true)
				end
			elseif e:GetLabel()==1 then
				Duel.SendtoGrave(c,REASON_RULE,p)
			elseif e:GetLabel()==2 then
				Duel.SendtoHand(c,p,REASON_RULE)
			elseif e:GetLabel()==3 then
				Duel.SendtoDeck(c,p,0,REASON_RULE)
			elseif e:GetLabel()==4 then
				Duel.Remove(c,Duel.SelectPosition(tp,c,POS_ATTACK),REASON_RULE,p)
			end
		elseif c:IsType(TYPE_TRAP) then
			if Duel.GetLocationCount(p,LOCATION_SZONE)>0 then
				e:SetLabel(Duel.SelectOption(tp,false,szone,grave,hand,deck,ban))
			else
				e:SetLabel(Duel.SelectOption(tp,false,grave,hand,deck,ban)+1)
			end
			if e:GetLabel()==0 then
				if c:IsType(TYPE_CONTINUOUS) then
					Duel.MoveToField(c,tp,p,LOCATION_SZONE,Duel.SelectPosition(tp,c,POS_ATTACK),true)
				else
					Duel.MoveToField(c,tp,p,LOCATION_SZONE,POS_FACEDOWN,true)
				end
			elseif e:GetLabel()==1 then
				Duel.SendtoGrave(c,REASON_RULE,p)
			elseif e:GetLabel()==2 then
				Duel.SendtoHand(c,p,REASON_RULE)
			elseif e:GetLabel()==3 then
				Duel.SendtoDeck(c,p,0,REASON_RULE)
			elseif e:GetLabel()==4 then
				Duel.Remove(c,Duel.SelectPosition(tp,c,POS_ATTACK),REASON_RULE,p)
			end
		end
		Duel.BreakEffect()
	end
	Duel.BreakEffect()
	if Duel.GetFieldGroupCount(tp,0xff,0xff)==0 then
		Debug.ShowHint("No card has been added, the puzzle won't be saved.\nRestart to create a new puzzle.")
		Duel.Win(PLAYER_NONE,0,0)
		return
	end
	local tme=os.date("%Y",os.time()).."-"..os.date("%m",os.time()).."-"..os.date("%d",os.time()).." "..os.date("%H",os.time()).."-"..os.date("%M",os.time()).."-"..os.date("%S",os.time())
	local f=io.open("./puzzles/Generated Puzzle "..tme..".lua","w+")
	local slp=Duel.GetLP(tp)
	local olp=Duel.GetLP(1-tp)
	local name="[AI]Ignis"
	f:write("--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)")
	f:write("\nDebug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)")
	f:write("\nDebug.SetPlayerInfo(0,"..slp..",0,0)")
	f:write("\nDebug.SetPlayerInfo(1,"..olp..",0,0)")
	for p=0,1 do
		f:WriteLocation(LOCATION_DECK,p)
		f:WriteLocation(LOCATION_EXTRA,p)
		f:WriteLocation(LOCATION_HAND,p)
		f:WriteLocation(LOCATION_GRAVE,p)
		f:WriteLocation(LOCATION_REMOVED,p)
		f:WriteLocation(LOCATION_MZONE,p)
		f:WriteLocation(LOCATION_SZONE,p)	
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
	
	f:close()

	Debug.ShowHint("The puzzle has been sucessfully exported as 'Generated Puzzle "..tme..".lua'.\nRestart to create a new puzzle.")
	Duel.Win(PLAYER_NONE,0,0)
end)
Duel.RegisterEffect(e1,0)

function f(c,p,ec)
	return c:CheckUniqueOnField(p)
end
function f2(tc,ec)
	return tc:IsFaceup() and ec:CheckEquipTarget(tc)
end
function unchk(c,eqc)
	return c:IsFaceup() and eqc:CheckEquipTarget(c) and aux.CheckUnionEquip(eqc,c)
end
function emzcheck(c)
	return c:IsType(TYPE_LINK) and c:GetSequence()>=5
end
function maplocation(loc)
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
function mapposition(pos)
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

FILE=getmetatable(io.stdin)

FILE.WriteCard=function(file,card,identifier)
	identifier=identifier and ("local "..identifier.."=") or ""
	local location=card:GetLocation()
	local sequence=card:GetSequence()
	local controller=card:GetControler()
	local otg=card:GetOverlayTarget()
	if otg then
		location=otg:GetLocation()
		sequence=otg:GetSequence()
		controller=otg:GetControler()
	end
	if card:IsLocation(LOCATION_PZONE) then
		location=LOCATION_PZONE
		if sequence==4 then sequence=1 end
	elseif card:IsLocation(LOCATION_FZONE) then
		location=LOCATION_FZONE
		sequence=0
	end
	file:write("\n"..identifier.."Debug.AddCard("..card:GetCode()..","..controller..","..card:GetOwner()..","..maplocation(location)..","..sequence..","..mapposition(card:GetPosition())..")")
end

function maphint(loc)
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
FILE.WriteLocation=function(file,loc,player)
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
					local uniqeqip="eq_"..uniquecount
					uniquecount=uniquecount+1
					equipscheck[eq]=uniqeqip
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
			file:WriteCard(tc,uniq or equipscheck[tc])
			for _tc in aux.Next(tc:GetOverlayGroup()) do
				file:WriteCard(_tc)
			end
		end
	end
end
