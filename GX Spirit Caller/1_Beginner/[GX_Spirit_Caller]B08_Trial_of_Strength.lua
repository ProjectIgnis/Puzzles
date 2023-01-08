--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 1300
Opponent's Starting LP: 2400
Complexity: 1/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,1300,0,0)
Debug.SetPlayerInfo(1,2400,0,0)
Debug.SetAIName("Professor Sartyr")

--Hand (yours)
Debug.AddCard(70828912,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(13723605,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (yours)
Debug.AddCard(504700167,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (yours)
Debug.AddCard(93382620,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(97077563,0,0,LOCATION_SZONE,1,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(511000868,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

-Activate Call of the Haunted, reviving Man-Eating Treasure Chest.
-Enter the Battle Phase.
-Attack Twin-Headed Behemoth with Giant Germ. Giant Germ is destoyed so its burn effect activates.
-Chain to this with Rope of Life. You discard Premature Burial to revive Giant Germ with 800 extra ATK.
-Attack Twin-Headed Behemoth with Giant Germ, then attack directly with Man-Eating Treasure Chest.
]]

