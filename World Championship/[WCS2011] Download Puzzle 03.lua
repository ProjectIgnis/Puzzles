--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! 5D's World Championship 2011: Over the Nexus"
	
	
Your Starting LP: 255
Opponent's Starting LP: 25500
Complexity: 5/10.

Objective: Win this turn.
]]

Debug.SetAIName("WCS 2011")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,3)
Debug.SetPlayerInfo(0,255,0,0)
Debug.SetPlayerInfo(1,25500,0,0)
Debug.AddCard(27869883,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(30312361,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(30312361,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(27541267,0,0,LOCATION_HAND,0,POS_FACEUP)
Debug.AddCard(92719314,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(92719314,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(92719314,0,0,LOCATION_HAND,0,POS_FACEFACEUP)
Debug.AddCard(92719314,0,0,LOCATION_HAND,0,POS_FACEFACEUP)
Debug.AddCard(84968490,0,0,LOCATION_SZONE,0,POS_FACEDOWN)
Debug.AddCard(27174286,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(05758500,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(48976825,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(85562745,0,0,LOCATION_SZONE,4,POS_FACEDOWN)
Debug.AddCard(62007535,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(84488827,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(58494728,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(84488827,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(62007535,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(62007535,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(70342110,1,1,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(70342110,1,1,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(70342110,1,1,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(70342110,1,1,LOCATION_SZONE,4,POS_FACEDOWN)
Debug.AddCard(70342110,1,1,LOCATION_SZONE,0,POS_FACEDOWN)
Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()
--[[
Solution:
1
Activate your Set "Dark Room of Nightmare".
Activate your Set "Needlebug Nest".
Special Summon a "The Dark Creator" from your hand.
Activate the effect of "The Dark Creator", removing from play a Normal Monster from your Graveyard to Special Summon "Phantom of Chaos" from your Graveyard.
Activate the effect of "Phantom of Chaos" to remove from play 1 "The Dark Creator" from your Graveyard.
Activate the new effect of "Phantom of Chaos", removing from play a Normal Monster from your Graveyard to Special Summon 1 "Phantom of Chaos" from your Graveyard.
Activate the effect of this "Phantom of Chaos" to remove from play "The Dark Creator" from your Graveyard.
Activate the new effect of "Phantom of Chaos", removing from play a Normal Monster from your Graveyard to Special Summon "Shadowpriestess of Ohm" from your Graveyard.
Activate the effect of "Shadowpriestess of Ohm" 4 times, Tributing all monsters you control (Tributing "Shadowpriestess of Ohm" last) to inflict 3200 damage to your opponent, with "Dark Room of Nightmare" also inflicting 1200 damage.

2
Special Summon "The Dark Creator" from your hand.
Activate the effect of "The Dark Creator", removing from play a Normal Monster from your Graveyard to Special Summon "The Dark Creator" from your Graveyard.
Activate the effect of this "The Dark Creator", removing from play a Normal Monster from your Graveyard to Special Summon "Phantom of Chaos".
Activate your Set "Burial from a Different Dimension", returning 2 copies of your removed from play "The Dark Creator" and 1 Normal Monster to your Graveyard.
Activate the effect of "Phantom of Chaos" to remove from play 1 "The Dark Creator" from your Graveyard.
Activate the new effect of "Phantom of Chaos", removing from play a Normal Monster from your Graveyard to Special Summon "Phantom of Chaos".
Activate the effect of this "Phantom of Chaos" to remove from play "The Dark Creator".
Activate the new effect of "Phantom of Chaos", removing from play a Normal Monster from your Graveyard to Special Summon "Shadowpriestess of Ohm" from your Graveyard.
Activate the effect of "Shadowpriestess of Ohm" 5 times, Tributing all monsters you control (Tributing "Shadowpriestess of Ohm" last).
Part 3
Activate your Set "Crevice into the Different Dimension", declaring DARK and selecting 1 "The Dark Creator" and "Shadowpriestess of Ohm" in your Graveyard.
Activate "Return from the Different Dimension", paying half your Life Points to Special Summon 3 Normal Monsters, 1 "The Dark Creator", and "Shadowpriestess of Ohm".
Activate the effect of "Shadowpriestess of Ohm" 3 times, Tributing the 3 Normal Monsters.
Part 4
Activate the effect of "The Dark Creator", removing from play any DARK monster from your Graveyard (except "The Dark Creator") to Special Summon "The Dark Creator" from your Graveyard.
Activate the effect of "Shadowpriestess of Ohm", Tributing the "The Dark Creator" that just used its effect.
Repeat the above 2 steps for game.
Completion Reward: 1000 DP.


]]