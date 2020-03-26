--[[message
A very conveniently set-up Tag duel to give Cyber Dragon as much ATK as possible

Your Starting LP: 100
Opponent's Starting LP: 9151952

Complexity: ?/10.
Objective: Win this turn.
]]
--Cyber Dragon Maximum Attack puzzle
Debug.SetAIName("AlphaKretin")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN + DUEL_SIMPLE_AI + DUEL_TAG_MODE, 4) --tag mode shouldn't actually come up but justifies extra copies of cards

Debug.SetPlayerInfo(0, 100, 0, 0)
Debug.SetPlayerInfo(1, 9151952, 0, 0)

--player's field
Debug.AddCard(26439287, 0, 0, LOCATION_MZONE, 4, POS_FACEUP_ATTACK) --Proto Cyber Dragon, gains Phalanx Pike buff without contributing to it
Debug.AddCard(19733961, 0, 0, LOCATION_MZONE, 0, POS_FACEUP_ATTACK) --Batteryman C, increases ATK
Debug.AddCard(19733961, 0, 0, LOCATION_MZONE, 1, POS_FACEUP_ATTACK) --Batteryman C, increases ATK
Debug.AddCard(19733961, 0, 0, LOCATION_MZONE, 2, POS_FACEUP_ATTACK) --Batteryman C, increases ATK
Debug.AddCard(19733961, 0, 0, LOCATION_MZONE, 3, POS_FACEUP_ATTACK) --4th Batteryman C, played by "Tag Partner"
Debug.AddCard(7778726, 0, 0, LOCATION_MZONE, 5, POS_FACEUP_ATTACK) --Hip Hoshiningen

Debug.AddCard(7565547, 0, 0, LOCATION_SZONE, 0, POS_FACEDOWN) --Collected Power, steal opponent's Phalanx Pikes
local p1 = Debug.AddCard(42709949, 0, 0, LOCATION_SZONE, 1, POS_FACEUP) --3 Phalanx Pikes, set by "Tag Partner"
local p2 = Debug.AddCard(42709949, 0, 0, LOCATION_SZONE, 2, POS_FACEUP) --3 Phalanx Pikes, set by "Tag Partner"
local p3 = Debug.AddCard(42709949, 0, 0, LOCATION_SZONE, 3, POS_FACEUP) --3 Phalanx Pikes, set by "Tag Partner"
Debug.AddCard(23171610, 0, 0, LOCATION_SZONE, 4, POS_FACEDOWN) --Limiter Removal, set by "Tag Partner"
Debug.AddCard(81777047, 0, 0, LOCATION_SZONE, 5, POS_FACEUP) --Luminous Spark

--player's hand
Debug.AddCard(42709949, 0, 0, LOCATION_HAND, 0, POS_FACEDOWN) --Phalanx Pike
Debug.AddCard(42709949, 0, 0, LOCATION_HAND, 0, POS_FACEDOWN) --Phalanx Pike
Debug.AddCard(23171610, 0, 0, LOCATION_HAND, 0, POS_FACEDOWN) --Limiter Removal
Debug.AddCard(37742478, 0, 0, LOCATION_HAND, 0, POS_FACEDOWN) --Honest
Debug.AddCard(37742478, 0, 0, LOCATION_HAND, 0, POS_FACEDOWN) --Honest
Debug.AddCard(37742478, 0, 0, LOCATION_HAND, 0, POS_FACEDOWN) --Honest
Debug.AddCard(37742478, 0, 0, LOCATION_HAND, 0, POS_FACEDOWN) --3 more Honest, placed in hand by "Tag Partner's" Firewall
Debug.AddCard(37742478, 0, 0, LOCATION_HAND, 0, POS_FACEDOWN) --3 more Honest, placed in hand by "Tag Partner's" Firewall
Debug.AddCard(37742478, 0, 0, LOCATION_HAND, 0, POS_FACEDOWN) --3 more Honest, placed in hand by "Tag Partner's" Firewall

