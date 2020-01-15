--wcs2011-02
Debug.SetAIName("高性能电子头脑")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)
Debug.SetPlayerInfo(0,100,0,0)
Debug.SetPlayerInfo(1,9300,0,0)
Debug.AddCard(1353770,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(74968065,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(77527210,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(12493482,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(66337215,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(28573958,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(56433456,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(80551130,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(56830749,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(5645210,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(55794644,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(62892347,1,1,LOCATION_MZONE,1,POS_FACEUP_DEFENSE)
Debug.AddCard(62892347,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE)
Debug.AddCard(62892347,1,1,LOCATION_MZONE,3,POS_FACEUP_DEFENSE)
Debug.AddCard(51452091,1,1,LOCATION_SZONE,2,POS_FACEUP)
Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()
--[[
Solution:
Activate the effect of "Hecatrice", discarding it to the Graveyard to add "Valhalla, Hall of the Fallen" from your Deck to your hand.
Activate "Valhalla, Hall of the Fallen" and "The Sanctuary in the Sky".
Activate the effect of "Valhalla, Hall of the Fallen", Special Summoning "The Agent of Miracles - Jupiter" from your hand.
Normal Summon "Herald of Creation".
Special Summon "Soul of Purity and Light" from your hand by removing from play "Master Hyperion" and "Splendid Venus" from your Graveyard.
Activate the second effect of "The Agent of Miracles - Jupiter", discarding "Dunames Dark Witch" to Special Summon "Splendid Venus". (Now your Trap Cards can't be negated by the effect of "Royal Decree".)
Activate your Set "Miraculous Descent", selecting "Master Hyperion".
Activate the effect of "Master Hyperion" twice, removing from play "Hecatrice" and "Dunames Dark Witch" from your Graveyard to destroy 2 copies of your opponent's "Arcana Force 0 - The Fool".
Activate "Share the Pain" to Tribute "Herald of Creation". (Your opponent will Tribute their remaining "Arcana Force 0 - The Fool".)
Attack for game.

]]