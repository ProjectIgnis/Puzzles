--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 6300
Opponent's Starting LP: 6300
Complexity: 4+/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,6300,0,0)
Debug.SetPlayerInfo(1,6300,0,0)
Debug.SetAIName("Professor Sartyr")

--Hand (yours)
Debug.AddCard(31036355,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(4929256,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(10012614,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(71453557,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(70095154,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(43434803,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(9817927,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (yours)
Debug.AddCard(83133491,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(79759861,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(41356846,0,0,LOCATION_SZONE,3,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(15341821,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE,true)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

-Activate Tribute to the Doomed, discarding Cyber Dragon, destroy Dandylion.
-Activate The Shallow Grave, Cyber Dragon and Dandylion return.
-Activate Acid Trap Hole, targeting Dandylion.
-Switch Gyaku-Gire Panda into Defense mode, then activate Zero Gravity.
-Activate Autonomous Action Unit, returning Dandylion.
-Activate Creature Swap, exchanging a Fluffy Token for Dandylion.
-Tribute Summon Mobius the Frost Monarch, sacrificing Cyber Dragon.
-Activate Mobius's effect, destroying Autonomous Action Unit.
-Activate Banner of Courage, go to the Battle Phase.
-Swing with the Panda, then attack the attack position tokens for lethal damage.
]]