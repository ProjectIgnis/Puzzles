--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! Nightmare Troubadour"


Your Starting LP: 1250
Opponent's Starting LP: 100
Complexity: ?/10

Objective: Win this Turn
]]


Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,1250,0,0)
Debug.SetPlayerInfo(1,100,0,0)
Debug.SetAIName("Nightmare Troubadour")

--Hand (yours)
Debug.AddCard(5318639,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(22046459,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(97687912,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(20871001,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(20871001,0,0,LOCATION_HAND,0,POS_FACEDOWN)
local mystik_wok=Debug.AddCard(80161395,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zthiss (yours)
Debug.AddCard(30778711,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
Debug.AddCard(51275027,0,0,LOCATION_MZONE,2,POS_FACEUP_DEFENSE,true)

--Monster Zthiss (opponent's)
Debug.AddCard(92377303,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE,true)

--Spell & Trap Zthiss (opponent's)
Debug.AddCard(84970821,1,1,LOCATION_SZONE,2,POS_FACEUP)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--Old rulings allowed a player to select to recover 0 LP using "Mystik Wok"
function mystik_wok_new_target(e,tp,eg,ep,ev,re,r,rp,chk)
	if chk==0 then
		if e:GetLabel()~=1 then return false end
		e:SetLabel(0)
		return Duel.CheckReleaseGroupCost(tp,nil,1,false,nil,nil)
	end
	local sg=Duel.SelectReleaseGroupCost(tp,nil,1,1,false,nil,nil)
	local tc=sg:GetFirst()
	local atk=tc:GetAttack()
	local def=tc:GetDefense()
	local rec=0
	Duel.Release(tc,REASON_COST)
	local sel=Duel.SelectOption(tp,aux.Stringid(80161395,1),aux.Stringid(80161395,2))
	if sel==0 then rec=atk
	else rec=def end
	Duel.SetTargetPlayer(tp)
	Duel.SetTargetParam(rec)
	Duel.SetOperationInfo(0,CATEGORY_RECOVER,nil,0,tp,rec)
end
local eff=mystik_wok:GetActivateEffect()
eff:SetTarget(mystik_wok_new_target)

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

Activate Blue Medicine. (1650/100)
Activate Blue Medicine. (1050/100)
Activate Mystical Space Typhoon and select Curse of Darkness. (50/100)
Activate Megamorph and select Shadow Ghoul.
Activate Mystic Wok, select The Unhappy Maiden, and select ATK points.
Activate Fairy Meteor Crush and select Shadow Ghoul.
Switch to Battle Phase.
Attack Dark Sage with Shadow Ghoul. (50/0)
]]
