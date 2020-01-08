--Kuriboh Madness v3
--Designed and implemented by Andre
--[[message
Kuribohs are everywhere!


	Your Starting LP: 100
	Opponent's Starting LP: 10000
	Complexity: ?/10.
	Objective: Win this turn.
	Note: this puzzle has various hidden pranks.
]]


--function
local f1=function (e,tp)
	Duel.SetLP(0,0)
	Debug.ShowHint("I TOLD YOU, BAKA!")
end
local f2=function (e,tp)
	if Duel.GetLocationCount(tp,LOCATION_MZONE)>0 then
		local tk=Duel.CreateToken(tp,90884404)
		Duel.MoveToField(tk,tp,tp,LOCATION_MZONE,POS_FACEUP_ATTACK,true)
		Debug.ShowHint("I love you!")
	end
end
local f3a=function (c)
	return c:IsReleasable() and c:IsCode(90884404)
end
local f3b=function (c)
	return c:IsSetCard(0xa4)
end
local f3=function (e,c)
	if c==nil then return true end
	local tp=c:GetControler()
	return Duel.GetLocationCount(tp,LOCATION_MZONE)>-3
		and Duel.IsExistingMatchingCard(f3a,tp,LOCATION_MZONE,0,2,nil) and Duel.IsExistingMatchingCard(f3b,tp,LOCATION_MZONE,0,1,c)
end
local f5=function (e,tp)
	local g=Duel.GetFieldGroup(0,LOCATION_SZONE,LOCATION_SZONE)
	if g:GetCount()>0 then
		local sg=g:Select(tp,1,g:GetCount(),nil)
		local dc=Duel.Destroy(sg,REASON_EFFECT)
		Duel.Damage(0,dc*2,REASON_EFFECT)
		Duel.Damage(1,dc*3,REASON_EFFECT)
		local atk=dc*300
		local e1=Effect.CreateEffect(e:GetHandler())
		e1:SetType(EFFECT_TYPE_SINGLE)
		e1:SetCode(EFFECT_UPDATE_ATTACK)
		e1:SetValue(atk)
		e1:SetReset(RESET_EVENT+0x1fe0000)
		e:GetHandler():RegisterEffect(e1)
	end
end
local f4=function (e,tp,eg,ep,ev,re,r,rp,c)
	Duel.Hint(HINT_SELECTMSG,tp,HINTMSG_RELEASE)
	local g1=Duel.SelectMatchingCard(tp,f3a,tp,LOCATION_MZONE,0,2,2,nil)
	Duel.Hint(HINT_SELECTMSG,tp,HINTMSG_SMATERIAL)
	local g2=Duel.SelectMatchingCard(tp,f3b,tp,LOCATION_MZONE,0,1,2,c)
	local atk=g1:GetSum(Card.GetAttack)+g2:GetSum(Card.GetAttack)
	local def=g1:GetSum(Card.GetDefense)+g2:GetSum(Card.GetDefense)
	Duel.Release(g1,REASON_COST)
	Duel.Overlay(c,g2)
	local e1=Effect.CreateEffect(c)
	e1:SetType(EFFECT_TYPE_SINGLE)
	e1:SetCode(EFFECT_SET_ATTACK)
	e1:SetValue(atk*(g1:GetCount()+g2:GetCount()))
	e1:SetReset(RESET_EVENT+0xff0000)
	c:RegisterEffect(e1)
	local e2=e1:Clone()
	e2:SetCode(EFFECT_SET_DEFENSE)
	e2:SetValue(def*(g1:GetCount()+g2:GetCount()))
	c:RegisterEffect(e2)
	if g2:IsExists(Card.IsSetCard,1,nil,0xa4) then
		local e3=Effect.CreateEffect(c)
		e3:SetType(EFFECT_TYPE_SINGLE)
		e3:SetCode(EFFECT_EXTRA_ATTACK)
		e3:SetValue(g1:GetCount()+g2:GetCount())
		e3:SetReset(RESET_EVENT+0xff0000)
		c:RegisterEffect(e3)
	end
	if g2:IsExists(Card.IsSetCard,2,nil,0xa4) then
		local e4=Effect.CreateEffect(c)
		e4:SetType(EFFECT_TYPE_SINGLE+EFFECT_TYPE_TRIGGER_F)
		e4:SetCode(EVENT_ATTACK_ANNOUNCE)
		e4:SetCountLimit(1)
		e4:SetOperation(f5)
		e4:SetReset(RESET_EVENT+0xff0000)
		c:RegisterEffect(e4)
	end
end
--puzzle
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)
Debug.SetAIName("Thief")
Debug.SetPlayerInfo(0,100,0,0)
Debug.SetPlayerInfo(1,10000,0,0)

