
Debug.SetAIName("不屈の闘志")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)

Debug.SetPlayerInfo(0,500,0,0)
Debug.SetPlayerInfo(1,3800,0,0)

Debug.AddCard(39168895,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(30683373,0,0,LOCATION_HAND,0,POS_FACEDOWN)

Debug.AddCard(73648243,0,0,LOCATION_MZONE,2,POS_FACEDOWN_DEFENSE)
Debug.AddCard(13039848,1,1,LOCATION_MZONE,2,POS_FACEDOWN_DEFENSE)
Debug.AddCard(82482194,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)

Debug.AddCard(97077563,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(93382620,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(41356845,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(04206964,1,1,LOCATION_SZONE,2,POS_FACEDOWN)

Debug.ReloadFieldEnd()
Debug.ShowHint("１回合內取得勝利")
aux.BeginPuzzle()
--[[Solution

-Activate Shield Crash and select Sand Moth (then special summon Sand Moth
in attack mode)
-Activate Acid Trap Hole and select Giant Soldier of Stone
-Go into battle phase
-Attack Millennium Scoprion with Sand Moth and then activate Rope of Life 
after monsters are destroyed
-Activate Call of the Haunted and select Berserk Gorilla
-Attack and win
]]