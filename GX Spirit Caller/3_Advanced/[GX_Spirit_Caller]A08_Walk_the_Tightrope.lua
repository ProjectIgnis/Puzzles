--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 500
Opponent's Starting LP: 4000
Complexity: 5+/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,500,0,0)
Debug.SetPlayerInfo(1,4000,0,0)
Debug.SetAIName("Professor Sartyr")

--Hand (yours)
Debug.AddCard(70278545,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(86445415,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(97590747,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(13839120,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(41172955,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(504700159,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)
Debug.AddCard(41172955,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(86445415,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (yours)
Debug.AddCard(93382620,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(93382620,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(93382620,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(33248692,0,0,LOCATION_SZONE,4,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(504700038,1,1,LOCATION_MZONE,3,POS_FACEUP_DEFENSE,true)
Debug.AddCard(30113682,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(76812113,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

-Summon La Jinn the Mystical Genie of the Lamp.
-Activate Pot of Generosity, choose Red and Yellow Gadgets.
-Battle Phase, attack Judge Man with La Jinn.
-Activate Option Hunter.
-Attack Harpie Lady with Red Gadget.
-Activate Rope of Life, then Red Gadget's effect.
-Attack Judge Man with Green Gadget.
-Activate Rope of Life, then Green Gadget's effect.
-Attack Judge Man with Dark Jeroid.
-Activate Rope of Life, target Spirit Reaper with Dark Jeroid's effect.
-Attack Judge Man with Green Gadget.
-Attack with Red Gadget and Dark Jeroid for the win.
]]