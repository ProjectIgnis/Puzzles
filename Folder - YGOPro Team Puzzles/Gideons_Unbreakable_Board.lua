--Designed by Gideon
--Implemented by Gideon, Senpaizuri3
Debug.SetAIName("Gideon's Twisted Mind")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)

Debug.SetPlayerInfo(0,2147483647,0,0)
Debug.SetPlayerInfo(1,2147483647,0,0)
--[[message
This puzzle has an "unbreakable board".
To win, you need to find a way to remove at least 1 of the cards on the field!


	Your Starting LP: ?
	Opponent's Starting LP: ?
	Complexity: ∞/10.
	Objective: Find a way to break the board.
]]


local card=Debug.AddCard(35984222,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)

local bamboo=Debug.AddCard(20174189,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE)
Debug.AddCard(30459350,1,1,LOCATION_SZONE,4,POS_FACEUP)
Debug.AddCard(73599290,1,1,LOCATION_SZONE,3,POS_FACEUP)
local zone=Debug.AddCard(38296564,1,1,LOCATION_SZONE,2,POS_FACEUP)
Debug.AddCard(68937720,1,1,LOCATION_SZONE,1,POS_FACEUP)
Debug.AddCard(29549364,1,1,LOCATION_SZONE,0,POS_FACEUP)

Debug.ReloadFieldEnd()
Debug.PreSetTarget(zone,bamboo)

--Pre-draw
local e1=Effect.CreateEffect(card)
e1:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
e1:SetCode(EVENT_PREDRAW)
e1:SetProperty(EFFECT_FLAG_NO_TURN_RESET)
e1:SetCountLimit(1,57005)
e1:SetOperation(function(e,tp,eg,ep,ev,re,r,rp)
	Debug.ShowHint("Choose 'Yes' to add cards to your hand. Choose 'No' to continue to the next location.")
	while Duel.SelectYesNo(tp,1001) do
		local ac=Duel.AnnounceCard(tp)
		local c=Duel.CreateToken(tp,ac)
		if c:IsType(TYPE_FUSION) or c:IsType(TYPE_SYNCHRO) or c:IsType(TYPE_XYZ) then
			Debug.ShowHint("The card you selected is not valid.")
		else Duel.SendtoHand(c,nil,REASON_RULE)
		end
	end
	Debug.ShowHint("Choose 'Yes' to add cards to your Main Deck. Choose 'No' to continue to the next location.")
	while Duel.SelectYesNo(tp,1000) do
		local ac=Duel.AnnounceCard(tp)
		local c=Duel.CreateToken(tp,ac)
		if c:IsType(TYPE_FUSION) or c:IsType(TYPE_SYNCHRO) or c:IsType(TYPE_XYZ) then
			Debug.ShowHint("The card you selected is not valid.")
		else Duel.SendtoDeck(c,tp,1,REASON_RULE)
		end
	end
	Debug.ShowHint("Choose 'Yes' to add cards to your GY. Choose 'No' to continue to the next location.")
	while Duel.SelectYesNo(tp,1004) do
		local ac=Duel.AnnounceCard(tp)
		local c=Duel.CreateToken(tp,ac)
		Duel.SendtoGrave(c,nil,REASON_RULE)	
	end
	Debug.ShowHint("Choose 'Yes' to add cards face-down to your S/T Zone. Choose 'No' to continue to the next location.")
	while Duel.SelectYesNo(tp,1003) do
		local ac=Duel.AnnounceCard(tp)
		local c=Duel.CreateToken(tp,ac)
		if (c:IsType(TYPE_SPELL) or c:IsType(TYPE_TRAP)) or c:IsHasEffect(EFFECT_MONSTER_SSET) then
			Duel.SSet(tp,c)
			local e1=Effect.CreateEffect(c)
			e1:SetType(EFFECT_TYPE_SINGLE)
			e1:SetCode(EFFECT_TRAP_ACT_IN_SET_TURN)
			e1:SetProperty(EFFECT_FLAG_SET_AVAILABLE)
			e1:SetReset(RESET_EVENT+0x1fe0000)
			c:RegisterEffect(e1)
		else Debug.ShowHint("The card you selected is not valid.")
		end
	end
	Debug.ShowHint("Choose 'Yes' to add cards to your Extra Deck. Choose 'No' to start the puzzle.")
	while Duel.SelectYesNo(tp,1006) do
		local ac=Duel.AnnounceCard(tp)
		local c=Duel.CreateToken(tp,ac)
		if c:IsType(TYPE_FUSION) or c:IsType(TYPE_SYNCHRO) or c:IsType(TYPE_XYZ) or c:IsType(TYPE_PENDULUM) then
			if c:IsType(TYPE_PENDULUM) and (c:IsType(TYPE_FUSION) or c:IsType(TYPE_SYNCHRO) or c:IsType(TYPE_XYZ)) then
				Debug.ShowHint("Choose 'Yes' to place it in the Extra Deck face-up or choose 'No' to place it face-down.")
				if Duel.SelectYesNo(tp,0) then
					Duel.SendtoExtraP(c,nil,REASON_RULE)
				else Duel.SendtoHand(c,nil,REASON_RULE)
				end
			else Duel.SendtoExtraP(c,nil,REASON_RULE)
			end
		else Debug.ShowHint("The card you selected is not valid.")
		end
	end
end)
Duel.RegisterEffect(e1,0)