--AI's field
local c = Debug.AddCard(26439287, 1, 1, LOCATION_MZONE, 4, POS_FACEUP_ATTACK) --Proto Cyber Dragon, gains Phalanx Pike buff without contributing to it
Debug.AddCard(19733961, 1, 1, LOCATION_MZONE, 0, POS_FACEUP_ATTACK) --Batteryman C, increases ATK
Debug.AddCard(19733961, 1, 1, LOCATION_MZONE, 1, POS_FACEUP_ATTACK) --Batteryman C, increases ATK
Debug.AddCard(19733961, 1, 1, LOCATION_MZONE, 2, POS_FACEUP_ATTACK) --Batteryman C, increases ATK
Debug.AddCard(19733961, 1, 1, LOCATION_MZONE, 3, POS_FACEUP_ATTACK) --4th Batteryman C, played by "Tag Partner"
Debug.AddCard(7778726, 1, 1, LOCATION_MZONE, 5, POS_FACEUP_ATTACK) --Hip Hoshiningen

local p4 = Debug.AddCard(42709949, 1, 1, LOCATION_SZONE, 0, POS_FACEUP) --Phalanx Pike
local p5 = Debug.AddCard(42709949, 1, 1, LOCATION_SZONE, 1, POS_FACEUP) --Phalanx Pike
local p6 = Debug.AddCard(42709949, 1, 1, LOCATION_SZONE, 2, POS_FACEUP) --Phalanx Pike
Debug.PreEquip(p1, c)
Debug.PreEquip(p2, c)
Debug.PreEquip(p3, c)
Debug.PreEquip(p4, c)
Debug.PreEquip(p5, c)
Debug.PreEquip(p6, c)
Debug.AddCard(23171610, 1, 1, LOCATION_SZONE, 3, POS_FACEDOWN) --Limiter Removal, set by "Tag Partner"
Debug.AddCard(23171610, 1, 1, LOCATION_SZONE, 4, POS_FACEDOWN) --Limiter Removal
Debug.AddCard(81777047, 1, 1, LOCATION_SZONE, 5, POS_FACEUP) --Luminous Spark

--AI's hand
Debug.AddCard(37742478, 1, 1, LOCATION_HAND, 0, POS_FACEDOWN) --Honest
Debug.AddCard(37742478, 1, 1, LOCATION_HAND, 0, POS_FACEDOWN) --Honest
Debug.AddCard(37742478, 1, 1, LOCATION_HAND, 0, POS_FACEDOWN) --Honest
Debug.AddCard(37742478, 1, 1, LOCATION_HAND, 0, POS_FACEDOWN) --3 more Honest, place in hand by "Tag Partner's" Firewall
Debug.AddCard(37742478, 1, 1, LOCATION_HAND, 0, POS_FACEDOWN) --3 more Honest, place in hand by "Tag Partner's" Firewall
Debug.AddCard(37742478, 1, 1, LOCATION_HAND, 0, POS_FACEDOWN) --3 more Honest, place in hand by "Tag Partner's" Firewall

