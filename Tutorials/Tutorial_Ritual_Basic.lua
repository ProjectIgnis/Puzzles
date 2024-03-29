--Created by the Good Doctor using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,500,0,0)
Debug.SetPlayerInfo(1,400,0,0)

Debug.ShowHint("Ritual Monsters are distinguished by their non-patterned blue border. Ritual Monsters are Special Summon monsters that are summoned by Ritual Summon.")
Debug.ShowHint("A Ritual Monster is summoned by activating a Ritual Spell Card. You must then follow the Ritual Spell Card's procedure.")
Debug.ShowHint("You must tribute any number of monsters whose sums Levels are equal or are greater than the Level of the Ritual Monster you want to summon.")
Debug.ShowHint("A Ritual Monster can be the Ritual Spell specified in the monster's card text. And the Ritual Spell Card lists what it can summon.")
Debug.ShowHint("Summon Black Luster Soldier and defeat your opponent.")

--Hand (yours)
Debug.AddCard(55761792,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(5405694,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(28279543,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(6368038,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(44508094,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

Debug.ReloadFieldEnd()
aux.BeginPuzzle()