--your mzone
local pc1=Debug.AddCard(33776734,0,0,LOCATION_MZONE,0,POS_FACEUP_ATTACK,true)
Debug.AddCard(4896788,0,0,LOCATION_MZONE,4,POS_FACEDOWN_ATTACK)
--your grave

--your hand
Debug.AddCard(40640057,0,0,LOCATION_HAND,0,POS_FACEDOWN)
local pc4=Debug.AddCard(135598,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(21250202,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(67754901,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(59368956,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(55144522,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(55144522,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(55144522,0,0,LOCATION_HAND,0,POS_FACEDOWN)
--your extra
local c=Debug.AddCard(57116033,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
	--what are you looking
	local e6=Effect.CreateEffect(c)
	e6:SetType(EFFECT_TYPE_FIELD)
	e6:SetCode(EFFECT_SPSUMMON_PROC)
	e6:SetRange(LOCATION_EXTRA)
	e6:SetProperty(EFFECT_FLAG_UNCOPYABLE+EFFECT_FLAG_SPSUM_PARAM+EFFECT_FLAG_SET_AVAILABLE)
	e6:SetTargetRange(POS_FACEUP_ATTACK,0)
	e6:SetCondition(f3)
	e6:SetOperation(f4)
	c:RegisterEffect(e6)
--you deck
Debug.AddCard(2830693,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(2830693,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(2830693,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(2830693,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(2830693,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(2830693,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(2830693,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(2830693,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(2830693,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(2830693,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(2830693,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(2830693,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(2830693,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(2830693,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(2830693,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(33245030,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(2830693,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(20065322,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(38491199,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(79571449,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(72892473,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(46613515,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(50185950,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(78355370,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(74519184,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(98585345,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(35112613,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(55063751,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(35848254,0,0,LOCATION_DECK,0,POS_FACEDOWN)
--opponent side
--opponent szone
local pc2=Debug.AddCard(45986603,1,1,LOCATION_SZONE,0,POS_FACEUP)
--opponent mzone
local pc3=Debug.AddCard(87774234,1,1,LOCATION_MZONE,0,POS_FACEUP_ATTACK,true)
--opponet hand
Debug.AddCard(2830693,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(33245030,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(33776734,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(38491199,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(40640057,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(46613515,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(50185950,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(57116033,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(78355370,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(98585345,1,1,LOCATION_HAND,0,POS_FACEDOWN)
--opponent grave
Debug.AddCard(3659803,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(3659803,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(3659803,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(3659803,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(3659803,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
--opponent deck
Debug.AddCard(13317419,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(13317419,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(13317419,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(13317419,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(13317419,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(13317419,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(13317419,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(13317419,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(13317419,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(13317419,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(13317419,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(13317419,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(13317419,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(13317419,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(13317419,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(13317419,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(13317419,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(13317419,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(13317419,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(13317419,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(13317419,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(13317419,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.ReloadFieldEnd()
aux.BeginPuzzle()
--the equips
Debug.PreEquip(pc2,pc1)
--some effect
local e1=Effect.CreateEffect(pc3)
	e1:SetType(EFFECT_TYPE_SINGLE)
	e1:SetCode(EFFECT_INDESTRUCTABLE)
	e1:SetValue(1)
pc3:RegisterEffect(e1)
local e2=e1:Clone()
	e2:SetCode(EFFECT_UPDATE_ATTACK)
	e2:SetValue(function (e) return Duel.GetMatchingGroupCount(Card.GetControler,e:GetHandlerPlayer(),LOCATION_MZONE,LOCATION_GRAVE,nil)*100 end)
pc3:RegisterEffect(e2)
local e3=Effect.CreateEffect(pc4)
	e3:SetType(EFFECT_TYPE_TRIGGER_F+EFFECT_TYPE_SINGLE)
	e3:SetCode(EVENT_SUMMON_SUCCESS)
	e3:SetOperation(f1)
pc4:RegisterEffect(e3)
local e4=Effect.GlobalEffect()
	e4:SetType(EFFECT_TYPE_CONTINUOUS+EFFECT_TYPE_FIELD)
	e4:SetCode(EVENT_SUMMON_SUCCESS)
	e4:SetCountLimit(1)
	e4:SetOperation(f2)
Duel.RegisterEffect(e4,0)
local e5=e4:Clone()
	e5:SetCode(EVENT_SPSUMMON_SUCCESS)
Duel.RegisterEffect(e5,0)
--text
Debug.ShowHint("Try can't beat the force of evil!")
Debug.ShowHint("Advice: Do not normal summon the Key Mouse. You are allergic to it.")
Debug.ShowHint("This is not a normal puzzle, but setting a key for the victory.")