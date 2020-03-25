--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! World Championship 2008"

	Your Starting LP: 100
	Opponent's Starting LP: 3400
	Complexity: 5/10.
	Objective: Win this turn.
]]
Debug.SetAIName("WCS 2008")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)

Debug.SetPlayerInfo(0,100,0,0)
Debug.SetPlayerInfo(1,3400,0,0)

Debug.AddCard(89631139,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(23995346,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)

Debug.AddCard(47297616,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(03954901,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(89631139,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(77625948,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(47754278,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(41230939,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(03019642,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(59464593,0,0,LOCATION_DECK,0,POS_FACEDOWN)

Debug.AddCard(97077563,0,0,LOCATION_SZONE,2,POS_FACEDOWN)

Debug.AddCard(85087012,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(80033124,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(05318639,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(511002997,0,0,LOCATION_HAND,0,POS_FACEDOWN)

Debug.AddCard(40418351,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(99267150,0,0,LOCATION_DECK,0,POS_FACEDOWN)


Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[Solution
- Activate Future Fusion. Select Five-Headed Dragon and Armed Dragon Lv 10, Infernal Dragon, Felgrand Dragon, Blue-Eyes White Dragon, Light and Darkness Dragon as Fusion Materials.
- Summon Card Trooper and activate it's effect to send Cyberdark Keel, Cyberdark Edge and Cyberdark Horn to the graveyard.
- Activate Cyberdark Impact! to summon Cyberdark Dragon and equip it with Felgrand Dragon.
- Battle Phase, attack Blue-Eyes White Dragon with Cyberdark Dragon.
- Activate Mystical Space Typhoon to destroy Felgrand Dragon.
- Activate Call of the Haunted to summon Felgrand Dragon, and select Armed Dragon LV 10 with it's effect.
- Attack Blue-Eyes Ultimate Dragon with Felgrand Dragon.
- Attack directly with Card Trooper.

]]