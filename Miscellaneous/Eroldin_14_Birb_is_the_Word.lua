--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--Partially rewritten by edo9300
--[[message
Didn't you know? Birb is the word.

	Creator: Eroldin
	Difficulty: 7/10
	Master Rule: 2
]]
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetAIName("Eroldin: Prove Your Skill!")
Debug.ShowHint("What is a birb? Oh, birb is the word.")
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,69600,0,0)

--Main Deck (yours)
Debug.AddCard(88958576,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(3657444,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(3657444,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(3657444,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Extra Deck (yours)
Debug.AddCard(6602300,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(6602300,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(6602300,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(29343734,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(29343734,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(29343734,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(22061412,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(5318639,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(12580477,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(21844576,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(58932615,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(84327329,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (yours)
Debug.AddCard(21698716,0,0,LOCATION_MZONE,2,POS_FACEUP_DEFENSE,true)
Debug.AddCard(68215963,0,0,LOCATION_MZONE,1,POS_FACEUP_DEFENSE,true)
Debug.AddCard(32933942,0,0,LOCATION_MZONE,3,POS_FACEUP_DEFENSE,true)
Debug.AddCard(79979666,0,0,LOCATION_MZONE,0,POS_FACEUP_DEFENSE,true)
Debug.AddCard(95600067,0,0,LOCATION_MZONE,4,POS_FACEUP_DEFENSE,true)

--Spell & Trap Zones (yours)
Debug.AddCard(33550694,0,0,LOCATION_FZONE,0,POS_FACEUP)
Debug.AddCard(39980304,0,0,LOCATION_SZONE,1,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(23995347,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(53347303,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)
Debug.AddCard(62873545,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
Debug.AddCard(89631141,1,1,LOCATION_MZONE,0,POS_FACEUP_ATTACK,true)
Debug.AddCard(89631141,1,1,LOCATION_MZONE,4,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (opponent's)
Debug.AddCard(42364257,1,1,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(83968380,1,1,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(83968380,1,1,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(83968380,1,1,LOCATION_SZONE,0,POS_FACEDOWN)
Debug.AddCard(55144522,1,1,LOCATION_SZONE,4,POS_FACEDOWN)

Debug.ReloadFieldEnd()
aux.BeginPuzzle()

--[[
1. Chain Material
2. Raigeki (use all the effects of the "Crystal Beasts)"
3. "Set Mystical Space Typhoon"
4. Fusion Summon "Black Fenix"
5. Use the effect of "Black Fenix"
6. Repeat step 4 and 5 twice
7. Fusion Summon "Electrum"
8. Repeat step 4 and 5 twice (do not fuse with "Flamvell"!)
9. Fusion Summon "Electrum"
10. Repeat step 4 and 5 twice (do not fuse with "Flamvell"!)
11. Fusion Summon "the Shining"
12. Fusion Summon "Electrum"
13. Repeat step 4 and 5 twice (do not fuse with "Flamvell"!)
14. Fusion Summon "Electrum"
15. Repeat step 4 and 5 twice (do not fuse with "Flamvell"!)
16. Fusion Summon "Electrum"
17. Repeat step 4 and 5 twice for the win.
]]