--player's GY
--as many Cyber Dragon names as possible, 6 each because sent by "Tag Partner"
--TODO: Add Cyber Dragon Naechster
Debug.AddCard(70095154, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Cyber Dragon
Debug.AddCard(70095154, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Cyber Dragon
Debug.AddCard(70095154, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Cyber Dragon
Debug.AddCard(70095154, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Cyber Dragon
Debug.AddCard(70095154, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Cyber Dragon
Debug.AddCard(70095154, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Cyber Dragon
Debug.AddCard(5373478, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Zwei
Debug.AddCard(5373478, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Zwei
Debug.AddCard(5373478, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Zwei
Debug.AddCard(5373478, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Zwei
Debug.AddCard(5373478, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Zwei
Debug.AddCard(5373478, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Zwei
Debug.AddCard(23893227, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Core
Debug.AddCard(23893227, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Core
Debug.AddCard(23893227, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Core
Debug.AddCard(23893227, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Core
Debug.AddCard(23893227, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Core
Debug.AddCard(23893227, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Core
Debug.AddCard(29975188, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Vier
Debug.AddCard(29975188, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Vier
Debug.AddCard(29975188, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Vier
Debug.AddCard(29975188, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Vier
Debug.AddCard(29975188, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Vier
Debug.AddCard(29975188, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Vier
Debug.AddCard(46724542, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Sieger
Debug.AddCard(46724542, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Sieger
Debug.AddCard(46724542, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Sieger
Debug.AddCard(46724542, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Sieger
Debug.AddCard(46724542, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Sieger
Debug.AddCard(46724542, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Sieger
Debug.AddCard(56364287, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Herz
Debug.AddCard(56364287, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Herz
Debug.AddCard(56364287, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Herz
Debug.AddCard(56364287, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Herz
Debug.AddCard(56364287, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Herz
Debug.AddCard(56364287, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Herz
Debug.AddCard(59281922, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Drei
Debug.AddCard(59281922, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Drei
Debug.AddCard(59281922, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Drei
Debug.AddCard(59281922, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Drei
Debug.AddCard(59281922, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Drei
Debug.AddCard(59281922, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Drei
Debug.AddCard(1142880, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Nachster
Debug.AddCard(1142880, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Nachster
Debug.AddCard(1142880, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Nachster
Debug.AddCard(1142880, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Nachster
Debug.AddCard(1142880, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Nachster
Debug.AddCard(1142880, 0, 0, LOCATION_GRAVE, 0, POS_FACEUP) --Nachster


--AI's grave
Debug.AddCard(70095154, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Cyber Dragon
Debug.AddCard(70095154, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Cyber Dragon
Debug.AddCard(70095154, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Cyber Dragon
Debug.AddCard(70095154, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Cyber Dragon
Debug.AddCard(70095154, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Cyber Dragon
Debug.AddCard(70095154, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Cyber Dragon
Debug.AddCard(5373478, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Zwei
Debug.AddCard(5373478, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Zwei
Debug.AddCard(5373478, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Zwei
Debug.AddCard(5373478, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Zwei
Debug.AddCard(5373478, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Zwei
Debug.AddCard(5373478, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Zwei
Debug.AddCard(23893227, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Core
Debug.AddCard(23893227, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Core
Debug.AddCard(23893227, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Core
Debug.AddCard(23893227, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Core
Debug.AddCard(23893227, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Core
Debug.AddCard(23893227, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Core
Debug.AddCard(29975188, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Vier
Debug.AddCard(29975188, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Vier
Debug.AddCard(29975188, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Vier
Debug.AddCard(29975188, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Vier
Debug.AddCard(29975188, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Vier
Debug.AddCard(29975188, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Vier
Debug.AddCard(46724542, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Sieger
Debug.AddCard(46724542, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Sieger
Debug.AddCard(46724542, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Sieger
Debug.AddCard(46724542, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Sieger
Debug.AddCard(46724542, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Sieger
Debug.AddCard(46724542, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Sieger
Debug.AddCard(56364287, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Herz
Debug.AddCard(56364287, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Herz
Debug.AddCard(56364287, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Herz
Debug.AddCard(56364287, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Herz
Debug.AddCard(56364287, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Herz
Debug.AddCard(56364287, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Herz
Debug.AddCard(59281922, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Drei
Debug.AddCard(59281922, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Drei
Debug.AddCard(59281922, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Drei
Debug.AddCard(59281922, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Drei
Debug.AddCard(59281922, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Drei
Debug.AddCard(59281922, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Drei
Debug.AddCard(1142880, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Nachster
Debug.AddCard(1142880, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Nachster
Debug.AddCard(1142880, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Nachster
Debug.AddCard(1142880, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Nachster
Debug.AddCard(1142880, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Nachster
Debug.AddCard(1142880, 1, 1, LOCATION_GRAVE, 0, POS_FACEUP) --Nachster

Debug.ReloadFieldEnd()
aux.BeginPuzzle()

Debug.ShowHint("Get as much ATK as possible!")
Debug.ShowHint("This is a Tag Duel, and your partners have worked to engineer this situation!")
