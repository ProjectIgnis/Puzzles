--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--Partially rewritten by edo9300
--[[message
A clash of knights. Yours are superior though.

	Creator: Eroldin
	Difficulty: 3
	Master Rule: 2
]]
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetAIName("Eroldin: Prove Your Skill!")
Debug.SetPlayerInfo(0,1100,0,0)
Debug.SetPlayerInfo(1,7700,0,0)

--Main Deck (yours)
Debug.AddCard(76908448,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(5405694,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(83764719,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(17589298,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(55144522,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(19642774,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(55144522,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(91731841,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(90019393,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(71490127,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(33508719,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(6368039,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Extra Deck (yours)
Debug.AddCard(86805855,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(66889139,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(62873545,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(45037489,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(76614340,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(2903036,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(48976825,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(9952083,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(88696724,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(11321183,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(55144522,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(18511384,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Spell & Trap Zones (yours)
Debug.AddCard(71490127,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(24094653,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(65450690,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(41356845,0,0,LOCATION_SZONE,0,POS_FACEDOWN)
Debug.AddCard(37520316,0,0,LOCATION_SZONE,4,POS_FACEDOWN)

--Main Deck (opponent's)
Debug.AddCard(18060565,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(876330,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(63487632,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(88361177,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(36870345,1,1,LOCATION_DECK,0,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(58601383,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(34116027,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)
Debug.AddCard(80159717,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
Debug.AddCard(97204936,1,1,LOCATION_MZONE,0,POS_FACEUP_ATTACK,true)
Debug.AddCard(16589042,1,1,LOCATION_MZONE,4,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (opponent's)
Debug.AddCard(56120475,1,1,LOCATION_SZONE,2,POS_FACEDOWN)

Debug.ReloadFieldEnd()
aux.BeginPuzzle()

--[[
1. "Polymarization (Pol)"
2. "Pot"
3. "Fusion Recovery" --> "Pol" --> "Dark Blade"
4. Summon "Dark Blade"
5. "Tribute Doll" --> "Dark Blade" --> "Gaia"
6. "Dragon's Mirror"
7. "Mind Controll" --> "Gaia Knight". Chain "Burial" --> "The Earth". Chain "Chain Summoning"
8. Set "Pol"
9. Set "Jar"
10. "Acid"
11. Summon "Fleur"
12. Synchro Summon (use "Gaia Knight")
13. "Pol"
14. "Pot"
15. "Sword" --> "Dark Blade"
16. "Pot"
17. "Monster Reborn" --> "Alexandrite"
18. Activate "Alexandrite"
19. Activate "Ruby"
20. "Ritual Forgone"
21. "Dragon's Mirror"
---Battle Phase---
22. "Ruby" --> "Gaia Drake". Chain "Fleur"
23. Attack for the win.
]]
