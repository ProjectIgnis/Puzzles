--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! World Championship 2008"

	Your Starting LP: 1000
	Opponent's Starting LP: 10000
	Complexity: 3/10.
	Objective: Win this turn.
]]
Debug.SetAIName("WCS 2008")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)
Debug.SetPlayerInfo(0,1000,0,0)
Debug.SetPlayerInfo(1,10000,0,0)

Debug.AddCard(89631139,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(89631139,1,1,LOCATION_MZONE,3,POS_FACEUP_DEFENSE)


Debug.AddCard(87621407,0,0,LOCATION_MZONE,1,POS_FACEDOWN)
Debug.AddCard(07089711,0,0,LOCATION_MZONE,2,POS_FACEDOWN)

Debug.AddCard(07093411,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(79759861,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(68215963,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(00295517,0,0,LOCATION_DECK,0,POS_FACEDOWN)

Debug.AddCard(07093411,0,0,LOCATION_SZONE,0,POS_FACEUP)
Debug.AddCard(69937550,0,0,LOCATION_SZONE,1,POS_FACEUP)
Debug.AddCard(32710364,0,0,LOCATION_SZONE,2,POS_FACEUP)
Debug.AddCard(95600067,0,0,LOCATION_SZONE,3,POS_FACEUP)
Debug.AddCard(21698716,0,0,LOCATION_SZONE,4,POS_FACEUP)
Debug.AddCard(34487429,0,0,LOCATION_SZONE,5,POS_FACEUP)

Debug.AddCard(18318842,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(43793530,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(96677818,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(79759861,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(74825788,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(70828912,0,0,LOCATION_HAND,0,POS_FACEDOWN)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()
--[[Solution
Activate "Ancient City - Rainbow Ruin" effect-> Special summon "Crystal Beast Sapphire Pegasus"
Activate "Crystal Beast Sapphire Pegasus" targetting "Crystal Beast Emerald Tortoise"
Activate "Ancient City - Rainbow Ruin"s draw a card effect
Summon "Abyss Solider"
Activate "Abyss solider"s effect , discard "Giga Gagagigo" targetting "Ancient City-Rainbow Ruin"
Play "Ancient City-Rainbow Ruin" from your hand.
Activate "Ancient City-Rainbow Ruin" to special summon "Crystal beast Amber Mammoth"
Activate "Ancient City-Rainbow Ruin" to draw a card.
Flip Summon "Dekochi The Battlechanted Locomotive" to draw a card.
Flip Summon "Hane-Hane" targetting "Hane-Hane"
Activate "Lightning Vortex", Discard "Pigeonholing Book of Spells"
Activate "Tribute to the doomed" targetting "Old Vindicitive Magician", Discard "Hane-Hane"
Activate "H-Heated Heart" Targetting any monster.
Activate "A Legendary Ocean"
Activate "Premature Burial" and target "Giga Gagagigo"
Attack directly with all your monsters for game.

]]