--[[message
Puzzle that consist of multiple layer of defense mechanism that player has to figure how to breakthrough and OTK.
Play around Mystic Mind by control monster count. Be mindful of what need to be on the end board to pull off OTK.

Creator: Banyspy
Your Starting LP: 1000
Opponent's Starting LP: 40900
Complexity: 10/10.

Objective: Defeat opponent in this turn
Note:
1. This puzzle is set to Master rule 5
2. AI automatically activate any effect when possible. This is important.
3. Opponent's monster are treated as Special Summoned properly.
]]

--Absolute defense
Debug.SetAIName("Absolute Defense")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_PSEUDO_SHUFFLE+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,1000,0,0)
Debug.SetPlayerInfo(1,40900,0,0)

    --Player's deck
Debug.AddCard(87571563,0,0,LOCATION_DECK,0,POS_FACEDOWN) --world legacy guardragon
Debug.AddCard(74063034,0,0,LOCATION_DECK,0,POS_FACEDOWN) --invocation
Debug.AddCard(82321037,0,0,LOCATION_DECK,0,POS_FACEDOWN) --barasthos
Debug.AddCard(58400390,0,0,LOCATION_DECK,0,POS_FACEDOWN) --beckoned by world chalice
Debug.AddCard(61901281,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Collaspserpent
Debug.AddCard(96227613,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Supreme king gate zero
Debug.AddCard(38572779,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Miscellaneousaurus
Debug.AddCard(80727721,0,0,LOCATION_DECK,0,POS_FACEDOWN) --aeolo
Debug.AddCard(70828912,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Premature Burial
Debug.AddCard(70828912,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Premature Burial
Debug.AddCard(70828912,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Premature Burial

    --Player's monster zone
Debug.AddCard(63845230,0,0,LOCATION_MZONE,0,POS_FACEUP_ATTACK) --eater of millions
Debug.AddCard(59123937,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK) --D/D Vice Typhon
Debug.AddCard(21593977,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --Makyura the Destructor
Debug.AddCard(59123937,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK) --D/D Vice Typhon
Debug.AddCard(63845230,0,0,LOCATION_MZONE,4,POS_FACEUP_ATTACK) --eater of millions
local zero = Debug.AddCard(66403530,0,0,LOCATION_MZONE,5,POS_FACEUP_ATTACK,true) --zeroboros
Debug.PreSummon(zero,SUMMON_TYPE_LINK,LOCATION_EXTRA)

    --Player's extra deck 
Debug.AddCard(32559361,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Chaos Dyson sphere
Debug.AddCard(01992816,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Dyson sphere
Debug.AddCard(95685352,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --dark anthelion dragon
Debug.AddCard(06983839,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --tornado dragon
Debug.AddCard(82633039,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --castel
Debug.AddCard(01686814,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Ultimaya tzolkin
Debug.AddCard(52687916,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --trishula
Debug.AddCard(50954680,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --crystal wing
Debug.AddCard(02403771,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --power tool
Debug.AddCard(94677445,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Ib
Debug.AddCard(43387895,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --SK starving venom
Debug.AddCard(41209827,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --starving venom
Debug.AddCard(49513164,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Raidjin
Debug.AddCard(80532587,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --N'tss
Debug.AddCard(54757758,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --mudragon


    --Player's hand
Debug.AddCard(46606977,0,0,LOCATION_HAND,0,POS_FACEUP) --Nemeses Umbrella
Debug.AddCard(69610326,0,0,LOCATION_HAND,0,POS_FACEUP) --darkwurm
Debug.AddCard(14470845,0,0,LOCATION_HAND,0,POS_FACEUP) --ojama duo
Debug.AddCard(46652477,0,0,LOCATION_HAND,0,POS_FACEUP) --The transmigration Prophecy/shuffle 2 cards from GY
Debug.AddCard(25173686,0,0,LOCATION_HAND,0,POS_FACEUP) --Straight Flush
Debug.AddCard(48130397,0,0,LOCATION_HAND,0,POS_FACEUP) --super poly
Debug.AddCard(48130397,0,0,LOCATION_HAND,0,POS_FACEUP) --super poly
Debug.AddCard(98494543,0,0,LOCATION_HAND,0,POS_FACEUP) --Magical stone excavation
Debug.AddCard(94220427,0,0,LOCATION_HAND,0,POS_FACEUP) --rank-up-magic argent chaos force
Debug.AddCard(15381421,0,0,LOCATION_HAND,0,POS_FACEUP) --Starleige Seyfert
Debug.AddCard(53804307,0,0,LOCATION_HAND,0,POS_FACEUP) --Blaster Dragon Ruler
Debug.AddCard(64034255,0,0,LOCATION_HAND,0,POS_FACEUP) --genex birdman
Debug.AddCard(99234526,0,0,LOCATION_HAND,0,POS_FACEUP) --Wyverburster
Debug.AddCard(86120751,0,0,LOCATION_HAND,0,POS_FACEUP) --aleister
Debug.AddCard(21208154,0,0,LOCATION_HAND,0,POS_FACEUP) --wicked avatar

    --Player's S/T
Debug.AddCard(16306932,0,0,LOCATION_PZONE,0,POS_FACEUP) --odd-eyes revolution
local mop = Debug.AddCard(24845628,0,0,LOCATION_SZONE,1,POS_FACEUP) -- duster mop
Debug.AddCard(29762407,0,0,LOCATION_SZONE,2,POS_FACEUP) -- Temple of the kings
Debug.AddCard(34906152,0,0,LOCATION_SZONE,3,POS_FACEUP) -- Mass Driver
Debug.AddCard(13035077,0,0,LOCATION_SZONE,5,POS_FACEUP) -- dragonic diagram
Debug.PreEquip(mop,zero) -- Equip mop to Zeroboros

	--Player's GY
Debug.AddCard(16006416,0,0,LOCATION_GRAVE,0,POS_FACEUP) --D/D/D High King Genghis
Debug.AddCard(55878038,0,0,LOCATION_GRAVE,0,POS_FACEUP) --Chaos Dragon Levianeer
Debug.AddCard(44335251,0,0,LOCATION_GRAVE,0,POS_FACEUP) --oviraptor
Debug.AddCard(09742784,0,0,LOCATION_GRAVE,0,POS_FACEUP) --Jet Synchron
Debug.AddCard(09952083,0,0,LOCATION_GRAVE,0,POS_FACEUP) --chain summoning

    --Ai's hand
Debug.AddCard(25857246,1,1,LOCATION_HAND,0,POS_FACEUP) --nekroz valkyrus
Debug.AddCard(25857246,1,1,LOCATION_HAND,0,POS_FACEUP) --nekroz valkyrus

    --Ai's monster zone
Debug.PreSummon(Debug.AddCard(85991529,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK),SUMMON_TYPE_SPECIAL,LOCATION_EXTRA) --kozmo dark planet
Debug.PreSummon(Debug.AddCard(55410871,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK),SUMMON_TYPE_RITUAL,LOCATION_EXTRA) --Chaos max
    --Ai's GY
for i=1,5 do
    Debug.AddCard(85991529,1,1,LOCATION_GRAVE,0,POS_FACEUP) --kozmo dark planet
end
Debug.AddCard(25857246,1,1,LOCATION_GRAVE,0,POS_FACEUP) --nekroz valkyrus
Debug.AddCard(25857246,1,1,LOCATION_GRAVE,0,POS_FACEUP) --nekroz valkyrus
Debug.AddCard(25857246,1,1,LOCATION_GRAVE,0,POS_FACEUP) --nekroz valkyrus
Debug.AddCard(25669282,1,1,LOCATION_GRAVE,0,POS_FACEUP) --Burnout
Debug.AddCard(34293667,1,1,LOCATION_GRAVE,0,POS_FACEUP) --Ice barrier
Debug.AddCard(19254117,1,1,LOCATION_GRAVE,0,POS_FACEUP) --Rise to Full Height
Debug.AddCard(34710660,1,1,LOCATION_GRAVE,0,POS_FACEUP) --electromagnetic turtle


    --Ai's S/T
Debug.AddCard(78625592,1,1,LOCATION_SZONE,0,POS_FACEUP) -- spiritual swords of revealing light
Debug.AddCard(78625592,1,1,LOCATION_SZONE,1,POS_FACEUP) -- spiritual swords of revealing light
Debug.AddCard(59305593,1,1,LOCATION_SZONE,2,POS_FACEUP) -- Mistake
Debug.AddCard(30459350,1,1,LOCATION_SZONE,3,POS_FACEUP) --iron wall
Debug.AddCard(15248873,1,1,LOCATION_SZONE,4,POS_FACEDOWN) -- pop-up
Debug.AddCard(76375976,1,1,LOCATION_SZONE,5,POS_FACEUP) --Mystic mine

    --Ai's deck
Debug.AddCard(25857246,1,1,LOCATION_DECK,0,POS_FACEDOWN) --nekroz valkyrus
Debug.AddCard(76375976,1,1,LOCATION_DECK,0,POS_FACEDOWN) --Mystic mine

    --Ai's Banish
Debug.AddCard(03918345,1,1,LOCATION_REMOVED,0,POS_FACEUP) --Magical Reflect Slime

	--load field and information
Debug.ReloadFieldEnd()

	--begin
aux.BeginPuzzle()
