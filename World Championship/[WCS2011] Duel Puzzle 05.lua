--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! 5D's World Championship 2011: Over the Nexus"

Your Starting LP: 2500
Opponent's Starting LP: 20000
Complexity: 4/10.

Objective: Win this turn.
]]
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,3)
Debug.SetAIName("WCS 2011")

Debug.SetPlayerInfo(0,2500,0,0)
Debug.SetPlayerInfo(1,20000,0,0)

Debug.AddCard(00102380,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(93187568,0,0,LOCATION_DECK,0,POS_FACEDOWN)
--Debug.AddCard(64751286,0,0,LOCATION_DECK,0,POS_FACEDOWN)

Debug.AddCard(82324105,0,0,LOCATION_SZONE,0,POS_FACEDOWN)
Debug.AddCard(42956963,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(90263923,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(10012614,0,0,LOCATION_SZONE,3,POS_FACEUP)
Debug.AddCard(31550470,0,0,LOCATION_SZONE,4,POS_FACEDOWN)

Debug.AddCard(15341821,0,0,LOCATION_HAND,0,POS_FACEUP)
Debug.AddCard(09391354,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(45450218,0,0,LOCATION_HAND,0,POS_FACEUP)
Debug.AddCard(10352095,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(98045062,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(01475311,0,0,LOCATION_HAND,0,POS_FACEDOWN)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()


--[[Solution

M1 (Main Phase 1):

Activate "Limit Impulse", sending "Dandylion" and "Ally of Justice Core Destroyer" from your hand to the Graveyard to Special Summon 2 "Soul Tokens". After "Limit Impulse" resolves, the effect of "Dandylion" will activate, Special Summoning 2 "Fluff Tokens". (Make sure you control at least 2 Attack Position Tokens.)
Activate "Allure of Darkness" to draw 2 cards and remove "Gravi-Crush Dragon" from play.
Activate "Nightmare Archfiends", Tributing a Token to Special Summon 3 "Nightmare Archfiend Tokens" to your opponent's side of the field.
Special Summon "Lava Golem" from your hand by Tributing 2 of your opponent's "Nightmare Archfiend Tokens".
Activate "Enemy Controller", using the 2nd effect and Tributing a Token to take control of a "Nightmare Archfiend Token".

Special Summon "Spell Striker" from your hand by removing from play any Spell Card from your Graveyard.
Activate "Scroll of Bewitchment", equipping it to Lava Golem and declaring LIGHT.
Activate "Escape from the Dark Dimension", selecting "Gravi-Crush Dragon".
Activate "Leeching the Light", selecting "Lava Golem".
Activate the effect of "Gravi-Crush Dragon", sending "The Dark Door" to the Graveyard and selecting "Lava Golem".
BP (Battle Phase):

Attack for game.
]]