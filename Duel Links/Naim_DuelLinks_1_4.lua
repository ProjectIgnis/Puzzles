--[[message
Reproduces a Duel Link's puzzle, including its hints.

	Your Starting LP: 4000
	Opponent's Starting LP: 500
	Complexity: 1/10.
	Objective: Win this turn.
]]



--Created by Naim for Ygopro Percy
Debug.SetAIName("Tour Guide From the Underworld")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_MODE_SPEED,3)
Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,500,0,0)
Debug.ShowHint("Change battle position and attack!")
Debug.ShowHint("Monsters have two battle positions: Attack position and Defense Position.")
Debug.ShowHint("You can change the position of each monster you control only once per a turn.")
Debug.ShowHint("Monsters must be in Attack position in order to attack.")


--your field
Debug.AddCard(41392891,0,0,LOCATION_MZONE,2,POS_FACEDOWN_DEFENSE) --Feral Imp

--opponent's field
Debug.AddCard(68846917,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --Rock Ogre Grotto #1

--Insert any message here
--insert additional message here
Debug.ShowHint("Win this turn!")
Debug.ReloadFieldEnd()
aux.BeginPuzzle()
