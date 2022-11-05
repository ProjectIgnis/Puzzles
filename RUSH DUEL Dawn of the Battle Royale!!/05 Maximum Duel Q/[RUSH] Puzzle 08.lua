Debug.SetAIName("Luke")
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Main Deck (yours)
Debug.AddCard(160301010,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160003016,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160202027,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160202026,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(160202025,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(160202029,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Spell & Trap Zones (yours)
Debug.AddCard(160203032,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(160202028,0,0,LOCATION_SZONE,3,POS_FACEDOWN)

--Main Deck (opponent's)
Debug.AddCard(160001002,1,1,LOCATION_DECK,0,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(160002030,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE)

--Spell & Trap Zones (opponent's)
Debug.AddCard(160001047,1,1,LOCATION_SZONE,2,POS_FACEDOWN)

Debug.ReloadFieldEnd()
Duel.SetLP(0,100)
Duel.SetLP(1,3300)
aux.BeginPuzzle()

--Cat's Eye needs the opponent NOT TO declare "Monster"
--overwrite the function so that it will always declare "Spell"
Duel.SelectOption=(function()
	local oldfunc=Duel.SelectOption
	return function(p,opt1,opt2,opt3)
		oldfunc(p,opt2)
		return 1
	end
end)()
