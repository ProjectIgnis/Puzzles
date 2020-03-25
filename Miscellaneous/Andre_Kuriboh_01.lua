--Kuriboh Madness v1
--Designed and implemented by Andre

--[[message
Are Kuribohs a joke?
Be careful while choosing an attacker.


	Your Starting LP: 1
	Opponent's Starting LP: 1000
	Complexity: 2/10.
	Objective: Win this turn.
]]
function aux.trol(e,tp)
	local c=e:GetHandler()
	local a=Duel.GetAttacker()
	if a:IsCode(40640057) then
		local e1=Effect.CreateEffect(c)
		e1:SetType(EFFECT_TYPE_SINGLE)
		e1:SetCode(EFFECT_SET_ATTACK)
		e1:SetValue(5000)
		a:RegisterEffect(e1)
	else
		local e1=Effect.CreateEffect(c)
		e1:SetType(EFFECT_TYPE_SINGLE)
		e1:SetCode(EFFECT_SET_ATTACK)
		e1:SetValue(0)
		a:RegisterEffect(e1)
	end
end
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)
Debug.SetAIName("Evil Guy")
Debug.SetPlayerInfo(0,1,0,0)
Debug.SetPlayerInfo(1,1000,0,0)
--you card
c=Debug.AddCard(40640057,0,0,LOCATION_MZONE,0,POS_FACEUP_ATTACK)
Debug.AddCard(23995346,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
--opponent
Debug.AddCard(3606728,1,1,LOCATION_MZONE,0,POS_FACEUP_ATTACK)
Debug.ReloadFieldEnd()
local e1=Effect.CreateEffect(c)
	e1:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
	e1:SetCode(EVENT_ATTACK_ANNOUNCE)
	e1:SetCountLimit(1)
	e1:SetOperation(aux.trol)
Duel.RegisterEffect(e1,0)