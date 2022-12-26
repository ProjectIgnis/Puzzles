--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 6000
Opponent's Starting LP: 5200
Complexity: 2+/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,6000,0,0)
Debug.SetPlayerInfo(1,5200,0,0)
Debug.SetAIName("Professor Sartyr")

--Hand (yours)
Debug.AddCard(48766543,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(18325492,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(50684552,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(19613556,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(69196160,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(23995346,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (yours)
Debug.AddCard(504700037,0,0,LOCATION_SZONE,2,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(15150365,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE,true)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

-Set Wonder Garage.
-Tribute Blue-Eyes Ultimate Dragon to Summon Cyber-Tech Alligator.
-Activate Limiter Removal.
-Activate Heavy Storm to destroy your Wonder Garage. Use Wonder Garage's effect to Summon Gyroid.
-Enter the Battle Phase.
-Destroy White Magical Hat with Gyroid.
-Attack directly with Cyber-Tech Alligator.
-Enter Main Phase 2.
-Activate Thunder Crash.
]]