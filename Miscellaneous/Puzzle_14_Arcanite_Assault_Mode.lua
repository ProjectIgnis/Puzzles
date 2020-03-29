--Original Puzzle Name: QB036
--[[message
A simple Puzzle using Arcanite Magician/Assault Mode

Your Starting LP: 100
Opponent's Starting LP: 1900
Complexity: 2/10.

Objective: Win this turn.
]]
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,3)
Debug.SetAIName("Pseudo AI")
Debug.SetPlayerInfo(0,100,0,0)
Debug.SetPlayerInfo(1,1900,0,0)
Debug.AddCard(14553285,0,0,LOCATION_DECK,0,POS_FACEUP_ATTACK)
Debug.AddCard(80280737,0,0,LOCATION_DECK,0,POS_FACEUP_ATTACK)
Debug.AddCard(46128076,0,0,LOCATION_DECK,0,POS_FACEUP_ATTACK)
Debug.AddCard(81383947,0,0,LOCATION_DECK,0,POS_FACEUP_ATTACK)
Debug.AddCard(81383947,0,0,LOCATION_DECK,0,POS_FACEUP_ATTACK)
Debug.AddCard(9596126,0,0,LOCATION_DECK,0,POS_FACEUP_ATTACK)
Debug.AddCard(31924889,0,0,LOCATION_EXTRA,0,POS_FACEUP_ATTACK)
Debug.AddCard(21502796,0,0,LOCATION_MZONE,1,POS_FACEDOWN_DEFENSE)
Debug.AddCard(2009101,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(49826746,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK)
Debug.AddCard(71413901,0,0,LOCATION_HAND,0,POS_FACEUP_ATTACK)
Debug.AddCard(3431737,0,0,LOCATION_HAND,1,POS_FACEUP_ATTACK)
Debug.AddCard(70368879,0,0,LOCATION_HAND,2,POS_FACEUP_ATTACK)
Debug.AddCard(70902743,1,1,LOCATION_MZONE,0,POS_FACEUP_ATTACK)
Debug.AddCard(70902743,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(70902743,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(72302403,1,1,LOCATION_SZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(70902743,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)
Debug.AddCard(70902743,1,1,LOCATION_MZONE,4,POS_FACEUP_ATTACK)
Debug.ReloadFieldEnd()

aux.BeginPuzzle()

--[[Solution
1-Flip Ryko, the Lightsworn Hunter, destroy Swords of Revealing Light
2-Activate Assault Beast's effect, add Assault Mode Activated to your hand
3-Normal Summon Breaker the Magical Warrior
4-Synchro Summon Arcanite Magician without using Night Wing Sorceress
5-Activate Assault Mode Activate, Special Summon Arcanite Magician Assault Mode
6-Activate rcanite Magician Assault Mode's effect to destory all your opponent's monsters
7-Attack directly

]]
