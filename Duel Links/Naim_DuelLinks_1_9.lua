--[[message
Reproduces a Duel Link's puzzle, including its hints.

	Your Starting LP: 4000
	Opponent's Starting LP: 1500
	Complexity: 1/10.
	Objective: Win this turn.
]]


--Created by Naim for Ygopro Percy
Debug.SetAIName("Tour Guide From the Underworld")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_MODE_SPEED,3)
Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,1500,0,0)
Debug.ShowHint("When you see strong monster(s) on your opponent's field, try to destroy them using your own Spell/Trap cards.")
Debug.ShowHint("The Spell card Order to Charge has an effect that destroys your opponent's monster. This effect is activated when you tribute your monster (by sendng it to the Graveyard)")
Debug.ShowHint("Let's use it to destroy your opponent's Blue-Eyes Ultimate Dragon.")

--your field
Debug.AddCard(40374923,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK) -- Mammoth Graveyard
Debug.AddCard(78986941,0,0,LOCATION_SZONE,2,POS_FACEDOWN) -- Order to Charge
--your hand
Debug.AddCard(87564352,0,0,LOCATION_HAND,0,POS_FACEUP) --Blackland Fire Dragon

--opponent's
Debug.AddCard(23995346,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --Blue-Eyes Ultimate Dragon

Debug.ShowHint("Win this turn!")

Debug.ReloadFieldEnd()
aux.BeginPuzzle()
