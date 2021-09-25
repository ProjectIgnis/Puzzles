--Created by TheGoodDoctor using senpaizuri's Puzzle Maker (updated by Naim & Larry126). 
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,5000,0,0)
Debug.SetPlayerInfo(1,5000,0,0)

Debug.ShowHint("In Ritual Basics tutorial, we managed to do a basic Ritual Summon. There are other ways to Ritual Summon in the game.")
Debug.ShowHint("There are some Ritual Spell Cards that can summon a number of different Ritual Monsters other than just a specific listed monster.")
Debug.ShowHint("There are some Ritual Spell Cards that have different requirements. Instead of equaling or exceeding the levels, some may require tributes having the exact level of the Ritual Monster ")
Debug.ShowHint("Other Ritual Spell may use different resources other than Levels, such as using LP or ATK.")
Debug.ShowHint("Do note that you cannot 'Overtribute', as in you cannot use more monsters that needed that would be redundant, even if the Ritual Spells says you can 'exceed' the Level of the Ritual Monster.")
Debug.ShowHint("For example: You cannot use a Level 9 monster and a Level 1 monster for tribute to Ritual Summon a Level 8 Ritual monster.")
Debug.ShowHint("This is because the Level 9 was already sufficient and cannot you add anymore tributes to it, therefore you can't tribute the second monster. ")
Debug.ShowHint("Experiment with the cards you have and defeat your opponent.")

--Hand (yours)
Debug.AddCard(22398665,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(64631466,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(39618799,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(17266660,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(14735698,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(52068432,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(56827051,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(56350972,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(80566312,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(39996157,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(52846880,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones (yours)
Debug.AddCard(87322378,0,0,LOCATION_MZONE,0,POS_FACEUP_ATTACK,true)

--Monster Zones (opponent's)
Debug.AddCard(65240384,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE,true)

--Spell & Trap Zones (opponent's)
Debug.AddCard(44095762,1,1,LOCATION_SZONE,2,POS_FACEDOWN)

--Hand (opponent's)
Debug.AddCard(19665973,1,1,LOCATION_HAND,0,POS_FACEDOWN)

--GY (opponent's)
Debug.AddCard(50185950,1,1,LOCATION_GRAVE,0,POS_FACEUP)

Debug.ReloadFieldEnd()
aux.BeginPuzzle()
