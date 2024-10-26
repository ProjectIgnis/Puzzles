--[[message
Inspired by https://www.youtube.com/watch?v=LyK79rCJGP0 by Gachineta Free Duel


Your Starting LP: 6200
Opponent's Starting LP: 9999999

Complexity: ?/10.
Objective: Win this turn.
]]

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
Debug.AddCard(61665255,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Brexit Sorceress
Debug.AddCard(5043020,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Good news! She's dead!
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

--[[Solution:

1- Activate "Catapult Zone", then "Unexpected Dai" to Special Summon "Mist Valley Warrior" from your Deck. End your turn.
2- Attack with "Dragon Spirit of White". Use the effect of "Catapult Zone" and send "Block Dragon" from your deck to the GY. End the turn.
3- Attack "Dragon Spirit of White" with "Mist Valley Warrior" and don't use the effect of "Catapult Zone".
4- Activate "Dragon Ravine" from your hand, then Normal Summon "Rescue Rabbit".
5- Activate "Rescue Rabbit" effect and Special Summon two "Gem-Knight Tourmaline" from your Deck.
6- Link Summon "Gem-Knight Phantom Quartz" using the two "Tourmaline". Activate its effect and add "Gem-Knight Obsidian" to your hand.
7- Activate "Dragon Ravine" effect, discarding "Gem-Knight Obsidian" and send "Destrudo the Lost Dragon's Frisson" from your deck to the GY.
8- Activate "Gem-Knight Obsidian" effect and Special Summon "Mist Valley Warrior" from the GY.
9- Banish "Obsidian" and the two "Tourmaline" to Special Summon "Block Dragon" from the GY.
10- Activate "Phantom Quartz" effect, returning the three banished "Gem-Knight" cards to the deck and Fusion Summon "Gem-Knight Lady Brilliant Diamond".
11- Activate "Lady Brilliant Diamond" effect to Special Summon "Gem-Knight Seraphinite", sending "Lady Brilliant Diamond" to the GY.
12- Activate "Destrudo" effect, target "Mist Valley Warrior" to Special Summon "Destrudo" from your GY.
13- Link Summon "Crystron Halqifibrax" using "Destrudo" and "Block Dragon".
14- Activate "Block Dragon" effect and chain "Halqifibrax" effect to it. 
15- Special Summon "Ghost Belle & Haunted Mansion" from your Deck with "Halqifibrax" effect, add "Crystal Rose" and "Criosphinx" to your hand.
16- Use "Seraphinite" effect to Normal Summon "Crystal Rose". Activate "Crystal Rose" effect and send "Tourmaline" from your Deck to your GY.
17- Link Summon "Triple Burst Dragon" using "Halqifibrax" and "Seraphinite".
18- Synchro Summon "Mist Valley Thunder Lord" using "Ghost Belle" and "Mist Valley Warrior".
19- Link Summon "Summon Sorceress" using "Crystal Rose" and "Phantom Quartz". Use "Sorceress" effect to Special Summon "Criosphinx" in your opponent's field.
20- Activate "Sorceress" to target "Criosphinx" and Special Summon "Dogu".
21- Activate "Crystal Rose" effect and Special Summon it from the GY, banishing "Seraphinite".
22- Activate "Crystal Rose" effect and send "Tourmaline" from your Deck to your GY.
23- Banish the two "Tourmaline" and "Lady Brilliant Diamond" to Special Summon "Block Dragon" from your GY.
24- Activate "Thunder Lord" effect and return "Dogu" to your hand. Discard "Dogu" with "Criosphinx" effect.
25- End your turn. On the End Phase, activate "Dogu" effect and add "Neko Mane King" from your Deck to your hand.
26- Attack "Block Dragon" with "Dragon Spirit of White", chain "Thunder Lord" effect to return "Crystal Rose" to your hand.
27- Discard "Neko Mane" due to "Criosphinx" effect. "Neko Mane" activates, ending your opponent turn.
28- Activate "Sorceress" effect, targetting "Triple Blast" and Special Summoning from your Deck "Debris Dragon".
29- Activate "Thunder Lord" effect, returning "Debris" to your hand. Discard "Crystal Rose" with "Criosphinx" effect.
30- Activate "Triple Burst Dragon" effect, tributing it to Special Summon "Phantom Quartz" from your GY.
31- Activate "Phantom Quartz" effect, returning "Lady Brilliant Diamond" and the two "Tourmaline" to the Deck and Fusion Summon another "Lady Brilliant Diamond".
32- Activate "Lady Brilliant Diamond" effect to Special Summon "Gem-Knight Zirconia", sending "Lady Brilliant Diamond" to the GY.
33- Link Summon "Firewall Dragon" using "Sorceress" and "Block Dragon". Use "Block Dragon" effect to add "Gaia Plate the Earth Giant" from your Deck to the hand.
34- Activate "Crystal Rose" effect and Special Summon it from the GY, banishing "Lady Brilliant Diamond".
35- Activate "Crystal Rose" effect and send "Tourmaline" from your Deck to your GY. 
36- Link Summon "Triple Burst Dragon" using "Crystal Rose" and "Phantom Quartz". Use "Firewall Dragon" to Special Summon "Gaia Plate" from your hand.
37- Banish "Ghost Belle", "Dogu" and "Tourmaline" to Special Summon "Block Dragon" from your GY.
38- Xyz Summon "Number 88: Gimmick Puppet of Leo" using "Zirconia", "Block Dragon" and "Gaia Plate". Activate the effect and place 1 Destiny Counter.
39- Normal Summon "Debris Dragon" and Special Summon "Neko Mane" from your GY. End your turn.
40- Attack "Debris Dragon" with "Dragon Spirit of White", chain "Thunder Lord" effect to return "Neko Mane" to your hand.
41- Discard "Neko Mane" due to "Criosphinx" effect. "Neko Mane" activates, ending your opponent turn.
42- Activate "Thunder Lord" effect and return "Debris Dragon" to your hand. Discard "Upstart Goblin" due to "Criosphinx" effect.
43- Activate "Number 88" effect and place a second Destiny Counter. Normal Summon "Debris Dragon", Special Summon "Neko Mane" from your GY and end your turn.
44- Attack "Debris Dragon" with "Dragon Spirit of White", chain "Thunder Lord" effect to return "Neko Mane" to your hand.
45- Discard "Neko Mane" due to "Criosphinx" effect. "Neko Mane" activates, ending your opponent turn. Activate "Number 88" effect and place your final Destiny Counter.
--]]
