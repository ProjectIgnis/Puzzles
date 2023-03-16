--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--Partially rewritten by edo9300

--[[message
Help Exodia obliterate the opponent's field!

Creator: RashFaustinho
Your Starting LP: 400
Opponent's Starting LP: 4000
Difficulty: 1/10
]]

Debug.SetAIName("Seto Kaiba")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,1000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)

--Main Deck (yours)
Debug.AddCard(38033121,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(80161395,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(91152256,0,0,LOCATION_DECK,0,POS_FACEDOWN)

-- Grave (yours)
Debug.AddCard(71703785,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(46986414,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Extra Deck (yours)
Debug.AddCard(50237654,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(11765832,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(73452089,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(39915560,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(10817524,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(54757758,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(84133008,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(24094653,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(32062913,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(39910367,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(21570001,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(53046408,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(23020408,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(70903634,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)
Debug.AddCard(44519536,0,0,LOCATION_MZONE,4,POS_FACEUP_ATTACK,true)
Debug.AddCard(8124921,0,0,LOCATION_MZONE,0,POS_FACEUP_ATTACK,true)
Debug.AddCard(7902349,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)
Debug.AddCard(58604027,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Hand (opponent's)
Debug.AddCard(42352091,1,1,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(89631139,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(89631139,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)
Debug.AddCard(89631139,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)

Debug.ReloadFieldEnd()
aux.BeginPuzzle()

--[[Solution
1-Activate Magic Citadel of Endymion
2-Activate Polymerization, and immediately chain Soul Servant first and Emergency Provisions afterwards
3-With Emergency Provisions' effect, send all spells (except for the field spell) to the grave to gain 2000 LP
4-With Soul Servant's Effect, return Palladium Oracle Mahad to the top of the deck
5-With Polymerization's Effect, special summon Garura from the extra deck by fusing two "Forbidden One" Normal monsters
6-Normal summon Monster Eye, use effect to pay 1000 LP and recover Polymerization from the GY
7-Use Polymerization, fuse the two other "Forbidden One" Normal monsters into First of The Dragons
8-Monster Eye, use effect to pay 1000 LP and recover Polymerization from the GY
9-Use Polymerization, fuse the two Fusion monsters into Starving Venom
10-Activate Garura effect, activate Mahad effect
11-Activate Clear New World, destroy Mahad, special summon Celtic Guardian, special summon Dark Magician via Mahad's effect
12-Soul Servant effect in the GY, draw 2, use Mystic Wok to tribute Starting Venom and gain 3600 LP
13-Monster Eye, use effect to pay 1000 LP and recover Polymerization from the GY
14-Fuse Dark Magician and Celtig Guardian into Dark Cavalry
15-Monster Eye, use effect to pay 1000 LP and recover Polymerization from the GY
16-Fuse Dark Cavalry and Dark Magician Girl into The Dark Magicians
17-Monster Eye, use effect to pay 1000 LP and recover Polymerization from the GY
18-Fuse The Dark Magicians and Monster Eye into Mudragon of The Swamp
19-Activate Mega Ton Magical Cannon
20-Attack with The Legendary Exodia Incarnate for game
]]
