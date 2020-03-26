--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! 5D's World Championship 2011: Over the Nexus"
	
	
Your Starting LP: 2500
Opponent's Starting LP: 57300
Complexity: 7/10.

Objective: Win this turn.
]]
Debug.SetAIName("WCS 2011")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,3)
Debug.SetPlayerInfo(0,2500,0,0)
Debug.SetPlayerInfo(1,57300,0,0)
Debug.AddCard(33396948,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(7902349,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(70903634,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(12600382,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(12600382,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(27770341,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(44519536,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(8124921,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(9433350,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(9433350,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(53129443,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(39701395,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(27770341,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(62154416,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(64034255,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(22624373,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(511002993,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(14943837,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK)
Debug.AddCard(31924889,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(44508094,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(68140974,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(68140974,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(68140974,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)
Debug.AddCard(84970821,1,1,LOCATION_SZONE,2,POS_FACEUP)
Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()
--[[
Solution:

Activate the effect of "Lyla, Lightsworn Sorceress", selecting "Curse of Darkness".
Activate the effect of "Genex Ally Birdman", returning "Debris Dragon" to your hand to Special Summon it.
Synchro Summon "Arcanite Magician" using "Lyla, Lightsworn Sorceress" and "Genex Ally Birdman" as Synchro Material Monsters.
Normal Summon "Frequency Magician".
Activate the effect of Arcanite Magician 3 times to destroy all 3 copies of "Meklord Emperor Wisel ∞".
Activate Cards of Consonance, discard "Debris Dragon" to draw 2 cards.
Set "Super Rejuvenation" and "Dark Hole".
Activate the effect of "Brionac, Dragon of the Ice Barrier", discarding both copies of "Malefic Blue-Eyes White Dragon" to return your Set "Super Rejuvenation" and "Dark Hole" to your hand.
Synchro Summon "Stardust Dragon" using "Brionac, Dragon of the Ice Barrier" and "Frequency Magician" as Synchro Material Monsters.
Activate "Dark Hole", then Chain the effect of "Stardust Dragon".
Activate "Super Rejuvenation".
Move to the End Phase
Choose "Yes" when prompted to revive "Stardust Dragon".
The effect of "Super Rejuvenation" resolves. IMPORTANT: Make sure you are holding down the A button at this point! You will draw 4 cards.
Provided you were holding the A button down, you will be asked if you wish to activate a card. Choose "Yes" and activate the "Super Rejuvenation" you just drew. You will draw 4 more cards and win via the effect of "Exodia the Forbidden One".

]]