--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! World Championship 2008"


	Your Starting LP: 11200
	Opponent's Starting LP: 12600
	Complexity: 5/10.
	Objective: Win this turn.
]]
Debug.SetAIName("WCS 2008")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)

Debug.SetPlayerInfo(0,11200,0,0)
Debug.SetPlayerInfo(1,12600,0,0)

Debug.AddCard(95600067,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(95600067,1,1,LOCATION_MZONE,1,POS_FACEUP_DEFENSE)
Debug.AddCard(89631139,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)

local token=Debug.AddCard(73915052,0,0,LOCATION_MZONE,2,POS_FACEUP_DEFENSE)
local e1=Effect.CreateEffect(token)
e1:SetType(EFFECT_TYPE_SINGLE)
e1:SetCode(EFFECT_UNRELEASABLE_SUM)
e1:SetProperty(EFFECT_FLAG_CANNOT_DISABLE)
e1:SetValue(1)
e1:SetReset(RESET_EVENT+RESETS_STANDARD)
token:RegisterEffect(e1,true)

Debug.AddCard(48783998,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(48783998,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(48783998,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(18036057,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(18036057,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(83968380,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(83968380,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(83968380,0,0,LOCATION_DECK,0,POS_FACEDOWN)

Debug.AddCard(28890974,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(80551130,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(68073522,0,0,LOCATION_SZONE,3,POS_FACEUP)
Debug.AddCard(56433456,0,0,LOCATION_SZONE,5,POS_FACEUP)

Debug.AddCard(91345518,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(91345518,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(91345518,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(91123920,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(91123920,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(91123920,0,0,LOCATION_GRAVE,0,POS_FACEUP)

Debug.AddCard(12510878,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(77527210,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(18036057,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(14391920,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(12247206,0,0,LOCATION_HAND,0,POS_FACEDOWN)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()


--[[
Solution:
- Change Lamb Token to attack position.
- Summon Soul of Purity and Light by removing 1 Mars and 1 Saturn in the graveyard.
- Activate Miraculous Descent (non-chained) and target Mars.
- Chain Inferno Reckless Summon and select both Mars.
- Tribute Soul of Purity and Light for Airknight Parshath.
- Enter Battle Phase.
- Lamb Token attack Blue-Eyes White Dragon.
- Chain Inferno Tempest.
- Airknight Parshath attack Crystal Beast Topaz Tiger.
- Activate Celestial Transformation on Neo-Parshath, the Sky Paladin.
- Neo-Parshath, the Sky Paladin attacks Crystal Beast Topaz Tiger.
- Mars attack Blue-Eyes White Dragon, then the last two Mars attack directly.

]]