--[[message
The good old-fashioned Gallis loop that got Birdman limited
]]
Debug.SetAIName("AlphaKretin")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,3)

Debug.SetPlayerInfo(0,5200,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

--AI's field
local c=Debug.AddCard(30915572,0,0,LOCATION_MZONE,0,POS_FACEUP_ATTACK) --Gallis, player-owned

--AI's Extra Deck

--AI’s GY

--Player's Extra Deck
Debug.AddCard(82956492,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --D'Arc
Debug.AddCard(11502550,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Rata's bane
Debug.AddCard(11502550,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Rata's bane

--Player's Hand
Debug.AddCard(64034255,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Birdman
Debug.AddCard(11609969,0,0,LOCATION_HAND,0,POS_FACEDOWN) --D/D Kepler
Debug.AddCard(35255456,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Miracle Contact

--Player's Field
Debug.AddCard(54959865,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --Air don't-use-this-bird
Debug.AddCard(59919307,0,0,LOCATION_SZONE,1,POS_FACEDOWN) --NuCotH
Debug.AddCard(31036355,0,0,LOCATION_SZONE,2,POS_FACEDOWN) --Creature Swap
Debug.AddCard(63703130,0,0,LOCATION_SZONE,3,POS_FACEDOWN) --Oversoul

--Player's Main Deck
Debug.AddCard(89943723,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Noos
Debug.AddCard(19302550,0,0,LOCATION_DECK,0,POS_FACEDOWN) --D/D Newton
Debug.AddCard(46372010,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Contract w/ Gate

--Player's GY
Debug.AddCard(73360025,0,0,LOCATION_GRAVE,0,POS_FACEDOWN) --Contract w/ Swamp
Debug.AddCard(80925836,0,0,LOCATION_GRAVE,0,POS_FACEUP) --Koaki Meiru Doom

Debug.ReloadFieldEnd()
Debug.ShowHint("Take back your Gallis!")
--Below makes it a one turn puzzle.
--aux.BeginPuzzle()

--Thanks to Senpaizuri for the below... Changing control in puzzles sure is a headache
--Pre-draw
local e1=Effect.CreateEffect(c)
e1:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
e1:SetCode(EVENT_PREDRAW)
e1:SetProperty(EFFECT_FLAG_NO_TURN_RESET)
e1:SetCountLimit(1,57005)
e1:SetOperation(function(e,tp,eg,ep,ev,re,r,rp)
	Duel.GetControl(c,1-tp)
end)
Duel.RegisterEffect(e1,0)
--Puzzle Start
local e1=Effect.GlobalEffect()
e1:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
e1:SetCode(EVENT_TURN_END)
e1:SetCountLimit(1)
e1:SetOperation(Auxiliary.PuzzleOp)
Duel.RegisterEffect(e1,0)

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
--Debug.PreEquip(e1,c1)
--Debug.PreSummon(c,type)
--Debug.AddCard()
--aux.BeginPuzzle()