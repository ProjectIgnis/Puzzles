Debug.SetAIName("[AI]Ignis")
Debug.ReloadFieldBegin(0,5)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

Debug.ReloadFieldEnd()
--[[message
	Known Issues:
	-You cannot add cards to your OPPONENT's Extra Monster Zone: prefer to add them to another zone, then edit the puzzle and change their sequences.
]]

local e1=Effect.GlobalEffect()
e1:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
e1:SetCode(EVENT_PREDRAW)
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
	local fu=2211
	local fd=2212
	local equip=2213
	local attch=2214
	while Duel.SelectYesNo(tp,2200) do
		local ac=Duel.AnnounceCard(tp)
		if Duel.SelectYesNo(tp,2210) then p=tp else p=1-tp end
		local c=Duel.CreateToken(p,ac)
		if c:IsType(TYPE_MONSTER) then
			if c:IsType(TYPE_PENDULUM) then
				if c:IsType(TYPE_FUSION) or c:IsType(TYPE_SYNCHRO) or c:IsType(TYPE_XYZ) then
					e:SetLabel(Duel.SelectOption(tp,pzone,mzone,grave,hand,deck,extra,ban))
					if e:GetLabel()==1 then
						local choice=Duel.SelectOption(tp,fu,fd)
						if choice==0 then pos=POS_FACEUP elseif choice==1 then pos=POS_FACEDOWN end
						Duel.MoveToField(c,tp,p,LOCATION_MZONE,pos,true)
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
						Duel.MoveToField(c,tp,p,LOCATION_SZONE,POS_FACEUP,false)
					elseif e:GetLabel()==2 then
						Duel.SendtoGrave(c,REASON_RULE,p)
					elseif e:GetLabel()==3 then
						local choice=Duel.SelectOption(tp,fu,fd)
						if choice==0 then Duel.SendtoExtraP(c,p,REASON_RULE) elseif choice==1 then Duel.SendtoHand(c,p,REASON_RULE) end
					elseif e:GetLabel()==4 then
						local choice=Duel.SelectOption(tp,fu,fd)
						if choice==0 then pos=POS_FACEUP elseif choice==1 then pos=POS_FACEDOWN end
						Duel.Remove(c,pos,REASON_RULE,p)
					end
				else
					e:SetLabel(Duel.SelectOption(tp,pzone,mzone,grave,hand,deck,extra,ban))
					if e:GetLabel()==1 then
						local choice=Duel.SelectOption(tp,fu,fd)
						if choice==0 then pos=POS_FACEUP elseif choice==1 then pos=POS_FACEDOWN end
						Duel.MoveToField(c,tp,p,LOCATION_MZONE,pos,true)
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
						local choice=Duel.SelectOption(tp,fu,fd)
						if choice==0 then pos=POS_FACEUP elseif choice==1 then pos=POS_FACEDOWN end
						Duel.Remove(c,pos,REASON_RULE,p)
					end
				end
			elseif c:IsType(TYPE_FUSION) or c:IsType(TYPE_SYNCHRO) or c:IsType(TYPE_XYZ) then 
				if Duel.GetLocationCount(p,LOCATION_MZONE)>0
					or (Duel.CheckLocation(p,LOCATION_MZONE,5) and Duel.CheckLocation(p,LOCATION_MZONE,6)) then
					e:SetLabel(Duel.SelectOption(tp,mzone,grave,extra,ban))
				else
					e:SetLabel(Duel.SelectOption(tp,grave,extra,ban)+1)
				end
				if e:GetLabel()==0 then
					local choice=Duel.SelectOption(tp,fu,fd)
					if choice==0 then pos=POS_FACEUP elseif choice==1 then pos=POS_FACEDOWN end
					if Duel.CheckLocation(p,LOCATION_MZONE,5) and Duel.CheckLocation(p,LOCATION_MZONE,6) 
						and Duel.SelectYesNo(tp,2215) then
						Duel.MoveToField(c,tp,p,LOCATION_MZONE,pos,true,96)
						c:CompleteProcedure()
					else
						Duel.MoveToField(c,tp,p,LOCATION_MZONE,pos,true)
						c:CompleteProcedure()
					end
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
					local choice=Duel.SelectOption(tp,fu,fd)
					if choice==0 then pos=POS_FACEUP elseif choice==1 then pos=POS_FACEDOWN end
					Duel.Remove(c,pos,REASON_RULE,p)
				end
			elseif c:IsType(TYPE_UNION) then
				if Duel.GetLocationCount(p,LOCATION_MZONE)>0 and Duel.GetLocationCount(p,LOCATION_SZONE)>0 and Duel.IsExistingMatchingCard(unchk,tp,LOCATION_MZONE,LOCATION_MZONE,1,nil,c) then
					e:SetLabel(Duel.SelectOption(tp,equip,mzone,grave,hand,deck,ban))
				elseif Duel.GetLocationCount(p,LOCATION_MZONE)>0 then
					e:SetLabel(Duel.SelectOption(tp,mzone,grave,hand,deck,ban)+1)
				elseif Duel.GetLocationCount(p,LOCATION_SZONE)>0 and Duel.IsExistingMatchingCard(unchk,tp,LOCATION_MZONE,LOCATION_MZONE,1,nil,c) then
					local i=Duel.SelectOption(tp,equip,grave,hand,deck,ban)
					if i>=1 then i=i+1 end
					e:SetLabel(i)
				else
					e:SetLabel(Duel.SelectOption(tp,grave,hand,deck,ban)+2)
				end
				if e:GetLabel()==0 then
					Duel.Hint(HINT_SELECTMSG,tp,HINTMSG_FACEUP)
					local g=Duel.SelectMatchingCard(tp,unchk,tp,LOCATION_MZONE,LOCATION_MZONE,1,1,nil,c)
					local tc=g:GetFirst()
					if tc and aux.CheckUnionEquip(c,tc) and Duel.Equip(tp,c,tc) then
						aux.SetUnionState(c)
					end
				elseif e:GetLabel()==1 then
					local choice=Duel.SelectOption(tp,fu,fd)
					if choice==0 then pos=POS_FACEUP elseif choice==1 then pos=POS_FACEDOWN_DEFENSE end
					Duel.MoveToField(c,tp,p,LOCATION_MZONE,pos,true)
					c:CompleteProcedure()
				elseif e:GetLabel()==2 then
					Duel.SendtoGrave(c,REASON_RULE,p)
				elseif e:GetLabel()==3 then
					Duel.SendtoHand(c,p,REASON_RULE)
				elseif e:GetLabel()==4 then
					Duel.SendtoDeck(c,p,0,REASON_RULE)
				elseif e:GetLabel()==5 then
					local choice=Duel.SelectOption(tp,fu,fd)
					if choice==0 then pos=POS_FACEUP elseif choice==1 then pos=POS_FACEDOWN end
					Duel.Remove(c,pos,REASON_RULE,p)
				end
			elseif c:IsType(TYPE_LINK) then
				if Duel.GetLocationCount(p,LOCATION_MZONE)>0
					or ((Duel.CheckLocation(p,LOCATION_MZONE,5) and Duel.CheckLocation(p,LOCATION_MZONE,6))
					or Duel.IsExistingMatchingCard(emzcheck,tp,LOCATION_MZONE,LOCATION_MZONE,1,nil)) then
						e:SetLabel(Duel.SelectOption(tp,mzone,grave,extra,ban))
					else
						e:SetLabel(Duel.SelectOption(tp,grave,extra,ban)+1)
				end
				if e:GetLabel()==0 then
					if ((Duel.CheckLocation(p,LOCATION_MZONE,5) and Duel.CheckLocation(p,LOCATION_MZONE,6))
						or Duel.IsExistingMatchingCard(emzcheck,tp,LOCATION_MZONE,LOCATION_MZONE,1,nil))
						and Duel.SelectYesNo(tp,2215) then
						Duel.MoveToField(c,tp,p,LOCATION_MZONE,POS_FACEUP,true,96)
						c:CompleteProcedure()
					else
						Duel.MoveToField(c,tp,p,LOCATION_MZONE,POS_FACEUP,true)
						c:CompleteProcedure()
					end
				elseif e:GetLabel()==1 then
					Duel.SendtoGrave(c,REASON_RULE,p)
				elseif e:GetLabel()==2 then
					Duel.SendtoHand(c,p,REASON_RULE)
				elseif e:GetLabel()==3 then
					local choice=Duel.SelectOption(tp,fu,fd)
					if choice==0 then pos=POS_FACEUP elseif choice==1 then pos=POS_FACEDOWN end
					Duel.Remove(c,pos,REASON_RULE,p)
				end
			else
				if Duel.GetLocationCount(p,LOCATION_MZONE)>0 then
					e:SetLabel(Duel.SelectOption(tp,mzone,grave,hand,deck,ban))
				else
					e:SetLabel(Duel.SelectOption(tp,grave,hand,deck,ban)+1)
				end
				if e:GetLabel()==0 then
					local choice=Duel.SelectOption(tp,fu,fd)
					if choice==0 then pos=POS_FACEUP elseif choice==1 then pos=POS_FACEDOWN_DEFENSE end
					Duel.MoveToField(c,tp,p,LOCATION_MZONE,pos,true)
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
					local choice=Duel.SelectOption(tp,fu,fd)
					if choice==0 then pos=POS_FACEUP elseif choice==1 then pos=POS_FACEDOWN end
					Duel.Remove(c,pos,REASON_RULE,p)
				end
			end
		elseif c:IsType(TYPE_SPELL) then
			if Duel.GetLocationCount(p,LOCATION_SZONE)>0 then
				e:SetLabel(Duel.SelectOption(tp,szone,grave,hand,deck,ban))
			else
				e:SetLabel(Duel.SelectOption(tp,grave,hand,deck,ban)+1)
			end
			if e:GetLabel()==0 then
				if c:IsType(TYPE_FIELD) or c:IsType(TYPE_CONTINUOUS) then
					local choice=Duel.SelectOption(tp,fu,fd)
					if choice==0 then pos=POS_FACEUP elseif choice==1 then pos=POS_FACEDOWN end
					Duel.MoveToField(c,tp,p,LOCATION_SZONE,pos,true)
				elseif c:IsType(TYPE_EQUIP) and Duel.GetFieldGroup(tp,LOCATION_MZONE,LOCATION_MZONE):IsExists(f,1,nil,p,c) then
					if Duel.IsExistingTarget(f2,0,LOCATION_MZONE,LOCATION_MZONE,1,nil,c) and Duel.SelectYesNo(tp,aux.Stringid(1546122,14)) then
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
				local choice=Duel.SelectOption(tp,fu,fd)
				if choice==0 then pos=POS_FACEUP elseif choice==1 then pos=POS_FACEDOWN end
				Duel.Remove(c,pos,REASON_RULE,p)
			end
		elseif c:IsType(TYPE_TRAP) then
			if Duel.GetLocationCount(p,LOCATION_SZONE)>0 then
				e:SetLabel(Duel.SelectOption(tp,szone,grave,hand,deck,ban))
			else
				e:SetLabel(Duel.SelectOption(tp,grave,hand,deck,ban)+1)
			end
			if e:GetLabel()==0 then
				if c:IsType(TYPE_CONTINUOUS) then
					local choice=Duel.SelectOption(tp,fu,fd)
					if choice==0 then pos=POS_FACEUP elseif choice==1 then pos=POS_FACEDOWN end
					Duel.MoveToField(c,tp,p,LOCATION_SZONE,pos,true)
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
				local choice=Duel.SelectOption(tp,fu,fd)
				if choice==0 then pos=POS_FACEUP elseif choice==1 then pos=POS_FACEDOWN end
				Duel.Remove(c,pos,REASON_RULE,p)
			end
		end
		Duel.BreakEffect()
	end

	local io=require("io")
	os = require("os")
	Duel.BreakEffect()
	local tme=os.date("%Y",os.time()).."-"..os.date("%m",os.time()).."-"..os.date("%d",os.time()).." "..os.date("%H",os.time()).."-"..os.date("%M",os.time()).."-"..os.date("%S",os.time())
	local f=io.open("./puzzles/Generated Puzzle "..tme..".lua","w+")
	local del=io.open("./puzzles/unimportant.lua","w+")
	local slp=Duel.GetLP(tp)
	local olp=Duel.GetLP(1-tp)
	local name="[AI]Ignis"
	f:write("--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)\nDebug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)\nDebug.SetPlayerInfo(0,"..slp..",0,0)\nDebug.SetPlayerInfo(1,"..olp..",0,0)\n")
	local g=Duel.GetFieldGroup(tp,LOCATION_DECK,0)
	if g:GetCount()>0 then
		f:write("\n--Main Deck")
		local tc=g:GetFirst()
		for i=1,g:GetCount() do
			f:write("\nDebug.AddCard("..tc:GetCode()..",0,0,LOCATION_DECK,0,POS_FACEDOWN)")
			tc=g:GetNext()
		end
	end
	local g=Duel.GetFieldGroup(tp,LOCATION_EXTRA,0)
	if g:GetCount()>0 then
		f:write("\n--Extra Deck")
		local tc=g:GetFirst()
		for i=1,g:GetCount() do
			f:write("\nDebug.AddCard("..tc:GetCode()..",0,0,LOCATION_EXTRA,0,"..tc:GetPosition()..")")
			tc=g:GetNext()
		end
	end
	local g=Duel.GetFieldGroup(tp,LOCATION_HAND,0)
	if g:GetCount()>0 then
		f:write("\n--Hand")
		local tc=g:GetFirst()
		for i=1,g:GetCount() do
			f:write("\nDebug.AddCard("..tc:GetCode()..",0,0,LOCATION_HAND,0,POS_FACEDOWN)")
			tc=g:GetNext()
		end
	end
	local g=Duel.GetFieldGroup(tp,LOCATION_GRAVE,0)
	if g:GetCount()>0 then
		f:write("\n--GY")
		local tc=g:GetFirst()
		for i=1,g:GetCount() do
			f:write("\nDebug.AddCard("..tc:GetCode()..",0,0,LOCATION_GRAVE,0,POS_FACEUP)")
			tc=g:GetNext()
		end
	end
	local g=Duel.GetFieldGroup(tp,LOCATION_REMOVED,0)
	if g:GetCount()>0 then
		f:write("\n--Banished")
		local tc=g:GetFirst()
		for i=1,g:GetCount() do
			f:write("\nDebug.AddCard("..tc:GetCode()..",0,0,LOCATION_REMOVED,0,"..tc:GetPosition()..")")
			tc=g:GetNext()
		end
	end
	local g=Duel.GetFieldGroup(tp,LOCATION_MZONE,0)
	if g:GetCount()>0 then
		f:write("\n--Monster Zones")
		local tc=g:GetFirst()
		for i=1,g:GetCount() do
			if tc:GetEquipCount()>0 and tc:GetOverlayCount()>0 then
				f:write("\nlocal m_"..i.."=Debug.AddCard("..tc:GetCode()..",0,0,LOCATION_MZONE,"..tc:GetSequence()..","..tc:GetPosition()..",true)")
				local og=tc:GetOverlayGroup()
				local oq=og:GetFirst()
				for b=1,og:GetCount() do
						f:write("\nDebug.AddCard("..oq:GetCode()..",0,0,LOCATION_MZONE,"..tc:GetSequence()..",POS_FACEUP_ATTACK)")
						oq=og:GetNext()
					end
				local tg=tc:GetEquipGroup()
				local eq=tg:GetFirst()
				for b=1,tg:GetCount() do
					f:write("\nlocal eq_"..i.."_"..b.."=Debug.AddCard("..eq:GetCode()..","..eq:GetControler()..","..eq:GetControler()..",LOCATION_SZONE,"..eq:GetSequence()..","..eq:GetPosition()..")")
					del:write("\nDebug.PreEquip(eq_"..i.."_"..b..",".."m_"..i..")")
					eq=tg:GetNext()
				end
			elseif tc:GetOverlayCount()>0 then
				f:write("\nDebug.AddCard("..tc:GetCode()..",0,0,LOCATION_MZONE,"..tc:GetSequence()..","..tc:GetPosition()..",true)")
					local og=tc:GetOverlayGroup()
					local oq=og:GetFirst()
					for b=1,og:GetCount() do
						f:write("\nDebug.AddCard("..oq:GetCode()..",0,0,LOCATION_MZONE,"..tc:GetSequence()..",POS_FACEUP_ATTACK)")
						oq=og:GetNext()
					end
			else
				f:write("\nDebug.AddCard("..tc:GetCode()..",0,0,LOCATION_MZONE,"..tc:GetSequence()..","..tc:GetPosition()..",true)")
			end
			tc=g:GetNext()
		end
	end
	local g=Duel.GetFieldGroup(tp,LOCATION_SZONE,0):Filter((function(c)
		return not (c:IsFaceup() and (c:IsType(TYPE_EQUIP) or c:IsType(TYPE_UNION)))
	end),nil)
	if g:GetCount()>0 then
		f:write("\n--Spell & Trap Zones")
		local tc=g:GetFirst()
		for i=1,g:GetCount() do
			if tc:GetType()&TYPE_PENDULUM>0 then
				f:write("\nDebug.AddCard("..tc:GetCode()..",0,0,LOCATION_PZONE,"..(i-1)..","..tc:GetPosition()..")") --to write pendulums correctly!
			else
				f:write("\nDebug.AddCard("..tc:GetCode()..",0,0,LOCATION_SZONE,"..tc:GetSequence()..","..tc:GetPosition()..")")
			end
				tc=g:GetNext()
		end
	end
	local g=Duel.GetFieldGroup(tp,0,LOCATION_DECK)
	if g:GetCount()>0 then
		f:write("\n--Main Deck")
		local tc=g:GetFirst()
		for i=1,g:GetCount() do
			f:write("\nDebug.AddCard("..tc:GetCode()..",1,1,LOCATION_DECK,0,POS_FACEDOWN)")
			tc=g:GetNext()
		end
	end
	local g=Duel.GetFieldGroup(tp,0,LOCATION_EXTRA)
	if g:GetCount()>0 then
		f:write("\n--Extra Deck")
		local tc=g:GetFirst()
		for i=1,g:GetCount() do
			f:write("\nDebug.AddCard("..tc:GetCode()..",1,1,LOCATION_EXTRA,0,"..tc:GetPosition()..")")
			tc=g:GetNext()
		end
	end
	local g=Duel.GetFieldGroup(tp,0,LOCATION_HAND)
	if g:GetCount()>0 then
		f:write("\n--Hand")
		local tc=g:GetFirst()
		for i=1,g:GetCount() do
			f:write("\nDebug.AddCard("..tc:GetCode()..",1,1,LOCATION_HAND,0,POS_FACEDOWN)")
			tc=g:GetNext()
		end
	end
	local g=Duel.GetFieldGroup(tp,0,LOCATION_GRAVE)
	if g:GetCount()>0 then
		f:write("\n--GY")
		local tc=g:GetFirst()
		for i=1,g:GetCount() do
			f:write("\nDebug.AddCard("..tc:GetCode()..",1,1,LOCATION_GRAVE,0,POS_FACEUP)")
			tc=g:GetNext()
		end
	end
	local g=Duel.GetFieldGroup(tp,0,LOCATION_REMOVED)
	if g:GetCount()>0 then
		f:write("\n--Banished")
		local tc=g:GetFirst()
		for i=1,g:GetCount() do
			f:write("\nDebug.AddCard("..tc:GetCode()..",1,1,LOCATION_REMOVED,0,"..tc:GetPosition()..")")
			tc=g:GetNext()
		end
	end
	local g=Duel.GetFieldGroup(tp,0,LOCATION_MZONE)
	if g:GetCount()>0 then
		f:write("\n--Monster Zones")
		local tc=g:GetFirst()
		for i=1,g:GetCount() do
		if tc:GetEquipCount()>0 and tc:GetOverlayCount()>0 then
				f:write("\nlocal m_"..i.."=Debug.AddCard("..tc:GetCode()..",1,1,LOCATION_MZONE,"..tc:GetSequence()..","..tc:GetPosition()..",true)")
				local og=tc:GetOverlayGroup()
				local oq=og:GetFirst()
				for b=1,og:GetCount() do
						f:write("\nDebug.AddCard("..oq:GetCode()..",1,1,LOCATION_MZONE,"..tc:GetSequence()..",POS_FACEUP_ATTACK)")
						oq=og:GetNext()
					end
				local tg=tc:GetEquipGroup()
				local eq=tg:GetFirst()
				for b=1,tg:GetCount() do
					f:write("\nlocal eq_"..i.."_"..b.."=Debug.AddCard("..eq:GetCode()..","..eq:GetControler()..","..eq:GetControler()..",LOCATION_SZONE,"..eq:GetSequence()..","..eq:GetPosition()..")")
					del:write("\nDebug.PreEquip(eq_"..i.."_"..b..",".."m_"..i..")")
					eq=tg:GetNext()
				end
			elseif tc:GetOverlayCount()>0 then
				f:write("\nDebug.AddCard("..tc:GetCode()..",1,1,LOCATION_MZONE,"..tc:GetSequence()..","..tc:GetPosition()..",true)")
					local og=tc:GetOverlayGroup()
					local oq=og:GetFirst()
					for b=1,og:GetCount() do
						f:write("\nDebug.AddCard("..oq:GetCode()..",1,1,LOCATION_MZONE,"..tc:GetSequence()..",POS_FACEUP_ATTACK)")
						oq=og:GetNext()
					end
			else
				f:write("\nDebug.AddCard("..tc:GetCode()..",1,1,LOCATION_MZONE,"..tc:GetSequence()..","..tc:GetPosition()..",true)")
			end
			tc=g:GetNext()
		end
	end
	local g=Duel.GetFieldGroup(tp,0,LOCATION_SZONE):Filter((function(c)
		return not (c:IsFaceup() and (c:IsType(TYPE_EQUIP) or c:IsType(TYPE_UNION)))
	end),nil)
	if g:GetCount()>0 then
		f:write("\n--Spell & Trap Zones")
		local tc=g:GetFirst()
		for i=1,g:GetCount() do
			if tc:GetType()&TYPE_PENDULUM>0 then
				f:write("\nDebug.AddCard("..tc:GetCode()..",1,1,LOCATION_PZONE,"..(i-1)..","..tc:GetPosition()..")") --to write pendulums correctly!
			else
				f:write("\nDebug.AddCard("..tc:GetCode()..",1,1,LOCATION_SZONE,"..tc:GetSequence()..","..tc:GetPosition()..")")
			end
			tc=g:GetNext()
		end
	end
	f:write("\nDebug.ReloadFieldEnd()")
	f:close()
	del:close()

	local inFile = io.open("./puzzles/unimportant.lua", "r")
	local inFileContents = inFile:read("*a")
	local appendFile = io.open("./puzzles/Generated Puzzle "..tme..".lua","a")
	appendFile:write("\naux.BeginPuzzle()")
	appendFile:write(inFileContents)
	inFile:close()
	appendFile:close()
	os.remove("./puzzles/unimportant.lua")

	Duel.BreakEffect()
	Debug.ShowHint("The puzzle has been sucessfully exported as 'Generated Puzzle "..tme..".lua'.")
	Duel.SetLP(0,0)
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