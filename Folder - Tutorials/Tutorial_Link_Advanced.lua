--Link Tutorial
--AlphaKretin
Debug.SetAIName("TutorialBot")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,4)

Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,2500,0,0)

--AI's field.
local c=Debug.AddCard(30010480,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK) --Gouki Thunder Lack of Link-2
--gouki atk boost
local e1=Effect.CreateEffect(c)
e1:SetType(EFFECT_TYPE_SINGLE)
e1:SetCode(EFFECT_UPDATE_ATTACK)
e1:SetProperty(EFFECT_FLAG_COPY_INHERIT)
e1:SetValue(2400)
e1:SetReset(RESET_EVENT+0x1ff0000)
c:RegisterEffect(e1)

--AI's grave/banish. Appropriate materials for the above, for flavor
Debug.AddCard(60461077,1,1,LOCATION_GRAVE,0,POS_FACEUP) --Gouki mats
Debug.AddCard(24073068,1,1,LOCATION_GRAVE,0,POS_FACEUP) --Gouki mats
Debug.AddCard(97688360,1,1,LOCATION_GRAVE,0,POS_FACEUP) --Gouki mats
Debug.AddCard(54088068,1,1,LOCATION_GRAVE,0,POS_FACEUP) --Gouki mats
Debug.AddCard(60461077,1,1,LOCATION_GRAVE,0,POS_FACEUP) --Gouki mats
Debug.AddCard(24073068,1,1,LOCATION_GRAVE,0,POS_FACEUP) --Gouki mats
Debug.AddCard(97688360,1,1,LOCATION_GRAVE,0,POS_FACEUP) --Gouki mats
Debug.AddCard(54088068,1,1,LOCATION_GRAVE,0,POS_FACEUP) --Gouki mats

--Player's Extra Deck
Debug.AddCard(34472920,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Honeybot
Debug.AddCard(1861629,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --Decode Talker
Debug.AddCard(5043010,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --FWD
Debug.AddCard(5043010,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) --FWD

--Player's Field
Debug.AddCard(22862454,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --Proxy Dragon
Debug.AddCard(34472920,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK) --Honeybot

Debug.ReloadFieldEnd()
Debug.ShowHint("When Link Summoning, you may, optionally, treat a Link Monster as a number of Materials equal to its Link Rating.")
Debug.ShowHint("However, you must still have enough monsters to clear the minimum listed on the card.")
Debug.ShowHint("Observe how two Link 2 monsters can make a Link 2, 3 or 4 (neither, one, or both being treated as two materials), but you cannot make a second Firewall Dragon with the first.")
Debug.ShowHint("Link Monsters are \"co-Linked\" when their Link Markers point at each other. This property is related to some card effects.")
--Below makes it a one turn puzzle.
aux.BeginPuzzle()

--LOCATION_DECK
--LOCATION_SZONE
--LOCATION_GRAVE
--LOCATION_HAND
--LOCATION_MZONE
--LOCATION_EXTRA
--LOCATION_REMOVED
--POS_FACEDOWN
--POS_FACEDOWN_DEFENSE
--POS_FACEUP
--POS_FACEUP_DEFENSE
--POS_FACEUP_ATTACK
--Debug.PreEquip(e1,c1)
--Debug.PreSummon(c,type)
--Debug.AddCard()
--aux.BeginPuzzle()