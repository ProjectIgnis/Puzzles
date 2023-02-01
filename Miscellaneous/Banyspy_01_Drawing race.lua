--[[message
A puzzle where you have to draw your exodia pieces before your opponent does.

Creator: Banyspy
Your Starting LP: 8000
Opponent's Starting LP: 1
Complexity: 9/10.

Objective: Win by getting all exodia piece before opponent
Note:
1. This puzzle is set to Master rule 5
2. You can't enter battle phase
3. Don't try to deck out your opponent. You can't.
]]

--Drawing race
Debug.SetAIName("vs_Banyspy")
Debug.ReloadFieldBegin(DUEL_PSEUDO_SHUFFLE+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,1,0,0)

    --Player's hand
Debug.AddCard(67169062,0,0,LOCATION_HAND,0,POS_FACEUP) --Pot of avarice
Debug.AddCard(67169062,0,0,LOCATION_HAND,0,POS_FACEUP) --Pot of avarice
Debug.AddCard(01845204,0,0,LOCATION_HAND,0,POS_FACEUP) --Instant fusion

    --Player's mzone
Debug.AddCard(80532587,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK) --N'tss
Debug.AddCard(12948099,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true) --Cthugua
Debug.AddCard(34945480,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true) --Azathot

    --Player's S/T
Debug.AddCard(74335036,0,0,LOCATION_SZONE,1,POS_FACEDOWN) -- poly sub
Debug.AddCard(49033797,0,0,LOCATION_SZONE,2,POS_FACEDOWN) -- Forbidden Trapezohedron
Debug.AddCard(74335036,0,0,LOCATION_SZONE,3,POS_FACEDOWN) -- poly sub

	--Player's grave
Debug.AddCard(70913714,0,0,LOCATION_GRAVE,0,POS_FACEUP,true) --Hastorr
Debug.AddCard(17412721,0,0,LOCATION_GRAVE,0,POS_FACEUP,true) --Norden
Debug.AddCard(12948099,0,0,LOCATION_GRAVE,0,POS_FACEUP,true) --Cthugua

    --Player's deck
Debug.AddCard(33396948,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Exodia
Debug.AddCard(70903634,0,0,LOCATION_DECK,0,POS_FACEDOWN) --right arm
Debug.AddCard(07902349,0,0,LOCATION_DECK,0,POS_FACEDOWN) --left arm
Debug.AddCard(08124921,0,0,LOCATION_DECK,0,POS_FACEDOWN) --right leg
Debug.AddCard(44519536,0,0,LOCATION_DECK,0,POS_FACEDOWN) --left leg
for i=15,1,-1 do
    Debug.AddCard(66194206,0,0,LOCATION_DECK,0,POS_FACEDOWN) --lightsworn judgement
end

	--Player's Extra
Debug.AddCard(74997493,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --skulldread
Debug.AddCard(50277355,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --clothsheep
Debug.AddCard(30100551,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Exalted lightsworn
Debug.AddCard(34945480,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Azathot
Debug.AddCard(34945480,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Azathot
Debug.AddCard(08809344,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Nyarla
Debug.AddCard(08809344,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Nyarla
Debug.AddCard(70913714,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Hastorr
Debug.AddCard(70913714,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Hastorr
Debug.AddCard(12948099,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Cthugua
Debug.AddCard(12948099,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Cthugua
Debug.AddCard(80532587,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --N'tss
Debug.AddCard(80532587,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --N'tss
Debug.AddCard(17412721,0,0,LOCATION_EXTRA,0,POS_FACEDOWN,true) --Norden
Debug.AddCard(17412721,0,0,LOCATION_EXTRA,0,POS_FACEDOWN,true) --Norden

    --Ai's hand
Debug.AddCard(23434538,1,1,LOCATION_HAND,0,POS_FACEUP) --Maxx "c"
Debug.AddCard(27204311,1,1,LOCATION_HAND,0,POS_FACEUP) --Nibiru

    --Ai's S/T
Debug.AddCard(99188141,1,1,LOCATION_SZONE,4,POS_FACEDOWN) --huge revo
Debug.AddCard(99188141,1,1,LOCATION_SZONE,3,POS_FACEDOWN) --huge revo
for i=2,0,-1 do
    Debug.AddCard(48539234,1,1,LOCATION_SZONE,i,POS_FACEUP) --appropriate
end

	--Ai's deck
Debug.AddCard(33396948,1,1,LOCATION_DECK,0,POS_FACEDOWN) --Exodia
Debug.AddCard(70903634,1,1,LOCATION_DECK,0,POS_FACEDOWN) --right arm
Debug.AddCard(07902349,1,1,LOCATION_DECK,0,POS_FACEDOWN) --left arm
Debug.AddCard(08124921,1,1,LOCATION_DECK,0,POS_FACEDOWN) --right leg
Debug.AddCard(44519536,1,1,LOCATION_DECK,0,POS_FACEDOWN) --left leg
for i=30,1,-1 do
    Debug.AddCard(13140300,1,1,LOCATION_DECK,0,POS_FACEDOWN) --hieratic
end

    --load field and information
Debug.ReloadFieldEnd()
Debug.ShowHint[[*You can't enter battle phase*
*You can't even deck out opponent*]]

    --begin
local e1=Effect.GlobalEffect()
e1:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
e1:SetCode(EVENT_TURN_END)
e1:SetCountLimit(1)
e1:SetOperation(Auxiliary.PuzzleOp)
Duel.RegisterEffect(e1,0)
local e2=Effect.GlobalEffect()
e2:SetType(EFFECT_TYPE_FIELD)
e2:SetProperty(EFFECT_FLAG_PLAYER_TARGET)
e2:SetCode(EFFECT_SKIP_DP)
e2:SetTargetRange(1,0)
Duel.RegisterEffect(e2,0)
local e3=e2:Clone()
e3:SetCode(EFFECT_SKIP_BP)
Duel.RegisterEffect(e3,0)

local rule=Effect.GlobalEffect()
rule:SetType(EFFECT_TYPE_FIELD)
rule:SetProperty(EFFECT_FLAG_CANNOT_DISABLE+EFFECT_FLAG_UNCOPYABLE+EFFECT_FLAG_PLAYER_TARGET)
rule:SetCode(EFFECT_CANNOT_LOSE_DECK)
rule:SetTargetRange(0,1)
rule:SetValue(1)
Duel.RegisterEffect(rule,0)