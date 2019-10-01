--[[message
Inspired by https://www.youtube.com/watch?v=LyK79rCJGP0 by Gachineta Free Duel
]]
--https://www.youtube.com/watch?v=LyK79rCJGP0
Debug.SetAIName("meta_logical")
Debug.ReloadFieldBegin(DUEL_SIMPLE_AI,4)

Debug.SetPlayerInfo(0,6200,0,0)
Debug.SetPlayerInfo(1,9999999,0,0)


--Player's hand
Debug.AddCard(85138716,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Rescue Rabbit
Debug.AddCard(14289852,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Cat Zone
Debug.AddCard(62265044,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Freed Ravine
Debug.AddCard(911883,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Unexpected Dainomischus
Debug.AddCard(70368879,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Upstart 

--Player's deck
Debug.AddCard(29054481,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Mist Vanillaey
Debug.AddCard(94689206,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Broke, Dragon Ruler of LEGO
Debug.AddCard(54620698,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Gem-Knight Collosus
Debug.AddCard(54620698,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Gem-Knight Collosus
Debug.AddCard(19163116,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Gem-Knight Actually EARTH/Rock
Debug.AddCard(5560911,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Bathandelus' Big Attack
Debug.AddCard(73642296,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Ghost Belle & Worse than Ash
Debug.AddCard(79531196,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Gem-Melodious
Debug.AddCard(18654201,0,0,LOCATION_DECK,0,POS_FACEDOWN) --The new Ryu Okami
Debug.AddCard(95816395,0,0,LOCATION_DECK,0,POS_FACEDOWN) --This card can be searched by
Debug.AddCard(11021521,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Mannequin Cat
Debug.AddCard(14943837,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Bedris Dragon
Debug.AddCard(14258627,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Earth Plate the Gaia Giant

--Player's extra
Debug.AddCard(24484270,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Gem-Knight Parallel World
Debug.AddCard(19355597,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Gem-Lesbian
Debug.AddCard(19355597,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Gem-Lesbian
Debug.AddCard(3113836,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Gem-Knight Brilliant Engine
Debug.AddCard(8692301,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Gem-Knight Magellenica
Debug.AddCard(50588353,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Cryston OCGFiber
Debug.AddCard(49725936,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Bang Bang Bang Dragon
Debug.AddCard(49725936,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Bang Bang Bang Dragon
Debug.AddCard(89310929,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Self-Bounce Always Broke
Debug.AddCard(61665245,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Brexit Sorceress
Debug.AddCard(5043010,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Good news! She's dead!
Debug.AddCard(48995978,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --The Cowardly Lion

--AI's field
local c=Debug.AddCard(45467446,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --Dragon Spirit of P2W

--no damage
local e1=Effect.CreateEffect(c)
e1:SetType(EFFECT_TYPE_FIELD)
e1:SetCode(EFFECT_CHANGE_DAMAGE)
e1:SetProperty(EFFECT_FLAG_PLAYER_TARGET)
e1:SetTargetRange(1,0)
e1:SetValue(0)
Duel.RegisterEffect(e1,0)

--must attack
local e1=Effect.CreateEffect(c)
e1:SetType(EFFECT_TYPE_SINGLE)
e1:SetCode(EFFECT_MUST_ATTACK)
c:RegisterEffect(e1)

Debug.ShowHint("You have multiple turns to win, but can never deal damage, and your opponent can hurt you.")
Debug.ReloadFieldEnd()

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