--Original Puzzle Name: QB04
Debug.SetAIName("Pseudo AI")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,3)
Debug.SetPlayerInfo(0,100,0,0)
Debug.SetPlayerInfo(1,16900,0,0)

--[[message
A puzzle to use Shooting Star Dragon


Your Starting LP: 100
Opponent's Starting LP: 16900
Complexity: 5/10.
Objective: Win this turn.

Note: This puzzle is set to Master Rules 3
]]

Debug.AddCard(85742772,1,1,LOCATION_SZONE,2,POS_FACEUP)
Debug.AddCard(31560081,1,1,LOCATION_MZONE,1,POS_FACEUP_DEFENSE)
Debug.AddCard(62892347,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE)
Debug.AddCard(23693634,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)

Debug.AddCard(47297616,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(11747708,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(16638212,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(97268402,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(63977008,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(67270095,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(04178474,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(05318639,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
tc=Debug.AddCard(44508094,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(63487632,0,0,LOCATION_GRAVE,0,POS_FACEUP)
tc:CompleteProcedure()

Debug.AddCard(98045062,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(51790181,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(98045062,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(96363153,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(14087893,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(33420078,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(38699854,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(50091196,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(24696097,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

Debug.ReloadFieldEnd()
Debug.ShowHint("Tip: Stardust Dragon was properly Summoned first.")
aux.BeginPuzzle()


--[[Solution
1-Chain Link 1 activate MST, targetting Gravity Bind, LaDD will chain
2-Chain Link 3 activate Raigeki Break, discarding Plaguespreader Zombie, targetting LaDD
3-Chain Link 4 Emeny Controller to change Arcana Force the fool to Attack Position. Let the chain Resolve
4- Trigger LaDD's GY effect, summon Stardust Dragon in Attack position
5-Activate Tunning, add Junk Synchron to the hand
6-Normal Summon Junk Synchron, target the tuner monster that was sent with Tuning
7-Activate Enemy Controler, tribute Junk Synchron, gain control of Magician of Faith
8-Activate Book of Moon, flip Magician of Faith to face-down defense position
9-Flip Magician of Faith, add Enemy Controller to hand
10-Synchro Summon Formula Synchro, Draw 1 card
11-Activate Plaguespreader Zombie's effect, returning the card you drew to the deck
12-Synchro Summon Shooting Star Dragon using Formula Synchron and Stardust Dragon
13-Activate pot of Benevolence, returning a tuner monster and Junk Synchron to the deck
14-Activate Shooting Star Dragon, revealing 5 tuners in the deck
15-Activate Enemy Controller, tributing Plaguespreader Zombie to get control of Colossal Warrior
16-Attack Arcana Force the Fool
]]