local e2=Effect.CreateEffect(card)
e2:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
e2:SetCode(EVENT_LEAVE_FIELD)
e2:SetCountLimit(1)
e2:SetOperation(function(e,tp,eg,ep,ev,re,r,rp)
	if eg:IsExists((function(c)
		return c:GetOwner()==1-tp and (c:IsCode(20174189) or c:IsCode(30459350) or c:IsCode(73599290) or c:IsCode(68937720) or c:IsCode(29549364))
	end),1,nil) then Duel.Win(tp,REASON_RULE) end
end)
Duel.RegisterEffect(e2,0)

local e3=Effect.CreateEffect(card)
e3:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
e3:SetCode(EVENT_TO_DECK)
e3:SetCountLimit(1)
e3:SetOperation(function(e,tp,eg,ep,ev,re,r,rp)
	if eg:IsExists((function(c)
		return c:GetOwner()==1-tp and (c:IsCode(20174189) or c:IsCode(30459350) or c:IsCode(73599290) or c:IsCode(68937720) or c:IsCode(29549364))
	end),1,nil) then Duel.Win(tp,REASON_RULE) end
end)
Duel.RegisterEffect(e3,0)


local e4=Effect.CreateEffect(card)
e4:SetType(EFFECT_TYPE_SINGLE)
e4:SetCode(EVENT_LEAVE_FIELD)
e4:SetCountLimit(1)
e4:SetOperation(function(e,tp,eg,ep,ev,re,r,rp)
	Duel.Win(tp,REASON_RULE)
end)
Duel.RegisterEffect(e4,0)

local e5=Effect.CreateEffect(card)
e5:SetType(EFFECT_TYPE_SINGLE)
e5:SetCode(EVENT_TO_DECK)
e5:SetCountLimit(1)
e5:SetOperation(function(e,tp,eg,ep,ev,re,r,rp)
	Duel.Win(tp,REASON_RULE)
end)
Duel.RegisterEffect(e5,0)


local e1=Effect.CreateEffect(bamboo)
e1:SetType(EFFECT_TYPE_FIELD)
e1:SetProperty(EFFECT_FLAG_PLAYER_TARGET)
e1:SetRange(LOCATION_MZONE)
e1:SetCode(EFFECT_CANNOT_ACTIVATE)
e1:SetTargetRange(0,1)
e1:SetValue(function(e,re,tp)
	return re:IsHasType(EFFECT_TYPE_ACTIVATE)
end)
e1:SetReset(RESET_EVENT+0x1fe0000)
bamboo:RegisterEffect(e1)


local e1=Effect.CreateEffect(zone)
e1:SetType(EFFECT_TYPE_SINGLE)
e1:SetProperty(EFFECT_FLAG_SINGLE_RANGE+EFFECT_FLAG_OWNER_RELATE)
e1:SetRange(LOCATION_MZONE)
e1:SetCode(EFFECT_INDESTRUCTABLE_BATTLE)
e1:SetReset(RESET_EVENT+0x1fe0000)
e1:SetCondition(function(e)
	return e:GetOwner():IsHasCardTarget(e:GetHandler())
end)
e1:SetValue(1)
bamboo:RegisterEffect(e1,true)
local e2=e1:Clone()
e2:SetCode(EFFECT_INDESTRUCTABLE_EFFECT)
e2:SetValue(function(e,re)
	return e:GetOwnerPlayer()~=re:GetOwnerPlayer()
end)
bamboo:RegisterEffect(e2,true)
local e3=e2:Clone()
e3:SetCode(EFFECT_CANNOT_BE_EFFECT_TARGET)
e3:SetProperty(EFFECT_FLAG_SINGLE_RANGE+EFFECT_FLAG_OWNER_RELATE+EFFECT_FLAG_IGNORE_IMMUNE)
e3:SetValue(function(e,re,rp)
	return rp~=e:GetOwnerPlayer()
end)
bamboo:RegisterEffect(e3,true)
