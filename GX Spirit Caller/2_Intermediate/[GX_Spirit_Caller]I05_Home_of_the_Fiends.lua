--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 1000
Opponent's Starting LP: 2400
Complexity: 2+/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,1000,0,0)
Debug.SetPlayerInfo(1,2400,0,0)
Debug.SetAIName("Professor Sartyr")

--Hand (yours)
Debug.AddCard(70368879,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(47453433,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(74848038,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(30090452,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(16226796,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(102380,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(31829185,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (yours)
Debug.AddCard(97590747,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (yours)
Debug.AddCard(4178474,0,0,LOCATION_SZONE,2,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(504700159,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE,true)
Debug.AddCard(504700159,1,1,LOCATION_MZONE,3,POS_FACEUP_DEFENSE,true)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

-Tribute La Jinn the Mystical Genie of the Lamp to summon Zanki.
-Activate Raigeki Break. Discard Night Assailant to destroy Dark Jeroid.
-Activate Back to Square One. Discard Lava Golem to return Dark Jeroid to the opponent's deck.
-Use Monster Reincarnation. Discard Upstart Goblin to return Dark Necrofear to your hand.
-Remove La Jinn the Mystical Genie of the Lamp, Night Assailant and Lava Golem from play to 
Special Summon Dark Necrofear.
-Enter the Battle Phase.
-Attack directly with Zanki and Dark Necrofear.
]]