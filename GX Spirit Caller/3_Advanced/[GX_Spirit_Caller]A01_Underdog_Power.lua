--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 1000
Opponent's Starting LP: 5000
Complexity: 4/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,1000,0,0)
Debug.SetPlayerInfo(1,5000,0,0)
Debug.SetAIName("Professor Sartyr")

--Hand (yours)
Debug.AddCard(14181608,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(89091579,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(62337487,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(77454922,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(89091579,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(32274490,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(92667214,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(20277860,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Spell & Trap Zones (yours)
Debug.AddCard(30531525,0,0,LOCATION_SZONE,0,POS_FACEDOWN)
Debug.AddCard(5703682,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(36280194,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(39019325,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(44182827,0,0,LOCATION_SZONE,4,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(31829185,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(31829185,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (opponent's)
Debug.AddCard(84970821,1,1,LOCATION_SZONE,3,POS_FACEUP)
Debug.AddCard(504700141,1,1,LOCATION_SZONE,2,POS_FACEUP)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

-Summon Mushroom Man
-Activate Order to Smash with sacrificing the Mushroom Man, choose opponent's Toll and 
Curse of Darkness to destroy both of it.
-Activate Backup Soldier and choose Basic Insect, Mushroom Man and Clown Zombie to bring them to your hand.
-Activate Samsara in the field.
-Activate Fortress Whale's Oath in your hand then sacrifice all other monster cards in your hand (4 Cards). 
-Choose to summon Fortress Whale in attack mode.
-Activate Enchanting Fitting Room, choose all special summon monster in attack mode.
-Activate Thousand Energy.
-Attack with Clown Zombie and Fortress Whale to destroy all opponent's Dark Necrofear.
-Attack directly with the remaining monsters for game.
]]
