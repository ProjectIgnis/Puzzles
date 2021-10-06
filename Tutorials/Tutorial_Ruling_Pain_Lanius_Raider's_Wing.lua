--Created by The Good Doctor using senpaizuri's Puzzle Maker (updated by Naim & Larry126, partially rewritten by edo9300)
--Ruling Source: https://www.db.yugioh-card.com/yugiohdb/faq_search.action?ope=5&fid=18354&request_locale=ja

Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,1300,0,0)
Debug.SetPlayerInfo(1,1300,0,0)

Debug.ShowHint("The effect of Raidraptor - Pain Lainus is as follows:")
Debug.ShowHint("`If this card is in your hand: You can target 1 'Raidraptor' monster you control that has a Level; take damage equal to its ATK or DEF (whichever is lower, but your choice if tied), ...") 
Debug.ShowHint("`... and if you do, Special Summon this card, and if you do that, this card's Level becomes the current Level of the targeted monster.") 
Debug.ShowHint("Raider's Wing 0 ATK is it's lowest stat and it's not possible to take zero damage. Pain Lanius cannot target Raider's Wing with it's effect due to that.")

--Extra Deck (yours)
Debug.AddCard(36429703,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(46589034,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(50913601,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(52159691,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(27288416,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (opponent's)
Debug.AddCard(30606547,1,1,LOCATION_SZONE,2,POS_FACEUP)

Debug.ReloadFieldEnd()
aux.BeginPuzzle()
