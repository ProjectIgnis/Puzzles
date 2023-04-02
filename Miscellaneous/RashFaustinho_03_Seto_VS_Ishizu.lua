--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--Partially rewritten by edo9300


--[[message
What is this sadness pounding in my chest...?
Use a combination of Blue-Eyes and Obelisk The Tormentor's abilities to win!

Creator: RashFaustinho
Your Starting LP: 350
Opponent's Starting LP: 1400
Difficulty: 4/10
]]

Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetAIName("Ishizu Ishtar")
Debug.SetPlayerInfo(0,350,0,0)
Debug.SetPlayerInfo(1,1400,0,0)

--Main Deck (yours)
Debug.AddCard(42534368,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10000000,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(89631139,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(89631139,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(72892473,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(89631139,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(45467446,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(88241506,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(79339613,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(24874630,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(79844764,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY
Debug.AddCard(86281779,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (yours)

--Spell & Trap Zones (yours)
Debug.AddCard(35659410,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(76137276,0,0,LOCATION_SZONE,3,POS_FACEDOWN)

--Main Deck (opponent's)

--GY (opponent's)

--Monster Zones (opponent's)
Debug.AddCard(16135253,1,1,LOCATION_MZONE,4,POS_FACEUP_DEFENSE,true)
Debug.AddCard(80441106,1,1,LOCATION_MZONE,3,POS_FACEUP_DEFENSE,true)
Debug.AddCard(16268841,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE,true)
Debug.AddCard(82108372,1,1,LOCATION_MZONE,1,POS_FACEUP_DEFENSE,true)
Debug.AddCard(54878498,1,1,LOCATION_MZONE,0,POS_FACEUP_DEFENSE,true)

--Spell & Trap Zones (opponent's)
Debug.AddCard(81674782,1,1,LOCATION_SZONE,3,POS_FACEUP)
Debug.AddCard(89041555,1,1,LOCATION_SZONE,2,POS_FACEDOWN)

--Hand Opponent

--Solution (Video): https://www.youtube.com/watch?v=wlIBlP1X_zE

Debug.ReloadFieldEnd()
aux.BeginPuzzle()