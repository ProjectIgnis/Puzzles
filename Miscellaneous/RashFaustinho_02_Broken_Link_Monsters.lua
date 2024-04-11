--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--Partially rewritten by edo9300


--[[message
Start with a useless hand, and combo your way to victory! 
This puzzle uses banned monsters, such as Summon Sorceress or pre-errata Firewall Dragon.

Creator: RashFaustinho
Your Starting LP: 100
Opponent's Starting LP: 15000
Difficulty: 9/10
]]


Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetAIName("Yami Yugi")
Debug.SetPlayerInfo(0,100,0,0)
Debug.SetPlayerInfo(1,15000,0,0)

--Main Deck (yours)
Debug.AddCard(12213463,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(26118970,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(48355999,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(59755122,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(60004971,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(71692913,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Extra Deck (yours)
Debug.AddCard(11969228,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(13143275,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(29296344,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(44405066,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(5043020,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(50588353,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(52615248,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(581014,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(61665255,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(67556500,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(86148577,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(86238081,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(97661969,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(98978921,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(98978921,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(67724379,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(87564352,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(59983499,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(6740720,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(69380702,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(74677422,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (opponent's)
Debug.AddCard(24096499,1,1,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (opponent's)
Debug.AddCard(46986414,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(5405694,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
Debug.AddCard(38033121,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)
Debug.AddCard(30208479,1,1,LOCATION_MZONE,0,POS_FACEUP_ATTACK,true)
Debug.AddCard(66889139,1,1,LOCATION_MZONE,4,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (opponent's)
Debug.AddCard(44095762,1,1,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(75249652,1,1,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(40838625,1,1,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(5650082,1,1,LOCATION_SZONE,0,POS_FACEDOWN)
Debug.AddCard(47475363,1,1,LOCATION_SZONE,4,POS_FACEDOWN)

Debug.ReloadFieldEnd()
aux.BeginPuzzle()

Debug.ShowHint("Hint 1: Odd-Eyes Raging Dragon is the only card in your Extra Deck capable of clearing the opponent's field")
Debug.ShowHint("Hint 2: In this puzzle Firewall Dragon has its pre-errata non-once per turn effect")

--Solution (Video): https://www.youtube.com/watch?v=-DdMvYK7nmI