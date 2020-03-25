--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! 5D's World Championship 2011: Over the Nexus"

	Your Starting LP: 2500
	Opponent's Starting LP: 9800
	Complexity: 4/10.
	Objective: Win this turn.
]]
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)
Debug.SetAIName("WCS 2011")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)
Debug.SetPlayerInfo(0,2500,0,0)
Debug.SetPlayerInfo(1,9800,0,0)


Debug.AddCard(52352005,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(09012916,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
  
Debug.AddCard(94081496,1,1,LOCATION_GRAVE,0,POS_FACEUP)

Debug.AddCard(36484016,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(59575539,0,0,LOCATION_DECK,0,POS_FACEDOWN)

Debug.AddCard(83778600,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(71587526,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(23440062,0,0,LOCATION_SZONE,3,POS_FACEDOWN)

Debug.AddCard(511002995,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(97651498,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(67723438,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(15839054,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(23557835,0,0,LOCATION_HAND,0,POS_FACEDOWN)

Debug.AddCard(43385557,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(511000229,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(40101111,0,0,LOCATION_DECK,0,POS_FACEDOWN)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()
--[[Solution

M1 (Main Phase 1):

Activate "Brain Control", paying 800 Life Points to select "XX-Saber Gottoms". After you take control of it, change it to Defense Position.
Activate "Foolish Revival", selecting a "Shiny Black "C"" in your opponent's Graveyard.
Activate "Karma Cut", discarding "Fabled Lurrie" to remove from play "Shiny Black "C"". After "Karma Cut" resolves, the effect of "Fabled Lurrie" will activate, Special Summoning itself.
Normal Summon "Synchro Fusionist".
Activate "Emergency Teleport", Special Summoning "Krebons" from your Deck.
Synchro Summon "Magical Android" using "Krebons", "Fabled Lurrie" and "Synchro Fusionist" as Synchro Material Monsters. When prompted, activate the effect of "Synchro Fusionist", adding "Miracle Synchro Fusion" from your Deck to your hand.
Activate "Miracle Synchro Fusion", removing from play "Magical Android" on your side of the field and "Krebons" from your Graveyard to Fusion Summon "Ultimate Axon Kicker".

BP (Battle Phase):

Attack "Black-Winged Dragon" with "Ultimate Axon Kicker". The effect of "Ultimate Axon Kicker" will activate afterwards, gaining you 2800 Life Points.
M2 (Main Phase 2):

Activate "Dimension Fusion", paying 2000 Life Points to Special Summon "Magical Android" and "Krebons".
Synchro Summon "Dark Strike Fighter" using "Krebons" and "Magical Android" as Synchro Material Monsters.
Activate the effect of "Dark Strike Fighter" 3 times, Tributing all monsters you control (Tributing "Dark Strike Fighter" last).
Activate "Wicked Rebirth", paying 800 Life Points to Special Summon "Dark Strike Fighter" from your Graveyard.
Activate the effect of "Dark Strike Fighter", Tributing itself for game.
]]