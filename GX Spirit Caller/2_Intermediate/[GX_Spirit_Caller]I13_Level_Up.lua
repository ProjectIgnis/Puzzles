--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 1000
Opponent's Starting LP: 1800
Complexity: 4+/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,1000,0,0)
Debug.SetPlayerInfo(1,1800,0,0)
Debug.SetAIName("Professor Sartyr")

--Hand (yours)
Debug.AddCard(49140998,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(49140998,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(61850482,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(504700046,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(504700046,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(70368879,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(504700075,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(73879377,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(59464593,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (yours)
Debug.AddCard(34853266,0,0,LOCATION_MZONE,3,POS_FACEDOWN_DEFENSE,true)

--Spell & Trap Zones (yours)
Debug.AddCard(70828912,0,0,LOCATION_SZONE,2,POS_FACEDOWN)

--Main Deck (opponent's)
Debug.AddCard(40640057,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(40640057,1,1,LOCATION_DECK,0,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(84636823,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

-Flip summon Tsukuyomi, using its effect to flip Spell Canceller face down.
-Activate Premature Burial, summoning Armed Dragon LV5.
-Activate A Feather of the Phoenix. Discard Level Modulation to add Armed Dragon LV7 to your deck.
-Activate Level Up!, tributing Armed Dragon LV5 to summon Armed Dragon LV7.
-Activate A Feather of the Phoenix. Discard Level Up! to add Armed Dragon LV5 to your deck.
-Activate Upstart Goblin. You draw Armed Dragon LV5.
-Tribute Tsukuyomi to summon Armed Dragon LV5.
-Enter the Battle Phase.
-Attack Spell Canceller with Armed Dragon LV5.
-Attack directly with Armed Dragon LV7.
]]