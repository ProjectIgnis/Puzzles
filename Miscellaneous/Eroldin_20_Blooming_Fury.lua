--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--Partially rewritten by edo9300
--[[message
Plants vs. Zombies has arrived in Yu-Gi-Oh... Kinda.

	Creator: Eroldin
	Difficulty: 5/10
	Master Rule: 2
]]
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,100,0,0)
Debug.SetPlayerInfo(1,4500,0,0)
Debug.SetAIName("Eroldin: Prove Your Skill!")

--Main Deck (yours)
Debug.AddCard(44125452,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(85431040,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(11819616,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(44125452,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(48686504,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(85431040,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(53257892,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Extra Deck (yours)
Debug.AddCard(73580471,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(28529976,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(69584564,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(96470883,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(49674183,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(85431040,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(95750695,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(32268901,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(69584564,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Spell & Trap Zones (yours)
Debug.AddCard(87430998,0,0,LOCATION_FZONE,0,POS_FACEUP)
Debug.AddCard(5973663,0,0,LOCATION_SZONE,2,POS_FACEUP)
Debug.AddCard(81524977,0,0,LOCATION_SZONE,1,POS_FACEUP)
Debug.AddCard(62896588,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(18752938,0,0,LOCATION_SZONE,0,POS_FACEDOWN)
Debug.AddCard(72575145,0,0,LOCATION_SZONE,4,POS_FACEDOWN)

--GY (opponent's)
Debug.AddCard(6021033,1,1,LOCATION_GRAVE,0,POS_FACEUP,true)

--Monster Zones (opponent's)
Debug.AddCard(1764972,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(59969392,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (opponent's)
Debug.AddCard(66835946,1,1,LOCATION_SZONE,2,POS_FACEUP)
Debug.AddCard(52503575,1,1,LOCATION_SZONE,1,POS_FACEUP)
Debug.AddCard(79852326,1,1,LOCATION_SZONE,3,POS_FACEDOWN)

Debug.ReloadFieldEnd()
aux.BeginPuzzle()
--[[
1. Seed of Deception
2. Activate Evil Thorn (summon both)
3. Super Solar Nutrient --> Any --> Lonefire Blossom
3. Activate Lonefire Blossom --> Itself --> Gigaplant
4. Supervise
5. Activate Gigaplant --> Lonefire Blossom
6. Activate Lonefire Blossom --> Gigaplant --> Tytannial (Supervise Triggers)
7. Demotion --> Gigaplant
8. Natural Tune --> Gigaplant
9. Gemini Summon & Activate Gigaplant --> Queen Angel of Roses
10. Special Summon Fallen Angel of Roses --> Lonefire Blossom
11. Use Seed Cannon
12. Fragrance Storm --> Evil Thorn (Do not draw an extra card. Special Summon Rose Fairy)
13. Fragrance Storm --> Rose Fairy (Special Summon Rose Fairy)
14. Synchro Summon Black Rose Dragon (do not trigger it's effect)
15. Activate Salamandra --> Black Rose Dragon
16. Use The World Tree --> Two Counters --> Pyramid of Wonders
---Battle Phase---
17. Attack Doomkaiser Dragon/Assault Mode with either Black Rose Dragon, or Tytannial.
18. Attack for the win (attacking Zoma the Spirit with your last monster)
]]

