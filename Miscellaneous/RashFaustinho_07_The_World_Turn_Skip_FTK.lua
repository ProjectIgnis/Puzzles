--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--Partially rewritten by edo9300

--[[message
Use the effect of "Arcana Force XXI - The World" to skip your opponent's turn.

There are MULTIPLE solutions to this puzzle, and even one way to clear it regardless of Coin Toss RNG. Can you figure it out?

Creator: RashFaustinho
Your Starting LP: 8000
Opponent's Starting LP: 8000
Difficulty: 3/10
]]

Debug.ReloadFieldBegin(DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,8000,0,1)
Debug.SetPlayerInfo(1,8000,0,1)

--Main Deck (yours)
Debug.AddCard(76302448,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(30913809,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(73206827,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(23846921,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(39761418,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(61175706,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(3376703,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(3376703,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(62892347,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(35781051,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Extra Deck (yours)
Debug.AddCard(35306215,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(14558127,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(24224830,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(39761418,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(11819473,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(97526666,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Main Deck (opponent's)
Debug.AddCard(33396948,1,1,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (opponent's)
Debug.AddCard(14558127,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(07902349,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(08124921,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(44519536,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(70903634,1,1,LOCATION_HAND,0,POS_FACEDOWN)

Debug.ReloadFieldEnd()

-- There are multiple ways to solve this puzzle.
-- The following solution is completely free from coin toss RNG.
-- 1 Summon Planet Pathfinder, activate effect
-- 2 Opponent activates Ash, chain Called By The Grave
-- 3 Activate Light Barrier
-- 4 Summon Arcana Force XIX The Sun
-- 5 Choose Heads and Set Arcana Spread
-- 6 Use Arcana Spread, Summon Arcana Forve V The Hierophant
-- 7 Choose Heads and Special Summon Arcana Force IV The Emperor
-- 8 Choose any coin effect for The Emperor
-- 9 Link summon Condemned Darklord using any 2 monsters
-- 10 Activate Arcana Reading
-- 11 Choose Heads and add The Wave of Light
-- 12 Activate The Wave of Light effect, discard Ash Blossom, add The World and The Sun
-- 13 Activate Arcana Reading GY effect
-- 14 Normal Summon The World by banishing 2 monsters from the Graveyard
-- 15 Activate The World Heads effect, during the End Phase send the other two monsters to the Graveyard
-- 16 The opponent's turn is now skipped. Draw for your turn.
-- 17 If you didn't draw The Empress: Use The Wave of Light, discard the drawn card, add The Empress and any other monster.
-- 18 Normal Summon The Empress. Coin Toss is irrelevant.
-- 18 Special Summon The Sun from your hand.
-- 19 If The Sun destroys Wave of Light, banish Arcanda Spread from GY and add it back to your hand, then activate it.
-- 20 Attack for 8200 points of damage.
