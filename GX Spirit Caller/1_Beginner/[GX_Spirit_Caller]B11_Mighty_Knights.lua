--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 1500
Opponent's Starting LP: 4600
Complexity: 2+/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,1500,0,0)
Debug.SetPlayerInfo(1,4600,0,0)
Debug.SetAIName("Professor Sartyr")

--Hand (yours)
Debug.AddCard(64752646,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(64306248,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(64306248,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(13944422,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(79759861,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(36354008,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Spell & Trap Zones (yours)
Debug.AddCard(511003023,0,0,LOCATION_SZONE,2,POS_FACEUP)
Debug.AddCard(3819470,0,0,LOCATION_SZONE,3,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(504700126,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)
Debug.AddCard(64306248,1,1,LOCATION_MZONE,2,POS_FACEDOWN_DEFENSE,true)
Debug.AddCard(504700006,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (opponent's)
Debug.AddCard(56120475,1,1,LOCATION_SZONE,2,POS_FACEDOWN)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

-Summon Fire Princess.
-Pay 500 LP to activate the effect of Ultimate Offering. You summon Granadora.
-Pay 500 LP to activate the effect of Ultimate Offering. You summon Skull-Mark Ladybug.
-Pay 500 LP to activate the effect of Ultimate Offering. You summon your other Skull-Mark Ladybug.
-Pay 500 LP to activate the effect of Ultimate Offering for the final time. Tribute both Skull-Mark Ladybugs 
and Granadora to summon Gilford the Lightning.
-Attack directly with Gilford the Lightning. Your opponent activates Sakuretsu Armor. Chain to this with Seven Tools of the Bandit.
-Attack directly with Fire Princess.
]]
