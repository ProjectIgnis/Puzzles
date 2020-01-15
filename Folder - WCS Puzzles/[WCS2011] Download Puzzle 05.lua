--wcs2011-05
Debug.SetAIName("高性能电子头脑")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)
Debug.SetPlayerInfo(0,1000,0,0)
Debug.SetPlayerInfo(1,12600,0,0)
Debug.AddCard(53257892,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(11747708,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(67441435,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(95750695,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(95750695,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(95750695,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(95750695,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(63789924,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(48686504,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(46652477,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(43191636,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(76774528,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(76774528,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(96029574,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(2403771,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(2403771,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(2403771,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(15951532,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(44330098,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(44095762,1,1,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()
--[[
Solution:
Normal Summon "Lonefire Blossom" and activate its effect, Tributing it to Special Summon "Gigaplant" from your Deck.
Activate "Supervise", equipping it to "Gigaplant".
Activate the effect of "Gigaplant", Special Summoning "Lonefire Blossom" from your Deck.
Activate the effect of "Lonefire Blossom", Tributing it to Special Summon any Tuner monster from your Deck.
Synchro Summon "Power Tool Dragon" using "Gigaplant" and the Tuner monster. The effect of "Supervise" will activate afterwards; select "Gigaplant" for its effect.
Activate the effect of "Power Tool Dragon", selecting the 3 copies of "Supervise" in your Deck.
Activate "Supervise", equipping it to "Gigaplant".
Activate the effect of "Gigaplant", Special Summoning "Lonefire Blossom" from your Graveyard.
Activate the effect of "Lonefire Blossom", Tributing it to Special Summon the remaining Tuner monster from your Deck.
Synchro Summon "Power Tool Dragon" using "Gigaplant" and the Tuner monster. The effect of "Supervise" will activate afterwards; select "Gigaplant" for its effect.
Activate "The Transmigration Prophecy", selecting the 2 copies of "Supervise" in your Graveyard.
Activate the effect of "Power Tool Dragon", selecting 3 copies of "Supervise" in your Deck.
Activate "Supervise", equipping it to "Gigaplant".
Activate the effect of "Gigaplant", Special Summoning any Tuner monster from your Graveyard.
Synchro Summon "Power Tool Dragon" using "Gigaplant" and the Tuner monster. The effect of "Supervise" will activate afterwards; select "Gigaplant" for its effect.
Activate the effect of "Power Tool Dragon", selecting the 3 copies of "Supervise" in your Deck.
Activate "Supervise", equipping it to "Gigaplant".
Activate the effect of "Gigaplant", Special Summoning any Tuner monster from your Graveyard.
Synchro Summon "Scrap Dragon" using any "Power Tool Dragon" and the Tuner monster.
Activate the effect of "Glow-Up Bulb" in your Graveyard, sending the top card of your Graveyard to Special Summon it.
Activate the effect of "Scrap Dragon", selecting "Glow-up Bulb" and any card your opponent controls.
Activate the effect of "Spore" in your Graveyard, removing from play "Glow-Up Bulb" from your Graveyard to Special Summon it and increase its Level by 1.
Synchro Summon "Scrap Dragon" using "Gigaplant" and "Spore". The effect of "Supervise" will activate afterwards; select "Gigaplant" for its effect.
Activate "Smoke Grenade of the Thief", equipping it to any monster you control.
Activate the effect of the 2nd "Scrap Dragon", selecting "Smoke Grenade of the Thief" and the remaining card your opponent controls. After the effect resolves, "Smoke Grenade of the Thief" will send "Gorz the Emissary of Darkness" from your opponent's hand to the Graveyard.
BP (Battle Phase):

Attack for game.
]]