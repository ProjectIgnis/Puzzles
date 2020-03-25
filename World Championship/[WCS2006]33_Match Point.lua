--[[message
Reproduces a Duel Puzzle from "Ultimate Masters: World Championship 2006"
	
	
	Your Starting LP: 1800
	Opponent's Starting LP: 5500
	Complexity: 5/10.
	Objective: Win this turn.
]]
Debug.SetAIName("wcs 2006")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)

Debug.SetPlayerInfo(0,1800,0,0)
Debug.SetPlayerInfo(1,5500,0,0)

Debug.AddCard(94568601,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(83104731,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(34100324,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(70828912,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(80161395,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(73398797,0,0,LOCATION_HAND,0,POS_FACEDOWN)

Debug.AddCard(39507162,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(71283180,0,0,LOCATION_MZONE,3,POS_FACEDOWN_DEFENSE)
Debug.AddCard(39674352,1,1,LOCATION_MZONE,1,POS_FACEUP_DEFENSE)
Debug.AddCard(32240937,1,1,LOCATION_MZONE,2,POS_FACEDOWN_DEFENSE)
Debug.AddCard(31812496,1,1,LOCATION_MZONE,3,POS_FACEUP_DEFENSE)

Debug.AddCard(09786492,0,0,LOCATION_SZONE,0,POS_FACEDOWN)
Debug.AddCard(59744639,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(44182827,0,0,LOCATION_SZONE,2,POS_FACEUP)
Debug.AddCard(28378427,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(55713623,0,0,LOCATION_SZONE,4,POS_FACEDOWN)
Debug.AddCard(29401950,1,1,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(56120475,1,1,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(04206964,1,1,LOCATION_SZONE,3,POS_FACEDOWN)

Debug.AddCard(78658564,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(31553716,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(96428622,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win this turn.")
aux.BeginPuzzle()

--[[
Solution:

-Flip Tornado Bird face up and select your opponent's Sakuretsu Armor and Bottomless Trap Hole
-Activate Collapse and select Gogiga Gagagigo
-Activate White Dragon Ritual and select Tyrant Dragon to sacrifice, summoning Paladin of White Dragon in attack mode
-Activate Premature Burial and select Goblin Attack Force
-Activate Mystik Wok and select Goblin Attack Force and choose ATK
-Summon Harpie Girl in attack mode
-Go into battle phase
-Attack Stone Statue of the Aztecs with Harpie Girl and chain Damage Condenser after the damage step to summon Tyrant Dragon in attack mode (and discarding Ancient Gear Golem)
-Attack Ultimate Obedient Fiend with Paladin of White Dragon
-Activate Windstorm of Etaqua
-Attack both Stone Statue of the Aztecs and Gogiga Gagagigo with Tyrant Dragon
-Attack with Blade Knight to win

]]