--[[message
Reproduces a Duel Puzzle from "Yu-Gi-Oh! 5D's World Championship 2010: Reverse of Arcadia"

	Your Starting LP: 400
	Opponent's Starting LP: 2000
	Complexity: 5/10.
	Objective: Win this turn.
]]
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)
Debug.SetAIName("WCS 2010")
Debug.SetPlayerInfo(0,400,0,0)
Debug.SetPlayerInfo(1,2000,0,0)
Debug.AddCard(21785144,0,0,LOCATION_HAND,0,POS_FACEUP)
Debug.AddCard(83968380,0,0,LOCATION_SZONE,0,POS_FACEDOWN)
Debug.AddCard(83968380,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(12607053,1,1,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(84968490,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(40633297,1,1,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(83968380,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(70342110,1,1,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(70342110,1,1,LOCATION_SZONE,4,POS_FACEDOWN)
Debug.AddCard(64752646,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(21502796,0,0,LOCATION_HAND,1,POS_FACEUP)
Debug.AddCard(691925,0,0,LOCATION_HAND,2,POS_FACEUP)
Debug.AddCard(691925,0,0,LOCATION_HAND,3,POS_FACEUP)

Debug.AddCard(94381039,0,0,LOCATION_DECK,0,POS_FACEUP)
Debug.AddCard(44178886,0,0,LOCATION_DECK,0,POS_FACEUP)
Debug.AddCard(2420921,0,0,LOCATION_DECK,0,POS_FACEUP)
Debug.AddCard(47852925,0,0,LOCATION_DECK,0,POS_FACEUP)
Debug.AddCard(38815069,0,0,LOCATION_DECK,0,POS_FACEUP)
Debug.AddCard(691925,0,0,LOCATION_DECK,0,POS_FACEUP)
Debug.AddCard(95503687,0,0,LOCATION_DECK,0,POS_FACEUP)
Debug.AddCard(96235275,0,0,LOCATION_DECK,0,POS_FACEUP)
Debug.AddCard(58996430,0,0,LOCATION_DECK,0,POS_FACEUP)
Debug.AddCard(59019082,0,0,LOCATION_DECK,0,POS_FACEUP)
Debug.AddCard(691925,0,0,LOCATION_DECK,0,POS_FACEUP)
Debug.AddCard(47852925,0,0,LOCATION_DECK,0,POS_FACEUP)
Debug.AddCard(43422537,0,0,LOCATION_DECK,0,POS_FACEUP)
Debug.AddCard(58996430,0,0,LOCATION_DECK,0,POS_FACEUP)
Debug.AddCard(7183277,0,0,LOCATION_DECK,0,POS_FACEUP)
Debug.AddCard(47852925,0,0,LOCATION_DECK,0,POS_FACEUP)
Debug.AddCard(31036355,0,0,LOCATION_DECK,0,POS_FACEUP)
Debug.AddCard(83725008,0,0,LOCATION_DECK,0,POS_FACEUP)
Debug.AddCard(58996430,0,0,LOCATION_DECK,0,POS_FACEUP)
Debug.AddCard(58996430,0,0,LOCATION_DECK,0,POS_FACEUP)
Debug.AddCard(58996430,0,0,LOCATION_DECK,0,POS_FACEUP)
Debug.AddCard(22624373,0,0,LOCATION_DECK,0,POS_FACEUP)
Debug.AddCard(57774843,0,0,LOCATION_DECK,0,POS_FACEUP)
Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()


--[[Solution
M1 (Main Phase 1):

(Ancient Forest is automatically activated)

Activate "Needlebug Nest" from your Field. (5 Cards are sent from the top of your deck to the graveyard, and the effect of "Wulf, Lightsworn Beast" is automatically activated).
You can choose either attack or defense position for "Wulf, Lightsworn beast". (When it is summoned, your opponent activates the effect of "Flying Fortress SKY FIRE").
Immediately Chain "Interdimensional Matter Transporter" to the effect of "Flying Fortress SKY FIRE".
Designate "Wulf, Lightsworn beast" from your Field to remove from play. (The effect of "Flying Fortress SKY FIRE" is canceled)
Activate "Silent Doom" from your Hand.
Select "Tuned Magician" from your Graveyard due to the effect of "Silent Doom". ("Tuned Magician" is Special Summoned in defense position).
Activate "Gemini Spark" from your Hand.
Select "Tuned Magician" in your Field as a tribute.
Designate "Magic Cylinder" in your opponent's side of the Field to destroy. (you also draw a card).
Special Summon "Woodland Archer" from your Hand.
You can choice either attack or defense position for "Woodland Archer".
Activate the effect of "Woodland Archer". (it is tributed).
Select "Dark Valkyria" from your Deck due to the effect of "Woodland Archer". (It is added to your hand)
Activate "Valhalla, Hall of the Fallen" from your Hand.
Activate the effect of "Valhalla, Hall of the Fallen" from your Field.
select "Dark Valkyria" from your Hand to Special Summon.
You can choice either attack or defense position for "Dark Valkyria".
Activate "Supervise" from your Hand.
Designate "Dark Valkyria" in your Field to equip.
Activate the effect of "Dark Valkyria".
Select "Place a counter on a monster".
Activate again the effect of "Dark Valkyria".
Select "Destroy 1 monster".
Designate "Flying Fortress SKY FIRE" in your opponent's side of the Field to destroy.
Activate "Spell Power Grasp" from your Hand.
Select "Dark Valkyria" in your field to place a counter on it.
Activate again the effect of "Dark Valkyria".
Select "Destroy 1 monster".
Designate "Hundred Eyes Dragon" to destroy.
Activate "Different Dimension Gate" from your Field.
Designate "Moon Dragon Quilla" in your opponent's side of the Field and "Dark Valkyria" in your Field. (they are both removed from play, Supervise is destroyed and sent to the graveyard and its effect is automatically activated).
Select "Tuned Magician" from your Graveyard to special summon.
You can choose either attack or defense position for "Tuned Magician".
Activate "Return from the Different Dimension" from your Field. (you pay 400 Life points)
Select "Wulf, Lightsworn Beast" and "Dark Valkyria" to Special Summon.
Select attack position for "Wulf, Lightsworn Beast".
You can choose either attack or defense position for "Dark Valkyria.
Normal Summon "Dark Valkyria" from your Field (To have it be treated as an Effect Monster).
Activate the effect of "Dark Valkyria".
Select "Place a counter on a monster".
Activate again the effect of "Dark Valkyria".
Select "Destroy 1 monster".
Designate "Earthbound Immortal Uru" on your opponent's side of the Field to destroy.
Activate "Super Double Summon" from your Hand.
Designate "Tuned Magician" in your Field. (it gains its effect).
Synchro Summon "Black Brutdrago" from your Extra Deck by using "Tuned Magician" and "Dark valkyria" as Synchro materials.
Activate the effect of "Black Brutdrago".
Designate "Chthonian Emperor Dragon" in your hand to send to the Graveyard.
Designate "Mirror Force" in your opponent's side of the Field to destroy.
Proceed to Battle Phase.

BP (Battle Phase)

Attack Sun "Dragon Inti" with "Black Brutdrago". (Both monsters are destroyed).
Immediately activate the effect of "Black Brutdrago" in your Graveyard(choose "YES" when asked).
Select "Chthonian Emperor Dragon" in your Graveyard (to special summon due to the effect of "Black Brutdrago").
Select attack position for "Chthonian Emperor Dragon".
Attack directly with "Wulf, Lightsworn Beast".
Attack directly with "Chthonian Emperor Dragon".
Attack directly again with "Chthonian Emperor Dragon" (due to its effect).

]]