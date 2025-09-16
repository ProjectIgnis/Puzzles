--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--Partially rewritten by edo9300
--[[message
A disaster has struck; three Darklords have managed to survive the travel through Neo Space and are entering the Realm of Light.
Not only that, but they have enlisted the aid of two foul Fiends.
You, as Lord Commander, are sworn in into the Army of Light to combat this threat.
May the Light illuminate your path.

	Creator: Eroldin
	Difficulty: 6/10
	Master Rule: 3
]]
Debug.SetAIName("Eroldin: Prove your skill!")
Debug.ShowHint("Lord Commander! The Darklords have crossed over Neo Space and have started their invasion of our world.")
Debug.ShowHint("Lord Michael has ordered that we halt the invasion no matter the cost.")
Debug.ShowHint("He has graced us with the presence of one of his mightiest generals, the angel Celestia; her powers may be able to turn the tide.")
Debug.ShowHint("Good luck, and may the Light always shine on your path!")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,3)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,12200,0,0)

--Main Deck (yours)
Debug.AddCard(73853830,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(59481082,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(21785144,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(73176465,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(72443568,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(51790181,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(70046172,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(96235275,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(7183277,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(55144522,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(25290459,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(83725008,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(58996430,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(38815069,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(22624373,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(73665146,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(59019082,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(691925,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(70828912,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(44178886,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(9952083,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(21502796,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(94381039,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(2420921,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(95503687,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Spell & Trap Zones (yours)
Debug.AddCard(36099620,0,0,LOCATION_FZONE,0,POS_FACEUP)
Debug.AddCard(691925,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(691925,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(44472639,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(50755,0,0,LOCATION_SZONE,0,POS_FACEDOWN)
Debug.AddCard(30502181,0,0,LOCATION_SZONE,4,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(40921744,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(69890967,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
Debug.AddCard(62180201,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)
Debug.AddCard(52840267,1,1,LOCATION_MZONE,0,POS_FACEUP_ATTACK,true)
Debug.AddCard(55690251,1,1,LOCATION_MZONE,4,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (opponent's)
Debug.AddCard(42015635,1,1,LOCATION_FZONE,0,POS_FACEUP)
Debug.AddCard(52503575,1,1,LOCATION_SZONE,2,POS_FACEUP)
Debug.AddCard(44947065,1,1,LOCATION_SZONE,1,POS_FACEUP)
Debug.AddCard(14315573,1,1,LOCATION_SZONE,3,POS_FACEDOWN)

Debug.ReloadFieldEnd()
aux.BeginPuzzle()
--[[
1. "Recharge" --> "Ehren"
2. "Premature" --> "Silent"
3. "Recharge" --> "Ryko"
4. Summon "Lyla"
5. Activate "Lyla" --> "Burden"
6. "Recharge" --> "Rinyan"
7. "Greed"
8. "Level Up!"
9. Actvate "Lyla" --> "Negate". Chain "Rush" --> "Lyla". Chain "Chain Summoning"
10. Summon "Lumina"
11. Activate "Lumina" --> "Shire" --> "Shire"
12. "Solar Ray"
13. "Saber" --> "Shire"
14. "Summon "Celestia" --> Lumina
15. Activate "Celestia" --> "Raviel" and "Dreadroot"
16. "Pot" --> "Crusdarer" and "Solar Ray"
--Battle Phase---
17. "Lyla" --> "Zerator"
18. "Shire" --> "Ixcel"
19. "Silent" --> "Desire". Chain "Circle"
20. "Crusader" --> "Token"
21. Attack for the win.
]]
