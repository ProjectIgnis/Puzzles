
Debug.SetAIName("帰ってきたヒーロー")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)

Debug.SetPlayerInfo(0,1000,0,0)
Debug.SetPlayerInfo(1,2000,0,0)

Debug.AddCard(53586134,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(21844576,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(79979666,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(42703248,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(05285665,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(46411259,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(95281259,0,0,LOCATION_HAND,0,POS_FACEDOWN)

Debug.AddCard(48579379,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)

Debug.AddCard(34187685,0,0,LOCATION_SZONE,2,POS_FACEDOWN)

Debug.ReloadFieldEnd()
Debug.ShowHint("１回合內取得勝利")
aux.BeginPuzzle()

--[[
Solution:
-Summon Elemental Hero Avian in attack mode
-Activate Double Attack, sending Elemental Hero Neo Bubbleman to the 
graveyard, applying effect to Elemental Hero Avian
-Set all spell cards on the field
-Special summon Elemental Hero Bubbleman in attack mode
-Activate Giant Trunade to return all spell cards to your hand
-Activate The Warrior Returning Alive to get Elemental Hero Neo Bubbleman 
from your graveyard
-Special summon Elemental Hero Neo Bubbleman in attack mode
-Equip Elemental Hero Neo Bubbleman with Bubble Blaster
-Go into battle phase
-Attack Perfectly Ultimate Great Moth with Elemental Hero Neo Bubbleman
-Attack twice with Elemental Hero Avian and win


]]