--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 2000
Opponent's Starting LP: 5200
Complexity: 5/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,2000,0,0)
Debug.SetPlayerInfo(1,5200,0,0)
Debug.SetAIName("Professor Sartyr")

--Hand (yours)
Debug.AddCard(11384280,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(4041838,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(504700075,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(511000228,0,0,LOCATION_MZONE,4,POS_FACEUP_ATTACK,true)
Debug.AddCard(15341821,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)
Debug.AddCard(15341821,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(15341821,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (yours)
Debug.AddCard(83675475,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(29843091,0,0,LOCATION_SZONE,2,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(15303296,1,1,LOCATION_MZONE,4,POS_FACEUP_ATTACK,true)
Debug.AddCard(14181608,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)
Debug.AddCard(14181608,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(14181608,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
Debug.AddCard(61528025,1,1,LOCATION_MZONE,0,POS_FACEUP_DEFENSE,true)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

-Sacrifice any Dandylion to tribute summon Armed Dragon LV5 in attack mode.
-Attack Banisher of the Light with Armed Dragon LV5.
-Attack any Mushroom Man with Catapult Turtle. (2000 / 5000)
-Switch to Main Phase II and activate Armed Dragon LV5's special ability.
-Discard either monster from your hand to the graveyard.
-Destroy any monster on your opponent's field.
-Activate Ojama Trio then Catapult Turtle's special ability.
-Sacrifce either Dandylion & Armed Dragon LV5. (2000 / 3650)
-Activate Catapult Turtle and sacrifice the last Dandylion. (2000 / 3500)
-Activate Token Feastevil then Catapult Turtle's special ability. (2000 / 500)
-Sacrifice Catapult Turtle itself for game. (2000 / 0)
]]