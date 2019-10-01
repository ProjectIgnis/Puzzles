--Lunalights Zoodiac
--Created by Naim
Debug.SetAIName("AI_Ygopro")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)
Debug.SetPlayerInfo(0,10,0,0)
Debug.SetPlayerInfo(1,56000,0,0)

--[[message
And this is one of the many reasons Zoodiac Ratpier and Zoodiac Broadbull should stay banned...
Try to inflict 56000 Damage with Lunalights.]]

Debug.ShowHint("Win this turn!!")

--your hand
Debug.AddCard(1475311,0,0,LOCATION_HAND,0,POS_FACEUP_ATTACK)		--allure of darkness
Debug.AddCard(35618217,0,0,LOCATION_HAND,0,POS_FACEUP_ATTACK)		--kaleido chick
Debug.AddCard(35618217,0,0,LOCATION_HAND,0,POS_FACEUP_ATTACK)		--kaleido chick
Debug.AddCard(94919024,0,0,LOCATION_HAND,0,POS_FACEUP_ATTACK)		--crimson fox
Debug.AddCard(83190280,0,0,LOCATION_HAND,0,POS_FACEUP_ATTACK)		--tiger

--your deck
Debug.AddCard(78872731,0,0,LOCATION_DECK,0,POS_FACEDOWN)			--ratpier
Debug.AddCard(78872731,0,0,LOCATION_DECK,0,POS_FACEDOWN)			--ratpier
Debug.AddCard(78872731,0,0,LOCATION_DECK,0,POS_FACEDOWN)			--ratpier
Debug.AddCard(11317977,0,0,LOCATION_DECK,0,POS_FACEDOWN)			--black sheep
Debug.AddCard(24094653,0,0,LOCATION_DECK,0,POS_FACEDOWN)			--polymerization
Debug.AddCard(11439455,0,0,LOCATION_DECK,0,POS_FACEDOWN)			--blue cat
Debug.AddCard(47705572,0,0,LOCATION_DECK,0,POS_FACEDOWN)			--wolf
Debug.AddCard(46060017,0,0,LOCATION_DECK,0,POS_FACEDOWN)			--barrage

--your extra deck
Debug.AddCard(24550676,0,0,LOCATION_EXTRA,0,POS_FACEUP_ATTACK)		--leo dancer
Debug.AddCard(97165977,0,0,LOCATION_EXTRA,0,POS_FACEUP_ATTACK)		--phanter dancer
Debug.AddCard(51777272,0,0,LOCATION_EXTRA,0,POS_FACEUP_ATTACK)		--cat dancer
Debug.AddCard(11510448,0,0,LOCATION_EXTRA,0,POS_FACEUP_ATTACK)		--tigermortar
Debug.AddCard(48905153,0,0,LOCATION_EXTRA,0,POS_FACEUP_ATTACK)		--drident
Debug.AddCard(85115440,0,0,LOCATION_EXTRA,0,POS_FACEUP_ATTACK)		--broadbull
Debug.AddCard(85115440,0,0,LOCATION_EXTRA,0,POS_FACEUP_ATTACK)		--broadbull
Debug.AddCard(74393852,0,0,LOCATION_EXTRA,0,POS_FACEUP_ATTACK)		--boarbow

--opponent's
Debug.AddCard(62892347,1,1,LOCATION_MZONE,0,POS_FACEUP_ATTACK)		--the fool
Debug.AddCard(28859794,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)		--shield wing
Debug.AddCard(15610297,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)		--vijam
Debug.AddCard(15610297,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)		--vijam
Debug.AddCard(15610297,1,1,LOCATION_MZONE,4,POS_FACEUP_ATTACK)		--vijam

Debug.AddCard(5650082,1,1,LOCATION_SZONE,0,POS_FACEDOWN)			--storming
Debug.AddCard(40838625,1,1,LOCATION_SZONE,1,POS_FACEDOWN)			--quaking
Debug.AddCard(44656491,1,1,LOCATION_SZONE,2,POS_FACEUP)				--messenger of piece
Debug.AddCard(44095762,1,1,LOCATION_SZONE,3,POS_FACEDOWN)			--mirror
Debug.AddCard(75249652,1,1,LOCATION_SZONE,4,POS_FACEDOWN)			--blazing

--Insert any message here
--insert additional message here
Debug.ReloadFieldEnd()
aux.BeginPuzzle()
