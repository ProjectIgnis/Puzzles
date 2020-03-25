--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! 5D's World Championship 2010: Reverse of Arcadia"

	Your Starting LP: 20000
	Opponent's Starting LP: 3000
	Complexity: 5/10.
	Objective: Win this turn.
]]
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)
Debug.SetAIName("WCS 2010")
Debug.SetPlayerInfo(0,20000,0,0)
Debug.SetPlayerInfo(1,3000,0,0)
Debug.AddCard(9888196,0,0,LOCATION_EXTRA,0,POS_FACEUP)
Debug.AddCard(57281778,0,0,LOCATION_GRAVE,0,POS_FACEUP)

Debug.AddCard(63142001,0,0,LOCATION_DECK,0,POS_FACEUP)
Debug.AddCard(63142001,0,0,LOCATION_DECK,4,POS_FACEUP)
Debug.AddCard(88289295,0,0,LOCATION_DECK,2,POS_FACEUP)
Debug.AddCard(63142001,0,0,LOCATION_DECK,3,POS_FACEUP)
Debug.AddCard(17375316,0,0,LOCATION_DECK,1,POS_FACEUP)

Debug.AddCard(87910978,0,0,LOCATION_HAND,0,POS_FACEUP)
Debug.AddCard(89631143,1,1,LOCATION_HAND,0,POS_FACEUP)
Debug.AddCard(37742478,1,1,LOCATION_HAND,0,POS_FACEUP)

Debug.AddCard(69162969,1,1,LOCATION_DECK,0,POS_FACEUP)
Debug.AddCard(69162969,1,1,LOCATION_DECK,0,POS_FACEUP)
Debug.AddCard(37742478,1,1,LOCATION_DECK,0,POS_FACEUP)
Debug.AddCard(89631143,1,1,LOCATION_DECK,0,POS_FACEUP)
Debug.AddCard(37742478,1,1,LOCATION_DECK,0,POS_FACEUP)
Debug.AddCard(89631143,1,1,LOCATION_DECK,0,POS_FACEUP)

Debug.AddCard(97077563,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(12247206,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(94192409,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(92826944,0,0,LOCATION_MZONE,0,POS_FACEUP_ATTACK)
Debug.AddCard(31305911,0,0,LOCATION_MZONE,1,POS_FACEDOWN_DEFENSE)
Debug.AddCard(54048462,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(31560081,0,0,LOCATION_MZONE,2,POS_FACEDOWN_DEFENSE)
Debug.AddCard(9888196,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(22837504,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK)
Debug.AddCard(2322421,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)
Debug.AddCard(64926005,0,0,LOCATION_MZONE,4,POS_FACEUP_ATTACK)
Debug.AddCard(98143165,0,0,LOCATION_HAND,1,POS_FACEUP)
Debug.AddCard(74519184,0,0,LOCATION_HAND,2,POS_FACEUP)
Debug.AddCard(32441317,0,0,LOCATION_HAND,3,POS_FACEUP)
Debug.AddCard(7672244,0,0,LOCATION_HAND,3,POS_FACEUP)
Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[Solutions
M1 (Main Phase 1):

Switch Samurai of the Ice Barrier to Defense Position, destroying it to draw 1 card.
Activate Hand Destruction, sending Batteryman AA and Shien's Spy or another Spell to the Graveyard to draw 2 cards.
Flip Summon Magician of Faith to pick back up your Shien's Spy or whichever Spell you discarded.
Flip Summon Marshmallon while you're at it.
Activate Synchro Control, targeting Ally of Justice Decisive Armor to take control of it.
Tune Mist Valley Soldier, Mezuki, and Magician of Faith together to Synchro Summon Ally of Justice Field Marshal.
Activate Brain Control, targeting Road Warrior to take control of.
Activate Shien's Spy, giving your opponent your Marshmallon.
Activate De-Synchro, targeting your opponent's Fabled Valkyrus.
Equip 1 of your monsters with Synchro Boost.
Activate the 3rd effect of Ally of Justice Decisive Armor, discarding Confiscation to send your opponent's hand to the Graveyard and deal them 4100 Damage.
BP (Battle Phase):

Attack Marshmallon with your 3 monsters.
Activate Compulsory Evacuation Device, targeting 1 of your monsters.
Activate Call of the Haunted, reviving Batteryman AA.
Activate Inferno Reckless Summon when Batteryman AA is Special Summoned, and Special Summon 2 more.
Attack Marshmallon with all 3 Batteryman AA for game, and 1000 points of overkill.


]]
