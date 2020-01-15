
Debug.SetAIName("Ｆ・Ｇ・Ｄをやっつけろ！")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)

Debug.SetPlayerInfo(0,600,0,0)
Debug.SetPlayerInfo(1,100,0,0)

Debug.AddCard(54493213,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(54493213,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(80887952,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(61528025,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(27408609,0,0,LOCATION_DECK,0,POS_FACEDOWN)

Debug.AddCard(05758500,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(80887952,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(42703248,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(54493213,0,0,LOCATION_HAND,0,POS_FACEDOWN)

Debug.AddCard(61528025,0,0,LOCATION_MZONE,2,POS_FACEUP_DEFENSE)
Debug.AddCard(27408609,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK)
Debug.AddCard(99267150,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE)
Debug.AddCard(81843628,1,1,LOCATION_MZONE,3,POS_FACEDOWN_DEFENSE)

Debug.AddCard(70074904,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(70074904,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(08628798,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(08628798,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(08628798,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(11091375,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(31553716,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(17658803,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(31553716,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(89631139,1,1,LOCATION_GRAVE,0,POS_FACEDOWN)

Debug.ReloadFieldEnd()
Debug.ShowHint("１回合內取得勝利")
aux.BeginPuzzle()


--[[
Solution:
-Set 'Soul Release'
-Activate 'Giant Trunade'
-Activate 'Soul Release', select one monster from your opponent's 
graveyard, two of your 'D.D. Dynamite' and your two 'D.D. Assailant'
-Summon 'The Ancient Sun Helios'
-Special Summon 'Helios Duo Megiste'
-Turn 'Banisher of the Light' to Attack Mode
-Attack 'Needle Worm' with 'Helios Duo Megiste'
-Attack 'F.G.D.' with 'Homunculus Gold'
-Attack directly with 'Banisher of the Light'
]]