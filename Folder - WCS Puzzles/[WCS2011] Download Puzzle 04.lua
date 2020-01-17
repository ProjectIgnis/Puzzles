--[[message
Reproduces a Duel Puzzle from "World Championship Tournament 2011"
	
	
	Your Starting LP: 2600
	Opponent's Starting LP: 14800
	Complexity: 4/10.
	Objective: Win this turn.
]]
Debug.SetAIName("WCS 2011")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)
Debug.SetPlayerInfo(0,2600,0,0)
Debug.SetPlayerInfo(1,14800,0,0)
c1=Debug.AddCard(21887179,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(21887179,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
c2=Debug.AddCard(21887179,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK)
Debug.AddCard(74701381,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(98239899,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(69122763,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(55465441,0,0,LOCATION_SZONE,4,POS_FACEDOWN)
Debug.AddCard(98792570,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(98792570,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(7165085,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(45939841,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(9373534,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(87880531,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(57281778,1,1,LOCATION_MZONE,0,POS_FACEUP_ATTACK)
Debug.AddCard(57281778,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(57281778,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(57281778,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)
Debug.AddCard(14618326,1,1,LOCATION_MZONE,4,POS_FACEUP_ATTACK)
e1=Debug.AddCard(83584898,1,1,LOCATION_SZONE,1,POS_FACEUP)
Debug.PreEquip(e1,c2)
Debug.AddCard(77910045,1,1,LOCATION_SZONE,2,POS_FACEUP)
e2=Debug.AddCard(83584898,1,1,LOCATION_SZONE,3,POS_FACEUP)
Debug.PreEquip(e2,c1)
Debug.AddCard(44095762,1,1,LOCATION_SZONE,4,POS_FACEDOWN)
Debug.PreEquip(c2,c1)
Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
Solution:
Activate your 2 copies of "Gift of the Martyr", sending the 2 copies of "Getsu Fuhma" equipped with "Darkworld Shackles" to the Graveyard and selecting your unequipped "Getsu Fuhma".
Activate "Deal of Phantom", selecting "Getsu Fuhma".
Activate "Bait Doll", destroying your opponent's Set "Mirror Force".
Activate "DNA Surgery", declaring Spellcaster.
Activate "Fuhma Shuriken", equipping it to "Crimson Ninja".
Activate "Blast with Chain", equipping it to "Getsu Fuhma".
Activate "Twister", paying 500 Life Points to destroy "Blast with Chain". When the effect of "Blast with Chain" activates, select "Crimson Ninja" to be destroyed.
Activate "Give and Take", selecting a "Getsu Fuhma" in your Graveyard and the "Getsu Fuhma" you control.
Activate "Diffusion-Wave Motion", paying 1000 Life Points to select your "Getsu Fuhma".
BP (Battle Phase):

Attack all "Ryu Kokki" your opponent controls for game.
]]