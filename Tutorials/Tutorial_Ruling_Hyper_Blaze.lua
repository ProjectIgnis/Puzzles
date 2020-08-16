--Created by AGoodDoctor (FTL) using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--Partially rewritten by edo9300

Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,50,0,0)
Debug.SetPlayerInfo(1,2800,0,0)

Debug.ShowHint("Special Summon-only monsters need to be Special Summoned by their own condition written on the card to be properly Special Summoned.")
Debug.ShowHint("If their Summon is negated or if they are Summoned ignoring conditions, sent from the hand/Deck to the Graveyard or banished .etc; you cannot Special Summon them as they aren't properly Summoned.")
Debug.ShowHint("Summon Uria, then Hamon, then Raviel, use them all to Link Summon Decode Talker. Then activate Hyper Blaze's effect to Special Summon a Sacred Beast.")
Debug.ShowHint("Remember that cards such as Chaos Summoning Beast or Dark Summoning Beast do not properly Summon the the Sacred Beasts. Therefore Hyper Blaze can't Special Summon them from the Graveyard.")

--Extra Deck (yours)
Debug.AddCard(1861629,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(12958919,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(54828837,0,0,LOCATION_HAND,1,POS_FACEDOWN)
Debug.AddCard(54828837,0,0,LOCATION_HAND,2,POS_FACEDOWN)
Debug.AddCard(54828837,0,0,LOCATION_HAND,3,POS_FACEDOWN)
Debug.AddCard(69890967,0,0,LOCATION_HAND,4,POS_FACEDOWN)
Debug.AddCard(32491822,0,0,LOCATION_HAND,5,POS_FACEDOWN)
Debug.AddCard(6007213,0,0,LOCATION_HAND,6,POS_FACEDOWN)
Debug.AddCard(27288416,0,0,LOCATION_HAND,6,POS_FACEDOWN)

--Spell & Trap Zones (yours)
Debug.AddCard(16317140,0,0,LOCATION_SZONE,4,POS_FACEUP)
Debug.AddCard(97077563,0,0,LOCATION_SZONE,0,POS_FACEUP)
Debug.AddCard(97077563,0,0,LOCATION_SZONE,1,POS_FACEUP)
Debug.AddCard(97077563,0,0,LOCATION_SZONE,2,POS_FACEUP)

--Monster Zones (opponent)
Debug.PreAddCounter(
	Debug.AddCard(63092423,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK),
	0x44,
	3
)

--Spell & Trap Zones (opponent)
Debug.AddCard(44095762,1,1,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(44095762,1,1,LOCATION_SZONE,3,POS_FACEDOWN)

Debug.ReloadFieldEnd()
aux.BeginPuzzle()
