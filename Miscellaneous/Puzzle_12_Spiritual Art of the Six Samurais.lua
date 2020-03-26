--Original Puzzle Name: QB030
--[[message
A puzzle featuring Spirital Arts and The Six Samurai monsters

Your Starting LP: 600
Opponent's Starting LP: 4300
Complexity: 5/10.

Objective: Win this turn.
]]
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,3)
Debug.SetAIName("Pseudo AI")
Debug.SetPlayerInfo(0,600,0,0)
Debug.SetPlayerInfo(1,1500+2200+600,0,0)

Debug.AddCard(99675356,1,1,LOCATION_DECK,0,POS_FACEUP)
Debug.AddCard(07672244,1,1,LOCATION_DECK,0,POS_FACEUP)
Debug.AddCard(44287299,1,1,LOCATION_DECK,0,POS_FACEUP)
Debug.AddCard(57139487,1,1,LOCATION_DECK,0,POS_FACEUP)
Debug.AddCard(90873992,1,1,LOCATION_DECK,0,POS_FACEUP)
Debug.AddCard(79853073,1,1,LOCATION_DECK,0,POS_FACEUP)

Debug.AddCard(83968380,1,1,LOCATION_HAND,0,POS_FACEUP)
Debug.AddCard(55144522,1,1,LOCATION_HAND,0,POS_FACEUP)
Debug.AddCard(96287685,1,1,LOCATION_HAND,0,POS_FACEUP)

Debug.AddCard(98645731,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(05915629,1,1,LOCATION_GRAVE,0,POS_FACEUP)

Debug.AddCard(11102908,1,1,LOCATION_SZONE,5,POS_FACEDOWN)
Debug.AddCard(10012614,1,1,LOCATION_SZONE,0,POS_FACEUP)

Debug.AddCard(6540606,0,0,LOCATION_SZONE,0,POS_FACEDOWN)
Debug.AddCard(79333300,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(27551,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(38167722,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(42945701,0,0,LOCATION_SZONE,4,POS_FACEDOWN)
Debug.AddCard(56594520,0,0,LOCATION_SZONE,5,POS_FACEUP)

Debug.AddCard(72302403,1,1,LOCATION_SZONE,1,POS_FACEUP)
Debug.AddCard(44095762,1,1,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(53239672,1,1,LOCATION_SZONE,3,POS_FACEUP)
Debug.AddCard(29401950,1,1,LOCATION_SZONE,4,POS_FACEDOWN)

Debug.AddCard(64398890,0,0,LOCATION_MZONE,0,POS_FACEUP_ATTACK)
Debug.AddCard(28933734,1,1,LOCATION_MZONE,0,POS_FACEDOWN_DEFENSE)
Debug.AddCard(31904181,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(63176202,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(95519486,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(21015833,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE)
Debug.AddCard(27782503,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK)
Debug.AddCard(31560081,1,1,LOCATION_MZONE,3,POS_FACEDOWN_DEFENSE)
Debug.AddCard(90397998,0,0,LOCATION_MZONE,4,POS_FACEUP_ATTACK)
Debug.AddCard(71829750,1,1,LOCATION_MZONE,4,POS_FACEUP_DEFENSE)
Debug.AddCard(69025477,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(83039729,0,0,LOCATION_REMOVED,0,POS_FACEUP)
Debug.AddCard(70046172,0,0,LOCATION_DECK,0,POS_FACEDOWN)

Debug.AddCard(99518961,0,0,LOCATION_DECK,1,POS_FACEDOWN)
Debug.AddCard(65676461,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(54719828,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(82944432,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(51735257,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(60645181,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(28150174,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(05014629,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(78156759,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(69610924,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()
--[[Solution
1- Activate The Six Samurai - Yachi's effect, target the set Mirror Force and destroy it.
2- Activate The Six Samurai - Kamon's effect, target the face-up Swords of Revealing Light and destroy it.
3-Enter the Phase Phase.
4- The Six Samurai - Zanghi attacks Serpentine Princess.
5- The Six Samurai - Nisashi attacks Hayabusa Knight.
6- The Six Samurai - Nisashi attacks Marsk of Darkness.
7- Activate Spiritual Wind Art - Miyabi tributing The Six Samurai - Nisashi, target Great Shogun Shien to place in the deck.
8- Activate Spiritual Water Art - Aoi tributing The Six Samurai - Yachi, send Pot of Greed from the opponent's hand to the GY.
9- The Six Samurai - Yorou attacks Magician of Faith.
10- Activate Dark Spirit Art - Greed tributing The Six Samurai - Yorou, to draw 2 cards.
11-Activate Limit Reverse, target The Six Samurai - Yariza
12-Chain to the opponent's Bottomless Trap hole your Rush Reckless, targetting Yariza
13-Use the effect of Yariza to prevent its destruction, destroying The Six Samurai - Zanghi instead.
14-Attack directly with Yariza.
15-Enter Main Phase 2.
16-Activate Spiritual Fire Art - Kurenai, tributing The Six Samurai - Kamon to inflict damage

]]