--POJOOOOOOOOOOOOOO
Debug.SetAIName("Annoying Scrub")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,3700,0,0)

Debug.AddCard(15734813,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE)
Debug.AddCard(79323590,1,1,LOCATION_SZONE,1,POS_FACEUP)
Debug.AddCard(82003859,1,1,LOCATION_SZONE,3,POS_FACEUP)

Debug.AddCard(511003023,0,0,LOCATION_SZONE,2,POS_FACEUP)

Debug.AddCard(40619825,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(69140098,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(70828912,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(511003012,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(80161395,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(71453557,0,0,LOCATION_HAND,0,POS_FACEDOWN)

Debug.AddCard(73752131,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(40619825,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(79571449,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(55144522,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(31553716,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(511002631,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)

local dk5=Debug.AddCard(69140098,0,0,LOCATION_DECK,0,POS_FACEDOWN)
local dk4=Debug.AddCard(77585513,0,0,LOCATION_DECK,0,POS_FACEDOWN)
local dk3=Debug.AddCard(19612721,0,0,LOCATION_DECK,0,POS_FACEDOWN)
local dk2=Debug.AddCard(16222645,0,0,LOCATION_DECK,0,POS_FACEDOWN)
local dk1=Debug.AddCard(18036057,0,0,LOCATION_DECK,0,POS_FACEDOWN)

Debug.AddCard(89631139,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(32240937,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(95841282,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(82003859,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(65287621,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)


Debug.ReloadFieldEnd()
Debug.ShowHint("You can change the order of your Deck by activating a card in the Deck. You can only do this once.")
aux.BeginPuzzle()

--LOCATION_DECK
--LOCATION_SZONE
--LOCATION_GRAVE
--LOCATION_HAND
--LOCATION_MZONE
--LOCATION_EXTRA
--LOCATION_REMOVED
--POS_FACEDOWN
--POS_FACEDOWN_DEFENSE
--POS_FACEUP
--POS_FACEUP_DEFENSE
--POS_FACEUP_ATTACK
--Debug.PreSummon(Card c, int sum_type[, int sum_location=0])
--Debug.PreEquip(Card equip_card, Card target)
--Debug.PreSetTarget(Card c, Card target)
--Debug.PreAddCounter(Card c, int counter_type, int count)




	--Activate
local e1=Effect.CreateEffect(dk1)
e1:SetCountLimit(1,2005)
e1:SetType(EFFECT_TYPE_IGNITION)
e1:SetRange(LOCATION_DECK)
e1:SetTarget(function(e,tp,eg,ep,ev,re,r,rp,chk)
	if chk==0 then return true end
	Duel.SetChainLimit(aux.FALSE)
end)
e1:SetOperation(function(e,tp,eg,ep,ev,re,r,rp)
	local dks=Duel.GetFieldGroupCount(tp,LOCATION_DECK,0)
	Duel.SortDecktop(tp,tp,dks)
end)
dk1:RegisterEffect(e1)

	--Activate
local e1=Effect.CreateEffect(dk2)
e1:SetCountLimit(1,2005)
e1:SetType(EFFECT_TYPE_IGNITION)
e1:SetRange(LOCATION_DECK)
e1:SetTarget(function(e,tp,eg,ep,ev,re,r,rp,chk)
	if chk==0 then return true end
	Duel.SetChainLimit(aux.FALSE)
end)
e1:SetOperation(function(e,tp,eg,ep,ev,re,r,rp)
	local dks=Duel.GetFieldGroupCount(tp,LOCATION_DECK,0)
	Duel.SortDecktop(tp,tp,dks)
end)
dk2:RegisterEffect(e1)

	--Activate
local e1=Effect.CreateEffect(dk3)
e1:SetCountLimit(1,2005)
e1:SetType(EFFECT_TYPE_IGNITION)
e1:SetRange(LOCATION_DECK)
e1:SetTarget(function(e,tp,eg,ep,ev,re,r,rp,chk)
	if chk==0 then return true end
	Duel.SetChainLimit(aux.FALSE)
end)
e1:SetOperation(function(e,tp,eg,ep,ev,re,r,rp)
	local dks=Duel.GetFieldGroupCount(tp,LOCATION_DECK,0)
	Duel.SortDecktop(tp,tp,dks)
end)
dk3:RegisterEffect(e1)

	--Activate
local e1=Effect.CreateEffect(dk4)
e1:SetCountLimit(1,2005)
e1:SetType(EFFECT_TYPE_IGNITION)
e1:SetRange(LOCATION_DECK)
e1:SetTarget(function(e,tp,eg,ep,ev,re,r,rp,chk)
	if chk==0 then return true end
	Duel.SetChainLimit(aux.FALSE)
end)
e1:SetOperation(function(e,tp,eg,ep,ev,re,r,rp)
	local dks=Duel.GetFieldGroupCount(tp,LOCATION_DECK,0)
	Duel.SortDecktop(tp,tp,dks)
end)
dk4:RegisterEffect(e1)

	--Activate
local e1=Effect.CreateEffect(dk5)
e1:SetCountLimit(1,2005)
e1:SetType(EFFECT_TYPE_IGNITION)
e1:SetRange(LOCATION_DECK)
e1:SetTarget(function(e,tp,eg,ep,ev,re,r,rp,chk)
	if chk==0 then return true end
	Duel.SetChainLimit(aux.FALSE)
end)
e1:SetOperation(function(e,tp,eg,ep,ev,re,r,rp)
	local dks=Duel.GetFieldGroupCount(tp,LOCATION_DECK,0)
	Duel.SortDecktop(tp,tp,dks)
end)
dk5:RegisterEffect(e1)
