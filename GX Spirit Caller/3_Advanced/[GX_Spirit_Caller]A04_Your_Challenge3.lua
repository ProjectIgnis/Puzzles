--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 1600
Opponent's Starting LP: 3400
Complexity: 5/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,1600,0,0)
Debug.SetPlayerInfo(1,3400,0,0)
Debug.SetAIName("Professor Sartyr")

--Hand (yours)
Debug.AddCard(75560629,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(22537443,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(504700138,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(11384280,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
Debug.AddCard(504700106,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(27618634,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)
Debug.AddCard(27618634,0,0,LOCATION_MZONE,4,POS_FACEUP_ATTACK,true)

--Monster Zones (opponent's)
Debug.AddCard(23205979,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE,true)
Debug.AddCard(31305911,1,1,LOCATION_MZONE,1,POS_FACEUP_DEFENSE,true)
Debug.AddCard(13945283,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)
Debug.AddCard(504700042,1,1,LOCATION_MZONE,4,POS_FACEUP_DEFENSE,true)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

-Activate Flint and designate Spirit Reaper as the target.
-Equip Wall of Illusion with Flint from the graveyard.
-Absorb Marshmallon with Relinquished.
-Attack Wall of Illusion with Cannon Soldier. (1600 / 2700)
-Equip A Cat of Ill Omen with Flint.
-Attack A Cat of Ill Omen with either The Unhappy Girl.
-Equip the attacking The Unhappy Girl with Flint afterwards.
-Attack with Relinquished & remaining The Unhappy Girl. (1600 / 2000)
-Normal Summon Cannon Soldier, then activate its special ability.
-Sacrifice all monsters for game. (1600 /0)
]]