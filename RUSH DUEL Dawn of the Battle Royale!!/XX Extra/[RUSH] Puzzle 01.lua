Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Main Deck (yours)
Debug.AddCard(160302008,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160001000,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160001002,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160001002,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160001001,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160001001,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Spell & Trap Zones (yours)
Debug.AddCard(160001043,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(160001037,0,0,LOCATION_SZONE,3,POS_FACEDOWN)

--Main Deck (opponent's)
Debug.AddCard(160001002,1,1,LOCATION_DECK,0,POS_FACEDOWN)

--Monster Zones (opponent's)
local c=Debug.AddCard(160001029,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE)

--Yamiruler the Dark Delayer's "cannot tribute summon" effect
local e1=Effect.CreateEffect(c)
e1:SetProperty(EFFECT_FLAG_PLAYER_TARGET)
e1:SetType(EFFECT_TYPE_FIELD)
e1:SetRange(LOCATION_MZONE)
e1:SetCode(EFFECT_CANNOT_SUMMON)
e1:SetTarget(function(e,c,tp,sumtp)
	return sumtp&SUMMON_TYPE_TRIBUTE==SUMMON_TYPE_TRIBUTE and c:IsLevelAbove(7)
end)
e1:SetReset(RESET_PHASE+PHASE_END+RESET_OPPO_TURN,1)
e1:SetTargetRange(1,1)
c:RegisterEffect(e1)
local e2=e1:Clone()
e2:SetDescription(aux.Stringid(160001029,1))
e2:SetProperty(EFFECT_FLAG_CLIENT_HINT+EFFECT_FLAG_PLAYER_TARGET)
e2:SetCode(EFFECT_CANNOT_MSET)
c:RegisterEffect(e2)
c:AddNoTributeCheck(160001029,1,1,1)

Debug.ReloadFieldEnd()
Duel.SetLP(0,1100)
Duel.SetLP(1,500)
aux.BeginPuzzle()
