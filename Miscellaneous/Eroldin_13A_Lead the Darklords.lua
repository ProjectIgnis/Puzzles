--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--Partially rewritten by edo9300
--[[message
The Darklords are planning to invade another realm.
To do that, they have to traverse Neo Space, which is guarded by mighty Heroes and a Strange Creature.
Help the Darklords and their servants to traverse Neo Space.

	Creator: Eroldin
	Difficulty: 6/10
	Master Rule: 3
]]
Debug.SetAIName("Eroldin: Prove your Skill!")
Debug.ShowHint("So you have been chosen to command our invasion huh?")
Debug.ShowHint("Well, you don't look like much, but if our Lord Morningstar has chosen you, I guess we don't have much of a choice.")
Debug.ShowHint("There is only one piece of advice we would give you, and that's our powers come from the Realm of Death;")
Debug.ShowHint("this is especially the case for Brother Superbia. Make use of it, if you will.")
Debug.ShowHint("Now, let's destroy these cretins who stand in our way and start our glorious conquest.")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,3)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,18500,0,0)

--Main Deck (yours)
Debug.AddCard(48964966,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(70828912,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(52840267,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(40921744,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(85771019,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(55690251,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(11260714,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(47664723,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(92719314,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(51790181,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(79571449,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(53046408,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(67316075,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(56830749,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(55144522,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Spell & Trap Zones (yours)
Debug.AddCard(1353770,0,0,LOCATION_SZONE,2,POS_FACEUP)
Debug.AddCard(84968490,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(31550470,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(30459350,0,0,LOCATION_SZONE,0,POS_FACEDOWN)
Debug.AddCard(83887306,0,0,LOCATION_SZONE,4,POS_FACEDOWN)
Debug.AddCard(18161786,0,0,LOCATION_FZONE,0,POS_FACEUP)

--GY (opponent's)
Debug.AddCard(90140980,1,1,LOCATION_GRAVE,0,POS_FACEUP,true)
Debug.AddCard(21844577,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(58932615,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(35809262,1,1,LOCATION_GRAVE,0,POS_FACEUP,true)
Debug.AddCard(20721928,1,1,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (opponent's)
Debug.AddCard(98266377,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(25366484,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
Debug.AddCard(17032740,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)
Debug.AddCard(78512663,1,1,LOCATION_MZONE,0,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (opponent's)
Debug.AddCard(53239672,1,1,LOCATION_SZONE,2,POS_FACEUP)
Debug.AddCard(29401950,1,1,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(97077563,1,1,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(42015635,1,1,LOCATION_FZONE,0,POS_FACEUP)

Debug.ReloadFieldEnd()
aux.BeginPuzzle()
--[[
1. "Needlebug"
2. "Graceful" --> "Ixcel" and "Athena"
3. "Benevolence" --> "Asmodeus" and "Desire"
4. "Pot"
5. "Valhalla" --> "Asmodeus". Chain "Iron Wall" to opponent's trap.
6. Chain "Emergency" to Amsodeus. --> "Iron Wall"
7. "Two-Pronged" --> "Ojama King"
8. "Share the Pain"
9. Special Summon "Creator"
10. Activate "Creator" --> "Asmodeus" --> "Superbia"
11. Activate "Superbia" --> Athena
12. "Escape" --> "Asmodeus"
13. Activate "Athena" --> "Superbia" --> "Superbia"
14. Activate "Superbia" --> "Ixcel"
15. Summon "Desire" --> "Creator" and "Athena"
16. "Premature" --> "Zerato"
17. Activate "Zerator"
---Battle Phase---
18. Attack for the win
]]
