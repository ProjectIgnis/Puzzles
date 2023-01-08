--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 900
Opponent's Starting LP: 4500
Complexity: 4+/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,900,0,0)
Debug.SetPlayerInfo(1,4500,0,0)
Debug.SetAIName("Professor Sartyr")

--Hand (yours)
Debug.AddCard(70781052,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(31036355,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(4929256,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(60229110,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(9720537,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(45986603,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(98045062,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(4041838,0,0,LOCATION_MZONE,2,POS_FACEDOWN_DEFENSE,true)

--Spell & Trap Zones (yours)
Debug.AddCard(32919136,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(99517131,0,0,LOCATION_SZONE,3,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(31305911,1,1,LOCATION_MZONE,4,POS_FACEDOWN_DEFENSE,true)
Debug.AddCard(31305911,1,1,LOCATION_MZONE,3,POS_FACEDOWN_DEFENSE,true)
Debug.AddCard(31305911,1,1,LOCATION_MZONE,2,POS_FACEDOWN_DEFENSE,true)
Debug.AddCard(23205979,1,1,LOCATION_MZONE,1,POS_FACEDOWN_DEFENSE,true)
Debug.AddCard(23205979,1,1,LOCATION_MZONE,0,POS_FACEDOWN_DEFENSE,true)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

-Switch Ninja Grandmaster Sasuke in attack mode.
-Activate Creature Swap to switch Ninja Grandmaster Sasuke with Marshmallon.
-Sacrifice Marshmallon to tribute summon Granmarg the Rock Monarch.
-Destroy either remaining Marshmallon with Granmarg's special ability.
-Activate The Spell Absorbing Life. (2900 / 4500)
-Activate Falling Down and target either Spirit Reaper.
-Activate Enemy Controller to switch the position of remaining Spirit Reaper.
-Activate Owner's Seal
-Activate Snatch Steal and target Marshmallon then switch it into attack mode.
-Attack with all remaining monsters for game. (2900 / 0)
]]