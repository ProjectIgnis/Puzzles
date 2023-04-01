--[[message
A special puzzle where you can activate ABC dragon buster tag effect in your turn!!

Creator: Banyspy
Your Starting LP: 8000
Opponent's Starting LP: 25000
Complexity: 9/10.

Objective: Defeat opponent in this turn
Note:
1. This puzzle is set to Master rule 5
2. You can activate ABC Dragon buster tag effect in your turn
]]

--ABC tag in your turn
Debug.SetAIName("ABC SPAM")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_PSEUDO_SHUFFLE+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,25000,0,0)

--function that use to make ABC dragon buster in this puzzle can activate tag effect in owner turn
function ABC(c)
	local effs={c:GetCardEffect()}--Get all effect
		for _,v in ipairs(effs) do--loop to check all effect
			if v:GetDescription()==aux.Stringid(1561110,1) then--ABC Special summon effect, differentiate from other effect by description
				local e1=v:Clone()--Clone the summon effect
				e1:SetCondition(aux.TRUE)--change condition to TRUE, so you can activate it anytime
				c:RegisterEffect(e1)--Register new effect to the card
			end
		end
end

Debug.AddCard(66399653,0,0,LOCATION_HAND,0,POS_FACEUP) -- Union hanger

--Deck
for i=1,3 do Debug.AddCard(03405259,0,0,LOCATION_DECK,0,POS_FACEDOWN) end -- C - crush wyvern
for i=1,3 do Debug.AddCard(77411244,0,0,LOCATION_DECK,0,POS_FACEDOWN) end -- B - buster drake
for i=1,3 do Debug.AddCard(30012506,0,0,LOCATION_DECK,0,POS_FACEDOWN) end -- A - assault core
Debug.AddCard(99249638,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- union driver
for i=1,5 do Debug.AddCard(10813327,0,0,LOCATION_DECK,0,POS_FACEDOWN) end -- waking the draon (filler card)

--Extra deck
Debug.AddCard(22862454,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) -- proxy dragon
Debug.AddCard(40216089,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) -- platinum gadget
Debug.AddCard(72529749,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) -- Trisbaena
Debug.AddCard(85289965,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) -- Borrelsword
Debug.AddCard(85289965,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) -- Borrelsword
Debug.AddCard(00581014,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) -- Daigusto emerald
Debug.AddCard(73289035,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) -- Bujintei tsukuyomi
Debug.AddCard(88021907,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) -- Mathmeth laplacian
Debug.AddCard(95169481,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) -- Diamond dire wolf
for i=1,3 do ABC(Debug.AddCard(01561110,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)) end -- abc dragon buster

--Opponent hand
Debug.AddCard(18964575,1,1,LOCATION_HAND,0,POS_FACEUP) -- scrap scarecrow

--Opponent field
for i=0,4 do Debug.AddCard(44095762,1,1,LOCATION_SZONE,i,POS_FACEDOWN) end -- mirror force
for i=0,4 do Debug.AddCard(31305911,1,1,LOCATION_MZONE,i,POS_FACEUP_DEFENSE) end -- marshmallon

    --load field and information
Debug.ReloadFieldEnd()
Debug.ShowHint[[In this puzzle you will being able
to active ABC-dragon buster tag effect
even in your turn!!!]]

	--begin
local g1=Effect.GlobalEffect()
g1:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
g1:SetCode(EVENT_TURN_END)
g1:SetCountLimit(1)
g1:SetOperation(function() Duel.Win(1,0) end)
Duel.RegisterEffect(g1,0)
local g2=Effect.GlobalEffect()
g2:SetType(EFFECT_TYPE_FIELD)
g2:SetProperty(EFFECT_FLAG_PLAYER_TARGET)
g2:SetCode(EFFECT_SKIP_DP)
g2:SetTargetRange(1,0)
Duel.RegisterEffect(g2,0)
local g3=g2:Clone()
g3:SetCode(EFFECT_SKIP_SP)
Duel.RegisterEffect(g3,0)