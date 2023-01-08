--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 1500
Opponent's Starting LP: 2100
Complexity: 4/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,1500,0,0)
Debug.SetPlayerInfo(1,2100,0,0)
Debug.SetAIName("Professor Sartyr")

--Hand (yours)
Debug.AddCard(75041269,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(71413901,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(40591390,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(81866673,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(77608643,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (yours)
Debug.AddCard(28933734,0,0,LOCATION_MZONE,2,POS_FACEDOWN_DEFENSE,true)

--Spell & Trap Zones (yours)
Debug.AddCard(511000821,0,0,LOCATION_SZONE,1,POS_FACEUP)
Debug.AddCard(53046408,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(35787450,0,0,LOCATION_SZONE,3,POS_FACEDOWN)

--GY (opponent's)
Debug.AddCard(21844576,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(58932615,1,1,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (opponent's)
Debug.AddCard(25366484,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (opponent's)
Debug.AddCard(79323590,1,1,LOCATION_SZONE,2,POS_FACEUP)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

-Activate Clock Tower Prison.
-Activate Eternal Dread.
-Flip Summon Mask of Darkness.
-Use its effect to add Eternal Dread to your hand.
-Use the effect of Cathedral of Nobles to activate Eternal Dread when you set it.
-Chain to this with Emergency Provisions, sacrificing Cathedral of Nobles and Eternal Dread to gain 2000 LP.
-Summon Breaker the Magical Warrior.
-Use its effect to destroy Clock Tower Prison, which activates to summon Destiny Hero - Dreadmaster.
-Destiny Hero - Dreadmaster's effect activates, destroying Breaker and Mask of Darkness.
-Use Destiny Hero - Dreadmaster's effect to summon Destiny Hero - Captain Tenacious and Destiny Hero - Dasher.
-Use Destiny Hero - Dasher's effect, sacrificing Destiny Hero - Captain Tenacious to gain 1000 ATK.
-Attack Elemental Hero Shining Flare Wingman with Dasher.
-Attack them directly with Destiny Hero - Dreadmaster.
]]