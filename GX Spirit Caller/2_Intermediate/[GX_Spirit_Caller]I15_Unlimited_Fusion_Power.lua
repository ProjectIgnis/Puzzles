--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 8000
Opponent's Starting LP: 8000
Complexity: 2/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)
Debug.SetAIName("Professor Sartyr")

--Extra Deck (yours)
Debug.AddCard(10248389,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(10248389,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(35809262,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(35809262,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(23557835,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(18511384,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(45906428,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(24094653,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Banished (yours)
Debug.AddCard(21844576,0,0,LOCATION_REMOVED,0,POS_FACEUP)
Debug.AddCard(58932615,0,0,LOCATION_REMOVED,0,POS_FACEUP)
Debug.AddCard(97023549,0,0,LOCATION_REMOVED,0,POS_FACEUP)
Debug.AddCard(11460577,0,0,LOCATION_REMOVED,0,POS_FACEUP)

--Banished (opponent's)
Debug.AddCard(38033123,1,1,LOCATION_REMOVED,0,POS_FACEUP)
Debug.AddCard(38033123,1,1,LOCATION_REMOVED,0,POS_FACEUP)
Debug.AddCard(38033123,1,1,LOCATION_REMOVED,0,POS_FACEUP)

--AI summon Dark Magician Girl in ATK Pos (written by edo9300)
local e2=Effect.GlobalEffect()
    e2:SetType(EFFECT_TYPE_FIELD)
    e2:SetCode(EFFECT_FORCE_SPSUMMON_POSITION)
    e2:SetProperty(EFFECT_FLAG_PLAYER_TARGET)
    e2:SetTargetRange(0,1)
    e2:SetValue(POS_FACEUP_ATTACK)
    Duel.RegisterEffect(e2,0)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

-Activate Dimension Fusion. You summon Elemental Hero Avian, Elemental Hero Burstinatrix, Blade Skater and 
Etoile Cyber. Your opponent summons 3 Dark Magician Girl
-Activate Polymerization. Fuse Etoile Cyber and Blade Skater to create Cyber Blader.
-Activate Fusion Recovery. Select Etoile Cyber.
-Summon Etoile Cyber in attack mode.
-Activate Polymerization. Fuse Elemental Hero Avian and Elemental Hero Burstinatrix to create Elemental Hero Flame Wingman.
-Activate Miracle Fusion. Remove Elemental Hero Avian and Elemental Hero Burstinatrix to create Elemental Hero Flame Wingman.
-Enter the Battle Phase.
-Attack Dark Magician Girl with Elemental Hero Flame Wingman.
-Attack the 2nd Dark Magician Girl with Cyber Blader.
-Attack the 3rd Dark Magician Girl with Elemental Hero Flame Wingman.
-Attack directly with Etoile Cyber.
]]