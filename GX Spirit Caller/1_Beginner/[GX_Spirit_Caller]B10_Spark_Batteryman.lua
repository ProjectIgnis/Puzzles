--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 600
Opponent's Starting LP: 600
Complexity: 2/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,600,0,0)
Debug.SetPlayerInfo(1,600,0,0)
Debug.SetAIName("Professor Sartyr")

--Hand (yours)
Debug.AddCard(19733961,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(19733961,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(19733961,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(61181383,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(49398568,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(70095154,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (yours)
Debug.AddCard(70278545,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(7076131,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(83968380,0,0,LOCATION_SZONE,3,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(74157028,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)
Debug.AddCard(74157028,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(74157028,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

-Normal Summon Batteryman C from your hand to the field.
-Activate Pot of Generosity.
-Send both copies of Batteryman C to your deck.
-Activate Next to be Lost.
-Target Batteryman C to send one Batteryman to your graveyard.
-Activate Jar of Greed to draw one card from your deck.
-Activate Battery Charger, then chain it to Serial Spell.
-Discard Batteryman C from your hand to meet requirement. (100 / 600)
-Special Summon both copies of Batteryman C to the field. (100 / 600)
-Attack any Cyber Twin Dragon with Cyber Dragon (He should have 3600 Atk) for game. (100 / 0)

PROTIP: PLEASE MAKE SURE YOU AREN'T DESIGNATING THE SAME BATTERYMAN IN YOUR GRAVEYARD AS A TARGET FOR BOTH SPELL CARDS.
]]
