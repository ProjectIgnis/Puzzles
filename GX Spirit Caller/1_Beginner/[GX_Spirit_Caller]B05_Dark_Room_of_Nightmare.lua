--blackiskate#7879
--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! GX Spirit Caller"


Your Starting LP: 4000
Opponent's Starting LP: 6900
Complexity: 2+/10

Objective: Win this Turn
]]
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,2)
Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,6900,0,0)
Debug.SetAIName("Professor Sartyr")

--Hand (yours)
Debug.AddCard(511003009,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(41855169,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (yours)
local m_3=Debug.AddCard(63259351,0,0,LOCATION_MZONE,2,POS_FACEUP_DEFENSE,true)
local m_4=Debug.AddCard(22056710,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (yours)
Debug.AddCard(511000824,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(21219755,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(85562745,0,0,LOCATION_SZONE,1,POS_FACEUP)
local t_2=Debug.AddCard(54704216,0,0,LOCATION_SZONE,0,POS_FACEUP)
local t_1=Debug.AddCard(54704216,0,0,LOCATION_SZONE,4,POS_FACEUP)

--Deck (yours)
Debug.AddCard(511003009,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Monster Zones (opponent's)
local m_1=Debug.AddCard(48229808,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
local m_2=Debug.AddCard(504700015,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (opponent's)
local t_3=Debug.AddCard(54704216,1,1,LOCATION_SZONE,3,POS_FACEUP)
local t_4=Debug.AddCard(54704216,1,1,LOCATION_SZONE,2,POS_FACEUP)

Debug.ReloadFieldEnd()

--Nightmare Wheel Targets
Debug.PreSetTarget(t_1,m_1)
Debug.PreSetTarget(t_2,m_2)
Debug.PreSetTarget(t_3,m_3)
Debug.PreSetTarget(t_4,m_4)

--Special Summoned Monsters
Debug.PreSummon(m_4,SUMMON_TYPE_SPECIAL)
Debug.PreSummon(m_1,SUMMON_TYPE_SPECIAL)

--Miracle Jurassic Egg Counter
Debug.PreAddCounter(m_3,0x14,6)

Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[
********
-=-=-=-=
Solution
=-=-=-=-
********

-Summon Jowgen the Spiritualist.
-Use its effect: Discard Ultimate Tyranno (putting another 2 counters on Miracle Jurassic Egg (8 total)) and 
destroying Vampire Genesis and Horus the Black Flame Dragon LV8 (and the Nightmare Wheels equipped to them).
-Activate Destruction Ring, destroying Jowgen the Spiritualist to inflict 1000 damage to your LP, and 1300 to theirs (thanks to Dark Room of Nightmare).
-Tribute Miracle Jurassic Egg to summon Ultimate Tyranno from your deck.
-Activate Ring of Destruction, destroying Horus the Black Flame Dragon LV6 and the Nightmare Wheel attached to it to inflict 
2300 damage to your LP and 2600 damage to their LP (thanks to Dark Room of Nightmare).
-Enter the Battle Phase.
-Attack their LP directly with Ultimate Tyranno.
]]

