--Original Puzzle Name: QB038
--[[message


Your Starting LP: 4000
Opponent's Starting LP: 10000
Complexity: ?/10.

Objective: Win this turn.
]]
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,3)
Debug.SetAIName("Pseudo AI")
Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,10000,0,0)
Debug.AddCard(83235263,0,0,LOCATION_DECK,0,POS_FACEUP_ATTACK)
Debug.AddCard(15894048,0,0,LOCATION_DECK,0,POS_FACEUP_ATTACK)
Debug.AddCard(63259351,0,0,LOCATION_DECK,0,POS_FACEUP_ATTACK)
Debug.AddCard(36042004,0,0,LOCATION_DECK,0,POS_FACEUP_ATTACK)
Debug.AddCard(36042004,0,0,LOCATION_DECK,0,POS_FACEUP_ATTACK)
Debug.AddCard(43332022,0,0,LOCATION_DECK,0,POS_FACEUP_ATTACK)
Debug.AddCard(80727721,0,0,LOCATION_DECK,0,POS_FACEUP_ATTACK)
Debug.AddCard(59312550,0,0,LOCATION_DECK,0,POS_FACEUP_ATTACK)
Debug.AddCard(36717258,0,0,LOCATION_GRAVE,0,POS_FACEUP_ATTACK)
Debug.AddCard(36042004,0,0,LOCATION_GRAVE,0,POS_FACEUP_ATTACK)
Debug.AddCard(63259351,0,0,LOCATION_GRAVE,0,POS_FACEUP_ATTACK)
Debug.AddCard(63259351,0,0,LOCATION_REMOVED,0,POS_FACEUP_ATTACK)
Debug.AddCard(59312550,0,0,LOCATION_REMOVED,0,POS_FACEUP_ATTACK)
Debug.AddCard(17548456,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(80032567,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(65961683,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(52687916,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(65749035,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(50321796,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(73580471,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(26593852,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(23869735,0,0,LOCATION_SZONE,0,POS_FACEDOWN)
Debug.AddCard(1248895,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(46652477,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(1248895,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(6733059,0,0,LOCATION_SZONE,4,POS_FACEDOWN)
Debug.AddCard(14943837,0,0,LOCATION_HAND,2,POS_FACEUP_ATTACK)
Debug.AddCard(47325505,0,0,LOCATION_HAND,3,POS_FACEUP_ATTACK)
Debug.AddCard(87902575,1,1,LOCATION_SZONE,5,POS_FACEUP_ATTACK)
Debug.AddCard(44508094,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(53334471,1,1,LOCATION_SZONE,2,POS_FACEUP_ATTACK)
Debug.ReloadFieldEnd()

aux.BeginPuzzle()


--[[

1- Activate "The Trasmigration Prophecy", target "Babycerasaurus" and "Jurrac Monoloph".
2- Activate "Fossil Dig", search "Babycerasaurus".
3- Normal Summon "Babycerasaurus", "Future Visions" will trigger, chain "Chain Destruction"
4- The effects of both "Babycerasaurus" will trigger. Special Summon "Jurrac Velo" and "Jurrac Gallim" in Attack Position
5- Enter the Battle Phase, attack "Stardust Dragon" with "Jurrac Velo".
6- Activate the effect of "Jurrac Velo" and Special Summon "Jurrac Monoloph".
7- Attack "Stardust Dragon" with "Jurrac Gallim".
8- Activate the effect of "Jurrac Gallim". "Stardust Dragon" will be activated in response, negating Jurrac Gallim
9- Attack with "Jurrac Monoloph".
10- Activate "Skull Lair" and use its effect, removing 3 cards (Gallim, Velo and Miracle Jurasic Egg), destroy "Jurrac Monoloph".
11- Activate "Fossil Excavation", discard "Debris Dragon" and target "Babycerasaurus".
12- Attack with "Babycerasaurus".
13- Activate "Skull Lair"'s effect, removing 2 cards (Babycerasaurus and Monoloph), destroy "Babycerasaurus".
14- Activate the effect of "Babycerasaurus" and Special Summon "Tyranno Infinity".
15- Attack directly with "Tyranno Infinity".
--]]