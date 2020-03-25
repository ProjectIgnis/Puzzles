--[[message
Reproduces a Duel Puzzle from "World Championship Tournament 2011"
	
	
	Your Starting LP: 2500
	Opponent's Starting LP: 11900
	Complexity: 5/10.
	Objective: Win this turn.
]]
Debug.SetAIName("WCS 2011")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)
Debug.SetPlayerInfo(0,2500,0,0)
Debug.SetPlayerInfo(1,11900,0,0)
Debug.AddCard(40619825,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(66625883,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(47929865,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(70095154,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(47942531,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(66625883,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(32441317,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(5318639,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(9952083,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(37694547,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(50933533,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(31924889,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(25862681,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(66976526,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(61831093,1,1,LOCATION_MZONE,0,POS_FACEDOWN_DEFENSE)
Debug.AddCard(31305911,1,1,LOCATION_MZONE,1,POS_FACEDOWN_DEFENSE)
Debug.AddCard(44508094,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(4906301,1,1,LOCATION_MZONE,3,POS_FACEDOWN_DEFENSE)
Debug.AddCard(28859794,1,1,LOCATION_MZONE,4,POS_FACEDOWN_DEFENSE)
Debug.AddCard(70342110,1,1,LOCATION_SZONE,0,POS_FACEDOWN)
Debug.AddCard(70342110,1,1,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(70342110,1,1,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(85742772,1,1,LOCATION_SZONE,3,POS_FACEUP)
Debug.AddCard(84970821,1,1,LOCATION_SZONE,4,POS_FACEUP)
Debug.AddCard(44330098,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(37742478,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()
--[[
Solution:
Activate "Mystical Space Typhoon", selecting any Spell/Trap Card your opponent controls. When your opponent Chains with the effect of "Stardust Dragon", Chain "Chain Summoning".
Special Summon "Cyber Dragon" from your hand.
Normal Summon "Magidog".
Normal Summon "Karakuri Strategist mdl 248 "Nishipachi"". Its effect will activate; select "Greenkappa" for its effect.
Synchro Summon "Arcanite Magician" using "Magidog" and "Karakuri Strategist mdl 248 "Nishipachi"" as Synchro Material Monsters. Choose to activate the effect of "Magidog" (after "Arcanite Magician" is Summoned), selecting "Geartown".
Set "Geartown".
Activate the effect of "Arcanite Magician" twice, removing its 2 Spell Counters to destroy "Gravity Bind" and "Dimensional Prison".
Activate "De-Synchro", selecting "Arcanite Magician", and Special Summon all of its Synchro Material Monsters when prompted.
The effect of "Karakuri Strategist mdl 248 "Nishipachi"" will activate; select "Shield Wing" for its effect.
Synchro Summon "Karakuri Steel Shogun mdl 00X "Bureido"" using "Karakuri Strategist mdl 248 "Nishipachi"" and "Cyber Dragon" as Synchro Material Monsters.
When prompted, activate the effect of "Karakuri Steel Shogun mdl 00X "Bureido"", Special Summoning "Karakuri Strategist mdl 248 "Nishipachi"" from your Deck.
The effect of "Karakuri Strategist mdl 248 "Nishipachi"" will activate; select itself for its effect.
Synchro Summon "Ancient Fairy Dragon" using "Karakuri Strategist mdl 248 "Nishipachi"" and "Magidog" as Synchro Material Monsters.
Activate the 2nd effect of "Ancient Fairy Dragon", destroying "Geartown".
When prompted, activate the effect of "Geartown", Special Summoning "Ancient Gear Gadjiltron Dragon".
Tribute Summon "Great Maju Garzett" by Tributing "Ancient Gear Gadjiltron Dragon".
Activate "Axe of Despair", equipping it to any monster you control.
BP (Battle Phase):

Attack "Shield Wing" for game.
]]