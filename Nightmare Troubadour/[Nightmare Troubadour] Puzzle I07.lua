--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! Nightmare Troubadour"


Your Starting LP: 1500
Opponent's Starting LP: 4000
Complexity: ?/10

Objective: Win this Turn
]]


Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,100,0,0)
Debug.SetPlayerInfo(1,500,0,0)
Debug.SetAIName("Nightmare Troubadour")

--Extra Deck (yours)
Debug.AddCard(46696593,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(66889139,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(13803864,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(63519819,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(86099788,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(11901678,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(00295517,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(18161786,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(75285069,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(74677422,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(3643300,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(98434877,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(27288416,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zthiss (yours)
Debug.AddCard(7089711,0,0,LOCATION_MZONE,1,POS_FACEDOWN_DEFENSE,true)
Debug.AddCard(14181608,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Spell & Trap Zthiss (yours)
Debug.AddCard(46411259,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(46411259,0,0,LOCATION_SZONE,2,POS_FACEDOWN)

--Monster Zthiss (opponent's)
Debug.AddCard(27134689,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
Debug.AddCard(23995346,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

Activate A Legendary Ocean.
Summon Suijin using Mushroom Man as tribute.
Activate Metamorphosis and summon Mokey Mokey King by tributing Suijin.
Flip summon Hane-Hane, select Mokey Mokey King, then special summon Mokey Mokey.
Activate Metamorphosis and summon Thousand-Eyes Restrict by tributing
 Mokey Mokey.
Activate Thousand-Eyes Restrict and select Blue-Eyes Ultimate Dragon.
Activate Mystic Plasma Zthis.
Switch to Battle Phase.
Attack Master of Oz with Thousand-Eyes Restrict. (100/0)
]]
