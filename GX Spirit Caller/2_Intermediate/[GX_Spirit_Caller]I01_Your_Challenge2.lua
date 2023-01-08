--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 600
Opponent's Starting LP: 1900
Complexity: 4/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,600,0,0)
Debug.SetPlayerInfo(1,1900,0,0)
Debug.SetAIName("Professor Sartyr")

--Main Deck (yours)
Debug.AddCard(22587018,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(22587018,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(85520851,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(79759861,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(58071123,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(75390004,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(13069066,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(63259351,0,0,LOCATION_MZONE,2,POS_FACEUP_DEFENSE,true)
Debug.AddCard(22587018,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (yours)
Debug.AddCard(511003023,0,0,LOCATION_SZONE,2,POS_FACEUP)

--Monster Zones (opponent's)
Debug.AddCard(23995346,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)
Debug.AddCard(23995346,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(12829151,1,1,LOCATION_MZONE,4,POS_FACEUP_ATTACK,true)
Debug.AddCard(12829151,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

-Tribute Hydrogeddon to summon Sword Arm of Dragon.
-Activate Ultimate Offering. You pay 500 LP to Tribute Sword Arm of Dragon to Summon Megazowler.
-Activate Tribute to the Doomed. Discard Oxygeddon to destroy Megazowler
-Activate the effect of Miracle Jurassic Egg. Tribute it to Special Summon Super Conductor Tyranno.
-Enter the Battle Phase.
-Attack Kanan the Swordmistress with Super Conductor Tyranno.
]]