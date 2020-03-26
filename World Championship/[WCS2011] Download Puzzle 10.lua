--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! 5D's World Championship 2011: Over the Nexus"

	
Your Starting LP: 1000
Opponent's Starting LP: 10200
Complexity: ?/10.

Objective: Win this turn.
]]

Debug.SetAIName("WCS 2011")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,3)
Debug.SetPlayerInfo(0,1000,0,0)
Debug.SetPlayerInfo(1,10200,0,0)
Debug.AddCard(40666140,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(57421866,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(41788781,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(77060848,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(66362965,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(15629801,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(69162969,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(34815282,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(27551,0,0,LOCATION_SZONE,4,POS_FACEDOWN)
Debug.AddCard(40844552,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(93483212,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(67098114,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(30604579,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(51566770,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(69031175,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(76913983,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)
Debug.AddCard(70342110,1,1,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()
--[[
Solution:
Special Summon "Guldfaxe of the Nordic Beasts".
Special Summon "The Fiend Megacyber".
Normal Summon "Ljosalf of the Nordic Alfar". When prompted, activate its effect, selecting "The Fiend Megacyber" to Special Summon "Svartalf of the Nordic Alfar".
Activate Lightning Vortex, discarding the last card in your hand to destroy all face-up monsters your opponent controls (except "Infernity Guardian").
Activate the effect of "Level Eater" in your Graveyard, selecting "The Fiend Megacyber" to reduce it to Level 5 and Special Summon "Level Eater".
Synchro Summon "Loki, Lord of the Aesir" using both "Nordic Alfar" monsters and "Level Eater" as Synchro Material Monsters.
Activate "Battle Waltz", selecting "Loki, Lord of the Aesir".
Activate "Miniaturize", selecting the "Waltz Token".
Activate the effect of "Level Eater" in your Graveyard, selecting the "Waltz Token" to reduce it to Level 8 and Special Summon "Level Eater".
Synchro Summon "Thor, Lord of the Aesir" using "Guldfaxe of the Nordic Beasts", "The Fiend Megacyber" and "Level Eater" as Synchro Material Monsters.
Activate the effect of "Thor, Lord of the Aesir".
Activate the effect of "Level Eater" in your Graveyard, selecting the "Waltz Token" to reduce it to Level 7 and Special Summon "Level Eater".
Activate "Limit Reverse", selecting "Valkyrie of the Nordic Ascendant".
Synchro Summon "Odin, Father of the Aesir" using the remaining non-Synchro Monsters as Synchro Material Monsters.
Activate the effect of "Level Eater" in your Graveyard, selecting any "Aesir" monster to reduce it to Level 9 and Special Summon "Level Eater".
BP (Battle Phase):

Attack "Infernity Guardian" with any "Aesir" monster, then attack directly for game. When your opponent activates "Dimensional Prison", Chain the effect of "Loki, Lord of the Aesir" to negate the activation and destroy it.
]]