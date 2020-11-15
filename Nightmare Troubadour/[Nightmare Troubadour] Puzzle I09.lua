--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! Nightmare Troubadour"


Your Starting LP: 8000
Opponent's Starting LP: 2500
Complexity: ?/10

Objective: Win this Turn
]]


Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,2500,0,0)
Debug.SetAIName("Nightmare Troubadour")

--Hand (yours)
Debug.AddCard(98495314,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(98495314,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(3078576,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(10262698,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zthiss (yours)
Debug.AddCard(91152256,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
Debug.AddCard(46657337,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(32452818,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)

--Spell & Trap Zthiss (yours)
Debug.AddCard(25774450,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(30461781,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(14087893,0,0,LOCATION_SZONE,3,POS_FACEDOWN)

--Monster Zthiss (opponent's)
Debug.AddCard(44913552,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
Debug.AddCard(10992251,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(39256679,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()


--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

Summon Yata-Garasu.
Activate Mystic Box, select Timeeater, and select Yata-Garasu.
Activate Sword of the Deep-Seated and select Celtic Guardian.
Activate Sword of the Deep-Seated and select Celtic Guardian.
Switch to Battle Phase.
Attack Gradius with Celtic Guardian. (8000/1300)
Activate Book of Moon and select Celtic Guardian.
Activate Corpse of Yata-Garasu and draw two cards.
Attack Yata-Garasu with Muka Muka. (8000/0)
]]
