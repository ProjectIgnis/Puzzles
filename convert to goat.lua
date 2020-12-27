--[[message
Convert ydks in 'deck' folder to use in goat format.
Input import and export file name via console (Ctrl+O options; requires restart).
The filenames should exclude '.ydk' when you input them.
This script WILL ignore and remove cards that are not included in the goat banlist.
This is a beta version. Report any bugs you find to @senpaizuri3#9082.
]]
local io=require("io")
local os=require('os')

os.execute('cls')
print("Input import name (omitting '.ydk').")
local name=io.read()
assert(name,"Enable the console with the Ctrl+O options menu to input text.")
local filename="deck/"..name..".ydk"
local f=assert(io.open(filename,"r"),'Deck name "'..name..'" not found.')

os.execute('cls')
print("Input export name (omitting '.ydk'). Leave it empty to overwrite the import file instead.")
local export=io.read()
if not export or export=="" then export=name end


Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)
Debug.SetAIName("")

local state
for line in io.lines(filename) do
	if tonumber(line) then
		if state=="extra" then
			loc=LOCATION_EXTRA
		elseif state=="side" then
			loc=LOCATION_REMOVED
		else
			loc=LOCATION_DECK
		end
		Debug.AddCard(line,0,0,loc,0,POS_FACEDOWN)
	else
		state=string.sub(line,2)
	end
end
f:close()
Debug.ReloadFieldEnd()

function bangroup()
	local pool=Group.CreateGroup()
	require('os').execute('cls')
	print("Extracting card pool from goat banlist file...")
	local io=require("io")
	local banlist="repositories/lflists/GOAT.lflist.conf"
	local f=assert(io.open(banlist,"r"),"Could not load goat banlist.")
	for line in io.lines(banlist) do
		local str=tostring(line)
		local n=str:find("%s")
		local code=tonumber(string.sub(str,1,n))
		if n and code and string.sub(str,n+1):find("-1")~=1 then
			pool:AddCard(Duel.CreateToken(0,code))
		end
	end
	f:close()
	print("Pool extracted.")
	return pool
end

function goatlegal(c,g)
	return g:IsExists(Card.IsCode,1,nil,c:GetCode())
end

function startup(name)
	return function(e,tp,eg,ep,ev,re,r,rp)
			local firstenter=true
			local completecode={}
			local codesub={}
			local locs={LOCATION_DECK,LOCATION_EXTRA,LOCATION_REMOVED}
			local list=bangroup()
			for _,loc in ipairs(locs) do
				local g=Duel.GetFieldGroup(tp,loc,0):Filter(goatlegal,nil,list)
				for tc in aux.Next(g) do
					local ocode=tc:GetCode()
					if not completecode[ocode] then
						local scodes={}
						for oc in aux.Next(list:Filter(Card.IsCode,nil,ocode)) do
							table.insert(scodes,oc:GetOriginalCode())
						end
						if #scodes>0 then
							completecode[ocode]=true
							if #scodes>1 then
								if firstenter then print("Select which artwork(s) to use.") end
								firstenter=false
								codesub[ocode]=Duel.SelectCardsFromCodes(tp,1,1,nil,false,table.unpack(scodes))
							else
								codesub[ocode]=scodes[1]
							end
						end
					end
				end
			end
			writedeck(name,codesub,list)
	end
end

function writedeck(name,codesub,list)
	local io=require("io")
	local f=io.open("./deck/"..name..".ydk","w+")
	f:write("#created by ..\n")
	f:write("#main\n")
	local g=Duel.GetFieldGroup(0,LOCATION_DECK,0):Filter(goatlegal,nil,list)
	for tc in aux.Next(g) do
		local code=codesub[tc:GetCode()] and codesub[tc:GetCode()] or tc:GetCode()
		f:write(code.."\n")
	end
	f:write("#extra\n")
	local g=Duel.GetFieldGroup(0,LOCATION_EXTRA,0):Filter(goatlegal,nil,list)
	for tc in aux.Next(g) do
		local code=codesub[tc:GetCode()] and codesub[tc:GetCode()] or tc:GetCode()
		f:write(code.."\n")
	end
	f:write("!side\n")
	local g=Duel.GetFieldGroup(0,LOCATION_REMOVED,0):Filter(goatlegal,nil,list)
	for tc in aux.Next(g) do
		local code=codesub[tc:GetCode()] and codesub[tc:GetCode()] or tc:GetCode()
		f:write(code.."\n")
	end
	f:close()
	Debug.ShowHint("The deck has been sucessfully converted as '"..name..".ydk'.")
	print("The deck has been sucessfully converted as '"..name..".ydk'.")
	Duel.Win(PLAYER_NONE,0,0)
end

local e1=Effect.GlobalEffect()
e1:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
e1:SetCode(EVENT_STARTUP)
e1:SetCountLimit(1)
e1:SetProperty(EFFECT_FLAG_NO_TURN_RESET)
e1:SetOperation(startup(export))
Duel.RegisterEffect(e1,0)
