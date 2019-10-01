--[[message
Find a way to attack for game through a board of 3200 ATK behemoths!
]]
Debug.SetAIName("AlphaKretin")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,3)

Debug.SetPlayerInfo(0,1,0,0)
Debug.SetPlayerInfo(1,500,0,0)

--AI's field. All 100 less attack than Shooting Star
Debug.AddCard(41517789,1,1,LOCATION_MZONE,0,POS_FACEUP_ATTACK) --Star Eater
Debug.AddCard(66729231,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK) --Gishki Zielgigas
local skull=Debug.AddCard(45349196,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --Archfiend Black Skull Dragon
local dora=Debug.AddCard(49032236,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK) --Number 81: Superdreadnought Rail Cannon Super Dora
Debug.AddCard(94092230,1,1,LOCATION_MZONE,4,POS_FACEUP_ATTACK) --Steelswarm Hercules
Debug.AddCard(00269012,1,1,LOCATION_SZONE,5,POS_FACEUP) --Mound of the Bound Creator, protection from Zaborg
Debug.AddCard(45103815,1,1,LOCATION_PZONE,1,POS_FACEUP) --Risebell, flavor for L10 B Skull
Debug.AddCard(07153114,1,1,LOCATION_SZONE,0,POS_FACEUP) --Field barrier, in case player summons break sword
local ab=Debug.AddCard(94253609,1,1,LOCATION_SZONE,1,POS_FACEUP) --Elemental absorber, CDD can't attack


--AI's grave/banish. Appropriate materials for the above, for flavor
Debug.AddCard(28183605,1,1,LOCATION_GRAVE,0,POS_FACEUP) -- Star eater materials, laddering dragunities
Debug.AddCard(59755122,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(21249921,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(50954680,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(05780210,1,1,LOCATION_GRAVE,0,POS_FACEUP) -- until here
Debug.AddCard(70781052,1,1,LOCATION_GRAVE,0,POS_FACEUP) -- archfiend materials
Debug.AddCard(74677422,1,1,LOCATION_GRAVE,0,POS_FACEUP) 
Debug.AddCard(06172122,1,1,LOCATION_GRAVE,0,POS_FACEUP) -- until here
Debug.AddCard(29888389,1,1,LOCATION_GRAVE,0,POS_FACEUP) -- Zielgigas materials
Debug.AddCard(46159582,1,1,LOCATION_GRAVE,0,POS_FACEUP) -- until here
Debug.AddCard(54338958,1,1,LOCATION_GRAVE,0,POS_FACEUP) -- Hercules tributes
Debug.AddCard(54338958,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(54338958,1,1,LOCATION_GRAVE,0,POS_FACEUP) -- until here
Debug.AddCard(24919805,1,1,LOCATION_GRAVE,0,POS_FACEUP) --Detached Xyz Material for Dora
Debug.AddCard(51126152,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(76136345,1,1,LOCATION_GRAVE,0,POS_FACEUP) --Revolving Switchyard, flavor for how AI got Dora
Debug.AddCard(65192027,1,1,LOCATION_REMOVED,0,POS_FACEUP) --DAD, gid's least fav DARK for absorber


--AI's hand
Debug.AddCard(20450925,1,1,LOCATION_HAND,0,POS_FACEDOWN) --AI will discard hanewata to not take damage from gallis

--Player's Extra Deck
Debug.AddCard(18967507,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Cyberdarkness Dragon, will equip Quasar
Debug.AddCard(35952884,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Quasar, will be removed from CDD to summon SSD
Debug.AddCard(24696097,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Shooting Star, will be summoned by Quasar to attack
Debug.AddCard(83531441,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Dante, mill cyberdarks
Debug.AddCard(40418351,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Cyberdark Dragon, mill to make Darkness 
Debug.AddCard(40418351,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) 
Debug.AddCard(99267150,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --red herrings that Zaborg needs to mill
Debug.AddCard(25586143,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) 
Debug.AddCard(28912357,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) 
Debug.AddCard(43378048,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --armityle, gid's least fav
Debug.AddCard(32752319,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) 

--Player's Hand
Debug.AddCard(48686504,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Lonefire Blossom, starts off predaplant combo
Debug.AddCard(30915572,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Gallis the Star Beast, mill a Cyberdark and tribute fodder for Zaborg
Debug.AddCard(87602890,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Zaborg, mills ED incl. Quasar

--Player's Field
Debug.AddCard(52112003,0,0,LOCATION_SZONE,0,POS_FACEDOWN) --Card Advance, allows summoning of zaborg
Debug.AddCard(01033312,0,0,LOCATION_SZONE,1,POS_FACEDOWN) --Painful Decision, gets metalfoe

--Player's Main Deck
Debug.AddCard(78868119,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Deep Sea Diva, 1 of 5 Tuners - craz's fav
Debug.AddCard(33420078,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Plaguespreader Zombie, 1 of 5 Tuners - steel's fav
Debug.AddCard(00487395,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Water Spirit, 1 of 5 Tuners - zuri's fav
Debug.AddCard(33327029,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Metalfoes Counter, search for Steel
Debug.AddCard(41230939,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Cyberdarks to make CDD, intentonally 3/5
Debug.AddCard(93369354,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Fishborg Blaster, 1 of 5 Tuners - mich's fav
Debug.AddCard(77625948,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Cyberdarks to make CDD
Debug.AddCard(49959355,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Uni-Zombie, 1 of 5 Tuners - my fav
Debug.AddCard(03019642,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Cyberdarks to make CDD
Debug.AddCard(48686504,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Lonefire Blossom, hoping to find a way to make you need to keep these else you mill tuners
Debug.AddCard(48686504,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Lonefire Blossom, hoping to find a way to make you need to keep these else you mill tuners
Debug.AddCard(61677004,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Predaplants to search Overload
Debug.AddCard(35272499,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Predaplants to search Overload
Debug.AddCard(03659803,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Overload Fusion, search with Predas to make CD
Debug.AddCard(81846636,0,0,LOCATION_DECK,0,POS_FACEDOWN) --GK Lazuli, recover steel to discard for preda
Debug.AddCard(60473572,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Need 2 for Decision
Debug.AddCard(60473572,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Metalfoes Steelren, pops Quasar

--make Dora immune
function efilter(e,re)
    return e:GetHandler()~=re:GetOwner()
end
local e1=Effect.CreateEffect(dora)
e1:SetType(EFFECT_TYPE_SINGLE)
e1:SetCode(EFFECT_IMMUNE_EFFECT)
e1:SetValue(efilter)
e1:SetReset(RESET_EVENT+0x1fe0000+RESET_PHASE+PHASE_END)
dora:RegisterEffect(e1)

--make Skull L10 from Risebell to be protected by Mound
local e2=Effect.CreateEffect(skull)
e2:SetType(EFFECT_TYPE_SINGLE)
e2:SetCode(EFFECT_UPDATE_LEVEL)
e2:SetValue(1)
e2:SetReset(RESET_EVENT+0x1fe0000)
skull:RegisterEffect(e2)

--DARK can't attack
function atktarget(e,c)
	return c:IsAttribute(ATTRIBUTE_DARK)
end
local e2=Effect.CreateEffect(ab)
e2:SetType(EFFECT_TYPE_FIELD)
e2:SetCode(EFFECT_CANNOT_ATTACK)
e2:SetRange(LOCATION_SZONE)
e2:SetTargetRange(0,LOCATION_MZONE)
e2:SetTarget(atktarget)
ab:RegisterEffect(e2)


Debug.ReloadFieldEnd()
Debug.ShowHint("Attack for game!")
Debug.ShowHint("By the way, Dora's immune.")
--Below makes it a one turn puzzle.
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
--Debug.PreEquip(e1,c1)
--Debug.PreSummon(c,type)
--Debug.AddCard()
--aux.BeginPuzzle()