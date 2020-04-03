--[[message
Reproduces a Duel Link's puzzle, including its hints.

	Your Starting LP: 4000
	Opponent's Starting LP: 100
	Complexity: 1/10.
	Objective: Win this turn.
]]

--Created by Naim for Ygopro Percy
Debug.SetAIName("Tour Guide From the Underworld")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_MODE_SPEED,3)
Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,100,0,0)
Debug.ShowHint("When you see strong Spell card(s) on your opponent's field, try to destroy them using your own Spell/Trap cards.")
Debug.ShowHint("The Spell card De-Spell has an effect that destroys opponent's Spell card.")
Debug.ShowHint("Let's use it to destroy your opponent's Spell card Dark Energy.")

--your field
Debug.AddCard(17358176,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK) -- Lady of Faith
--your hand
Debug.AddCard(19159413,0,0,LOCATION_HAND,0,POS_FACEUP) --De-Spell

--opponent's
c1=Debug.AddCard(15303296,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --Ryu-Kishin
e1=Debug.AddCard(4614116,1,1,LOCATION_SZONE,2,POS_FACEUP) -- Dark Energy

Debug.ShowHint("Win this turn!")

Debug.ReloadFieldEnd()
Debug.PreEquip(e1,c1)
aux.BeginPuzzle()
