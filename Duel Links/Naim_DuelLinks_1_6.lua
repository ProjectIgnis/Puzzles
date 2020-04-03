--[[message
Reproduces a Duel Link's puzzle, including its hints.

	Your Starting LP: 4000
	Opponent's Starting LP: 700
	Complexity: 1/10.
	Objective: Win this turn.
]]

--Created by Naim for Ygopro Percy
Debug.SetAIName("Tour Guide From the Underworld")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_MODE_SPEED,3)
Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,700,0,0)
Debug.ShowHint("Spell cards are reliable supporters in duels.")
Debug.ShowHint("If you can't break through to your opponent using monsters, try to utilize your Spell cards.")
Debug.ShowHint("Block Attack changes the battle position of your opponent's monster to Defense position")
Debug.ShowHint("Change the battle position of an opponent's monsters with high ATK to Defense position and defeat it.")


--your hand
Debug.AddCard(25880422,0,0,LOCATION_HAND,0,POS_FACEUP_ATTACK) --Block Attack
Debug.AddCard(88819587,0,0,LOCATION_HAND,0,POS_FACEUP_ATTACK) --Baby Dragon

--your field
Debug.AddCard(55550921,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --Battle Warrior

--opponent's
Debug.AddCard(48305365,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --Axe Raider

--Insert any message here
--insert additional message here
Debug.ShowHint("Win this turn!")

Debug.ReloadFieldEnd()
aux.BeginPuzzle()
