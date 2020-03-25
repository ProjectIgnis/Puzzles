--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! 5D's World Championship 2010: Reverse of Arcadia"

	Your Starting LP: 3000
	Opponent's Starting LP: 12200
	Complexity: 5/10.
	Objective: Win this turn.
]]
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)
Debug.SetAIName("WCS 2010")

Debug.SetPlayerInfo(0,3000,0,0)
Debug.SetPlayerInfo(1,12200,0,0)

Debug.AddCard(38033124,1,1,LOCATION_DECK,0,POS_FACEUP)
Debug.AddCard(71413901,0,0,LOCATION_HAND,0,POS_FACEUP)
Debug.AddCard(44947065,0,0,LOCATION_SZONE,0,POS_FACEUP)
Debug.AddCard(50755,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(84970821,1,1,LOCATION_SZONE,1,POS_FACEUP)
Debug.AddCard(53567095,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(44947065,1,1,LOCATION_SZONE,2,POS_FACEUP)
Debug.AddCard(29401950,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(44095762,1,1,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(70231910,0,0,LOCATION_SZONE,4,POS_FACEDOWN)
Debug.AddCard(70342110,1,1,LOCATION_SZONE,4,POS_FACEDOWN)
Debug.AddCard(94853057,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(89194103,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(82199284,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(47395382,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(44155002,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK)
Debug.AddCard(3510565,0,0,LOCATION_MZONE,4,POS_FACEDOWN_DEFENSE)
Debug.AddCard(2009101,0,0,LOCATION_HAND,1,POS_FACEUP)
Debug.AddCard(5318639,0,0,LOCATION_HAND,2,POS_FACEUP)
Debug.AddCard(25789292,0,0,LOCATION_HAND,3,POS_FACEUP)
Debug.AddCard(24508238,0,0,LOCATION_HAND,4,POS_FACEUP)
Debug.AddCard(27869883,0,0,LOCATION_DECK,0,POS_FACEUP)
Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()

--[[Solution

M1 (Main Phase 1):

Normal Summon "Breaker the Magical Warrior" from your Hand.
Activate the effect of "Breaker the Magical Warrior" from your field.
Designate "Curse of Darkness" to destroy.
Activate "Dark Core" from your field.
Discard "Blackwing - Gale the Whirlwind" from your hand as a cost of "Dark Core".
Designate "The Fabled Kudabbi" on your opponent's side of the field to remove from play.
Activate "Forbidden Chalice" from your hand.
Designate "Banisher of the Radiance" on your field to increase ATK. (its effect is also negated).
Flip Summon "Stealth Bird". (its effect is activated).
Activate "Icarus Attack" from your field.
Select "Stealth Bird" on your field as Tribute.
Select "Fabled Ragin" and "Burden of the Mighty" on your opponent's side of the field as targets.
Activate the effect of "D.D. Crow" in your hand.
Select "Fabled Ragin" to remove from the Graveyard. (from your opponent's Graveyard).
SET "Mystical Space Typhoon" from your hand.
Proceed to Battle Phase.

BP (Battle Phase).

Attack directly with "Banisher of Radiance".
Attack directly with "The Fabled Unicore".
Attack directly with "Mist Valley Falcon".
Select "Mystical Space Typhoon" on your field to return to the Hand.

When your opponent activates "Mirror Force", chain IMMEDIATELY (choose "YES" when asked) the effect of "Mystical Space Typhoon" in your hand.
Designate "Burden of the Mighty" on YOUR field to destroy. (the effect of "Mirror Force" is negated.
Attack directly with "Breaker the Magical Warrior".
When you declare battle with "Breaker the Magical Warrior", activate IMMEDIATELY (choose "YES" when asked) the effect of "Magician's Circle" from your field.
Select "Shadowpriestess of Ohm" to Special Summon.
When your Opponent Special Summons "Dark Magician Girl", activate IMMEDIATELY (choose "YES" when asked) the effect of "Bottomless Trap Hole" from your field. ("Dark Magician Girl" is destroyed and "Breaker the Magical Warrior" completes its attack.
Attack directly with "Shadowpriestess of Ohm".
Proceed to Main Phase 2.

MP2 (Main Phase 2)

Activate the effect of "Shadowpriestess of Ohm" on your field.

Select "Breaker the Magical Warrior" on your field as tribute. (deals 800 damage to your opponent).
Activate again the effect of "Shadowpriestess of Ohm" on your field.
Select the same "Shadowpriestess of Oh" on your field as tribute. (deals 800 damage to your opponent).

]]
