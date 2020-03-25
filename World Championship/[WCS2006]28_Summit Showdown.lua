--[[message
Reproduces a Duel Puzzle from "Ultimate Masters: World Championship 2006"
	
	
	Your Starting LP: 100
	Opponent's Starting LP: 4500
	Complexity: ?/10.
	Objective: Win this turn.
]]
Debug.SetAIName("WCS 2006")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)

Debug.SetPlayerInfo(0,100,0,0)
Debug.SetPlayerInfo(1,4500,0,0)

Debug.AddCard(70095154,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(04162088,0,0,LOCATION_DECK,0,POS_FACEDOWN)

Debug.AddCard(37630732,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(26439287,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(70095154,0,0,LOCATION_HAND,0,POS_FACEDOWN)

Debug.AddCard(04162088,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(53347303,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
local m12 = Debug.AddCard(62873545,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)

Debug.AddCard(66607691,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(12247206,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(97077563,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
local s12 = Debug.AddCard(07625614,1,1,LOCATION_SZONE,2,POS_FACEUP)

Debug.AddCard(23995346,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(23995346,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(99267150,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(11091375,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(11091375,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(89631139,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(89631139,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(89631139,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)

Debug.AddCard(74157028,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(01546123,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

Debug.PreEquip(s12,m12)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win this turn.")
aux.BeginPuzzle()

--[[
Solution:
-Activate Cyber Laser Dragon's effect and destroy itself (I know, this seems WAY counter-intuitive...)
-Special summon Cyber Dragon to the field
-Summon Proto-Cyber Dragon to the field
-Activate Photon Generator Unit and summon Cyber Laser Dragon in attack mode
-Use Cyber Laser Dragon's effect to destroy Master of Dragon Soldier
-Activate Call of the Haunted and select Proto-Cyber Dragon; then chain Inferno Reckless Summon when summoned
-Activate Power Bond and summon Cyber End Dragon in attack mode
-Go into battle phase
-Attack Blue-Eyes Shining Dragon with Cyber End Dragon
-Attack with Cyber Laser Dragon and win


]]