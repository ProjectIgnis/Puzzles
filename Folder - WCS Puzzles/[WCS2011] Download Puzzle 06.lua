--wcs2011-06
Debug.SetAIName("高性能电子头脑")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)
Debug.SetPlayerInfo(0,1000,0,0)
Debug.SetPlayerInfo(1,13600,0,0)
Debug.AddCard(81254059,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(81254059,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(57543573,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(57543573,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(30299166,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(64973456,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(97169186,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(81254059,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(3204467,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(45305419,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(64973456,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(28506708,0,0,LOCATION_SZONE,2,POS_FACEDUP)
Debug.AddCard(27551,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(43002864,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(42303365,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(70583986,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(62873545,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(62873545,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)
Debug.AddCard(85742772,1,1,LOCATION_SZONE,0,POS_FACEUP)
Debug.AddCard(85742772,1,1,LOCATION_SZONE,1,POS_FACEUP)
Debug.AddCard(85742772,1,1,LOCATION_SZONE,2,POS_FACEUP)
Debug.AddCard(85742772,1,1,LOCATION_SZONE,3,POS_FACEUP)
Debug.AddCard(85742772,1,1,LOCATION_SZONE,4,POS_FACEUP)
Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()
--[[
Solution:
Activate the effect of "Worm Call", Special Summoning "Worm Solid" from your hand.
Tribute Summon "Worm Queen" by Tributing "Worm Solid".
Activate the effect of "Worm Queen", Tributing it to Special Summon a "Worm Queen" from your Deck. Repeat to Special Summon another "Worm Queen" from your Deck. Repeat to Special Summon a "Worm Illidan" from your Deck.
Set, then activate a "Viper's Rebirth", selecting a "Worm Queen" in your Graveyard.
Activate the effect of "Worm Queen", Tributing it to Special Summon "Worm Illidan" from your Deck (1st Illidan: 1 counter, 2nd Illidan: 0).
Set, then activate "Viper's Rebirth", selecting "Reptilianne Gardna" in your Graveyard (1st Illidan: 2 counters, 2nd Illidan: 1).
Activate "Limit Reverse", selecting "Reptilianne Viper".
Synchro Summon "Dewloren, Tiger King of the Ice Barrier" using "Reptilianne Viper" and "Reptilianne Gardna".
Set, then activate "Symbol of Heritage", selecting "Worm Queen" in your Graveyard (1st Illidan: 3 counters, 2nd Illidan: 2).
Activate the effect of "Dewloren, Tiger King of the Ice Barrier", selecting "Worm Call", "Limit Reverse" and "Symbol of Heritage".
Activate the effect of "Worm Queen", Tributing it to Special Summon "Worm Tentacles" from your Deck.
Set "Worm Call", "Limit Reverse" and "Symbol of Heritage", then activate "Symbol of Heritage, selecting "Worm Queen" (1st Illidan: 6 counters, 2nd Illidan: 5).
Set, then activate "Smashing Ground, destroying a "Dragon Master Knight" (1st Illidan: 7 counters, 2nd Illidan: 6).
Activate the effects of both copies of "Worm Illidan" to destroy the 6 remaining cards your opponent controls (1st Illidan: 1 counter, 2nd Illidan: 0).
Activate the effect of "Worm Tentacles", removing from play any "Worm" monster from your Graveyard to allow it to attack twice during the Battle Phase.
BP (Battle Phase):

Attack for game.
]]