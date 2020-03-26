--[[message
How much havoc can 1 Brilliant Fusion cause? Alternate combo

Your Starting LP: 1000
Opponent's Starting LP: 4300
Complexity: ?/10.

Objective: Win this turn.
Note: Puzzle set to use Master Rules 3
]]
Debug.SetAIName("AlphaKretin")
Debug.ReloadFieldBegin(DUEL_PSEUDO_SHUFFLE+DUEL_SIMPLE_AI+DUEL_ATTACK_FIRST_TURN,3)

Debug.SetPlayerInfo(0,1000,0,0)
Debug.SetPlayerInfo(1,4300,0,0)

--AI's field.
local c=Debug.AddCard(51814159,0,0,LOCATION_MZONE,0,POS_FACEUP_DEFENSE) --Nekroz of Vulture
Debug.AddCard(51788412,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --Jobbed to RR
Debug.AddCard(21648584,1,1,LOCATION_SZONE,2,POS_FACDOWN) --RRReady

--AI's Extra Deck

--AI’s GY

--Player's Extra Deck
Debug.AddCard(3113836,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --GK Seraph
Debug.AddCard(25862681,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --AFD
Debug.AddCard(2403771,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Power Tool
Debug.AddCard(83810690,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Wane
Debug.AddCard(64245689,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Meliae of the EARTH
Debug.AddCard(80117527,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Crazeye’s Rank-Down
Debug.AddCard(96157835,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Raidraptor Bum Falcon
Debug.AddCard(23603403,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Destroyer of Chaos Giant 

--Player's Hand
Debug.AddCard(7394770,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Brilliant
Debug.AddCard(91350799,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Cake Owl
Debug.AddCard(12980373,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Cake Cat
Debug.AddCard(41201386,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Rum Raid 

--Player's Field

--Player's Main Deck
Debug.AddCard(75782277,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Hunting Ground
Debug.AddCard(11066358,0,0,LOCATION_DECK,0,POS_FACEDOWN) --GalSerp
Debug.AddCard(81846636,0,0,LOCATION_DECK,0,POS_FACEDOWN) --GK Lazuli
Debug.AddCard(52404456,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Cake Postman
Debug.AddCard(14001430,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Cake Castle
Debug.AddCard(67441435,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Gulb
Debug.AddCard(90238142,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Harpie Channeler
Debug.AddCard(52040216,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Harpie Dargon
Debug.AddCard(9622164,0,0,LOCATION_DECK,0,POS_FACEDOWN) --DDR
Debug.AddCard(9622164,0,0,LOCATION_DECK,0,POS_FACEDOWN) --DDR
Debug.AddCard(9622164,0,0,LOCATION_DECK,0,POS_FACEDOWN) --DDR



--Player's GY

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in one turn!")
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
