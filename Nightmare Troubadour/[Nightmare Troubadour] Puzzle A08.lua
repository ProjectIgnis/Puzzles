--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! Nightmare Troubadour"


Your Starting LP: 1500
Opponent's Starting LP: 4000
Complexity: ?/10

Objective: Win this Turn
]]


Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,1500,0,0)
Debug.SetPlayerInfo(1,4000,0,0)
Debug.SetAIName("Nightmare Troubadour")

--Main Deck (yours)
Debug.AddCard(71413901,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(91939608,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(78864369,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(20188127,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(53046408,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(15259703,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(79759861,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(70828912,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(32062913,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(74131780,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(54652250,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zthiss (yours)
Debug.AddCard(46986414,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
Debug.AddCard(70791313,0,0,LOCATION_MZONE,2,POS_FACEUP_DEFENSE,true)

--Spell & Trap Zthiss (yours)
Debug.AddCard(68334074,0,0,LOCATION_SZONE,0,POS_FACEDOWN)
Debug.AddCard(68334074,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(94256039,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(94256039,0,0,LOCATION_SZONE,3,POS_FACEUP)

--Monster Zthiss (opponent's)
Debug.AddCard(67284908,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE,true)

--Spell & Trap Zthiss (opponent's)
Debug.AddCard(85742772,1,1,LOCATION_SZONE,1,POS_FACEUP)
Debug.AddCard(62966332,1,1,LOCATION_SZONE,2,POS_FACEUP)
Debug.AddCard(85742772,1,1,LOCATION_SZONE,3,POS_FACEUP)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()


--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

Activate Premature Burial and select Exiled Force. (700/4000)
Activate Exiled Force and select Dark Magician.
Activate Fairy of the Spring and select Premature Burial.
Activate Miracle Restoring, select Tower of Babel twice, and select
 Dark Magician.
Activate Tower of Babel.
Activate Tribute to the Doomed and select Dark Magician by discarding
 Premature Burial.
Activate Royal Magical Library.
Activate Miracle Restoring, select Tower of Babel and Tower of Babel,
 and select Dark Magician.
Activate Soul Reversal, select Man-Eater Bug, chain Emergency Provisions,
 and select only Soul Reversal. (1700/4000)
Activate Toon World. (700/4000)
Summon Breaker the Magical Warrior.
Activate Mega Ton Magical Cannon and select Royal Magical Library three times,
 Tower of Babel three times, Tower of Babel three times, and
 Breaker the Magical Warrior.
Switch to Battle Phase.
Attack opponent's life points with Breaker the Magical Warrior. (700/2400)
Attack opponent's life points with Dark Magician. (700/0)
]]
