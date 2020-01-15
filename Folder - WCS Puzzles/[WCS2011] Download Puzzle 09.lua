--[[message
Reproduces a Duel Puzzle from "World Championship Tournament 2011"
	
	
	Your Starting LP: 
	Opponent's Starting LP: 
	Complexity: ?/10.
	Objective: Win this turn.
]]
--wcs2011-09
Debug.SetAIName("高性能电子头脑")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)
Debug.SetPlayerInfo(0,1000,0,0)
Debug.SetPlayerInfo(1,5200,0,0)
Debug.AddCard(80825553,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(13474291,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(13474291,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(96947648,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(67169062,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(46652477,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(93369354,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(16197610,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(13474291,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(80825553,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(80825553,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(65749035,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(50091196,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(27315304,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(52687916,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(44508094,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(44508094,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(44508094,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)
Debug.AddCard(19665973,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(44095762,1,1,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(44095762,1,1,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()
--[[
Solution:
Activate "Salvage", selecting "Cloudian - Turbulence" and "Cloudian - Storm Dragon".
Chain with "The Transmigration Prophecy", selecting "Cloudian - Smoke Ball" and "Gungnir, Dragon of the Ice Barrier".
Normal Summon "Cloudian - Turbulence".
Activate the effect of "Cloudian - Turbulence", removing a Fog Counter to Special Summon the "Cloudian - Smoke Ball" in your Graveyard.
Activate the effect of "Fishborg Blaster" by sending the "Cloudian Smoke Ball" in your hand to the Graveyard.
Synchro Summon "Formula Synchron" using "Fishborg Blaster" and "Cloudian - Smoke Ball" as Synchro Material Monsters.
Activate the effect of "Formula Synchron". When prompted, activate the effect of "Formula Synchron" to draw 1 card.
Remove from play 1 "Cloudian - Smoke Ball" in order to Special Summon 1 "Cloudian - Storm Dragon" from your hand.
Activate the effect of "Cloudian - Storm Dragon" to place 1 Fog Counter on "Cloudian - Turbulence".
Activate the effect of "Cloudian - Turbulence", removing a Fog Counter to Special Summon the "Cloudian - Smoke Ball" from your Graveyard.
Activate "Fishborg Blaster", by discarding the "Cloudian - Smoke Ball from your hand.
Synchro Summon "Gungnir, Dragon of the Ice Barrier" using "Fishborg Blaster", Cloudian - Storm Dragon", and "Cloudian - Smoke Ball" as Synchro Material Monsters.
Special Summon 1 "Cloudian - Storm Dragon" from your hand by removing from play the "Cloudian - Storm Dragon" in your Graveyard.
Activate the effect of "Cloudian - Storm Dragon" to place 1 Fog Counter on "Cloudian - Turbulence".
Activate the effect of "Cloudian - Turbulence", by removing a Fog Counter to Special Summon "Cloudian - Smoke Ball" from your Graveyard.
Synchro Summon "Mist Wurm" using "Fishborg Blaster", "Cloudian - Storm Dragon", and "Cloudian - Turbulence" as Synchro Material Monsters.
Activate the effect of "Mist Wurm", return the three copies of "Stardust Dragon" back to the Extra Deck.
Activate the effect of "Gungnir, Dragon of the Ice Barrier", discard "Pot of Avarice" to destroy one of the opponent's face-down "Mirror Force" cards.
Activate the effect of "Fishborg Blaster", by discarding the "Cloudian - Smoke Dragon" from your hand.
Synchro Summon "Trishula, Dragon of the Ice Barrier" using "Fishborg Blaster", "Gungnir, Dragon of the Ice Barrier", and "Cloudian - Smoke Ball" as Synchro Material Monsters.
Activate the effect of "Trishula, Dragon of the Ice Barrier" to remove from play the remaining face-down "Mirror Force", do not remove a card from the Graveyard (this is optional, will not affect the outcome of the duel), but DO remove the "Battle Fader" in the opponent's hand from play.
BP (Battle Phase):

Attack with "Trishula, Dragon of the Ice Barrier", and "Mist Wurm" for the game.
]]