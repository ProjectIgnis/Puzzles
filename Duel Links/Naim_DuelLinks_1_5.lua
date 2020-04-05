--[[message
Reproduces a Duel Link's puzzle, including its hints.

	Your Starting LP: 4000
	Opponent's Starting LP: 1000
	Complexity: 1/10.
	Objective: Win this turn.
]]


--Created by Naim for Ygopro Percy
Debug.SetAIName("Tour Guide From the Underworld")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_MODE_SPEED,3)
Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,1000,0,0)
Debug.ShowHint("Select the right target(s) to attack.")
Debug.ShowHint("When two monsters battle, the ATK/DEF of those monsters are compared depending on their battle position.")
Debug.ShowHint("When a monster in Attack position is destroyed through battle, the difference in ATK between the two monsters will be deducted from your opponent's LP.")
Debug.ShowHint("When destroying a Defense position monster in battle, however, no damage is done to your opponent's LP.")
Debug.ShowHint("Duel wisely by checking each monster's ATK and DEF and bring your opponent's LP down to 0.")


--your field
Debug.AddCard(91152256,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK) --Celtic Guardian
Debug.AddCard(48305365,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK) --Axe Raider
Debug.AddCard(38916461,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --Roboyarou
--opponent's field
Debug.AddCard(16899564,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --Beautiful Headhuntress
Debug.AddCard(89987208,1,1,LOCATION_MZONE,1,POS_FACEUP_DEFENSE) --Hero of the East
--Insert any message here
--insert additional message here
Debug.ShowHint("Win this turn!")
Debug.ReloadFieldEnd()
aux.BeginPuzzle()
