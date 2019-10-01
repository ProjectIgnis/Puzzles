--Nightbot Cannot Win Puzzle
--Made by Gideon. Shad helped
--Saimaster1's idea
Debug.SetAIName("Nightbot")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)
Debug.SetPlayerInfo(0,1,0,0)
Debug.SetPlayerInfo(1,90000,0,0)

--Ops grave and stuff for NAA
--God in grave to "act as discard" >The egyptians did 9/11
Debug.AddCard(10000040,1,1,LOCATION_GRAVE,0,POS_FACEUP)
--Non Aggression Area
local trap = Debug.AddCard(76848240,1,1,LOCATION_GRAVE,0,POS_FACEUP)

--Opps Hand
--Sparks
Debug.AddCard(76103675,1,1,LOCATION_HAND,0,POS_FACEDOWN)
--Swift ScareCrows
Debug.AddCard(18964575,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(18964575,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(18964575,1,1,LOCATION_HAND,0,POS_FACEDOWN)
--Lefty is the most sinful one
Debug.AddCard(07902349,1,1,LOCATION_HAND,0,POS_FACEDOWN)
--Righty tighty
Debug.AddCard(70903634,1,1,LOCATION_HAND,0,POS_FACEDOWN)
--Put your left foot out
Debug.AddCard(44519536,1,1,LOCATION_HAND,0,POS_FACEDOWN)
--And your right one in
Debug.AddCard(08124921,1,1,LOCATION_HAND,0,POS_FACEDOWN)
--Head of it all in deck
Debug.AddCard(33396948,1,1,LOCATION_DECK,0,POS_FACEDOWN)
--Opps field
--Amplifier E to Jinzo
local s1 = Debug.AddCard(303660,1,1,LOCATION_SZONE,1,POS_FACEUP)
--Waboku
Debug.AddCard(12607053,1,1,LOCATION_SZONE,0,POS_FACEDOWN)
--Chain Energy
Debug.AddCard(79323590,1,1,LOCATION_SZONE,2,POS_FACEUP)
--Trumps Iron Wall
Debug.AddCard(30459350,1,1,LOCATION_SZONE,3,POS_FACEUP)
--Mind Drain
Debug.AddCard(68937720,1,1,LOCATION_SZONE,4,POS_FACEUP)
--Seal of Orichalcos
Debug.AddCard(48179391,1,1,LOCATION_SZONE,5,POS_FACEUP)
--Spell Canceller
Debug.AddCard(84636823,1,1,LOCATION_MZONE,0,POS_FACEUP_ATTACK)
--Jinzo
local m1 = Debug.AddCard(77585513,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
--Archlord Kristya
Debug.AddCard(59509952,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
--Majesty's Fiend
Debug.AddCard(33746252,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)
--The Wicked Avatar
Debug.AddCard(21208154,1,1,LOCATION_MZONE,4,POS_FACEUP_ATTACK)

--Players Field
--Mokey Mokey Dude
Debug.AddCard(27288416,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK)
--Shapesnatch is op
Debug.AddCard(4035199,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
--Self-Destruct button overlayed with Shapesnatch
Debug.AddCard(57585212,0,0,LOCATION_MZONE,2,POS_FACEUP)
--MST Overlayed with Snapesnatch
Debug.AddCard(05318639,0,0,LOCATION_MZONE,2,POS_FACEUP)
--Equalize your life
Debug.AddCard(17178486,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
--Mokey Mokey is going to slap a ->Play nice! [warning]
Debug.AddCard(01965724,0,0,LOCATION_SZONE,4,POS_FACEUP)
--Fog up nightbots glasses
Debug.AddCard(25542642,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
--Elemental dragonlords op
Debug.AddCard(61411502,0,0,LOCATION_SZONE,0,POS_FACEDOWN)

--Hand
--Ra in hand and cannot use it
Debug.AddCard(10000080,0,0,LOCATION_HAND,0,POS_FACEDOWN)
--Gameciel. Kaiju won't save you here
Debug.AddCard(55063751,0,0,LOCATION_HAND,0,POS_FACEDOWN)
--Lava doesn't melt steel beams of tears
Debug.AddCard(00102380,0,0,LOCATION_HAND,0,POS_FACEDOWN)
--Dark hole nothing >Zorc did nothing wrong
Debug.AddCard(53129443,0,0,LOCATION_HAND,0,POS_FACEDOWN)
--Raigeki is weak, spark is better
Debug.AddCard(12580477,0,0,LOCATION_HAND,0,POS_FACEDOWN)
--Harpie's can't dust this
Debug.AddCard(18144506,0,0,LOCATION_HAND,0,POS_FACEDOWN)
--Heavy storm isn't windy enough
Debug.AddCard(19613556,0,0,LOCATION_HAND,0,POS_FACEDOWN)
--Can't change of heart something that doesn't have a soul
Debug.AddCard(04031928,0,0,LOCATION_HAND,0,POS_FACEDOWN)
--2 pots
Debug.AddCard(55144522,0,0,LOCATION_HAND,0,POS_FACEDOWN)
--2 Greedy
Debug.AddCard(55144522,0,0,LOCATION_HAND,0,POS_FACEDOWN)
--The answer to immortality and nightbot censors it. Says ->Play nice! [warning]
Debug.AddCard(83764718,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Players Deck full of exodia
--Head down
Debug.AddCard(33396948,0,0,LOCATION_DECK,0,POS_FACEDOWN)
--Still the most sinful one
Debug.AddCard(07902349,0,0,LOCATION_DECK,0,POS_FACEDOWN)
--Righty too tighty
Debug.AddCard(70903634,0,0,LOCATION_DECK,0,POS_FACEDOWN)
--Put your left foot in
Debug.AddCard(44519536,0,0,LOCATION_DECK,0,POS_FACEDOWN)
--And your right foot out
Debug.AddCard(08124921,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Players grave
--The galaxy can't save you from nightbot
Debug.AddCard(05133471,0,0,LOCATION_GRAVE,0,POS_FACEUP)
--Can't breakthrough nightbots filters
Debug.AddCard(78474168,0,0,LOCATION_GRAVE,0,POS_FACEUP)
--You can become bulimic!! (damage diet)
Debug.AddCard(95448692,0,0,LOCATION_GRAVE,0,POS_FACEUP)
--Can't sub a fusion for a sandwitch
Debug.AddCard(74335036,0,0,LOCATION_GRAVE,0,POS_FACEUP)
--Change her to A/D all night.
Debug.AddCard(96146814,0,0,LOCATION_GRAVE,0,POS_FACEUP)
--Interception!!!!
Debug.AddCard(19113101,0,0,LOCATION_GRAVE,0,POS_FACEUP)
--Hold my legs down
Debug.AddCard(70124586,0,0,LOCATION_GRAVE,0,POS_FACEUP)
--Quasimodo's more disabled cousin
Debug.AddCard(90411554,0,0,LOCATION_GRAVE,0,POS_FACEUP)
--Zapdoes?!
Debug.AddCard(89399912,0,0,LOCATION_GRAVE,0,POS_FACEUP)
--Articuno?!
Debug.AddCard(26400609,0,0,LOCATION_GRAVE,0,POS_FACEUP)
--Moltres?!
Debug.AddCard(53804307,0,0,LOCATION_GRAVE,0,POS_FACEUP)
--Blue-Eyes dead weight dragon
Debug.AddCard(23995346,0,0,LOCATION_GRAVE,0,POS_FACEUP)
--Pre-e something
Debug.PreEquip(s1,m1)
--Load Field
Debug.ReloadFieldEnd()
--Apply Non Aggression Area TY Shad
    e1=Effect.CreateEffect(trap)
    e1:SetType(EFFECT_TYPE_FIELD)
    e1:SetCode(EFFECT_CANNOT_SUMMON)
    e1:SetProperty(EFFECT_FLAG_PLAYER_TARGET)
    e1:SetTargetRange(0,1)
    e1:SetReset(RESET_PHASE+PHASE_END)
    Duel.RegisterEffect(e1,1)
    local e2=e1:Clone()
    e2:SetCode(EFFECT_CANNOT_MSET)
    Duel.RegisterEffect(e2,1)
    local e3=e1:Clone()
    e3:SetCode(EFFECT_CANNOT_SPECIAL_SUMMON)
    Duel.RegisterEffect(e3,1)

Debug.ShowHint("Win against Nightbot!")
Debug.ShowHint("Non Aggression Area is applyed. :D")
Debug.ShowHint("Play nice! [warning]")
--Debug.ShowHint("My ears! Please don't shout. [warning]")
--Debug.ShowHint("[BANNED]")
--Below makes it a one turn puzzle.
aux.BeginPuzzle()