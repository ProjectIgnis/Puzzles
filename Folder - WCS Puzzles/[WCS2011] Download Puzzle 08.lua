--wcs2011-08
Debug.SetAIName("高性能电子头脑")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)
Debug.SetPlayerInfo(0,100,0,0)
Debug.SetPlayerInfo(1,14000,0,0)
Debug.AddCard(10875327,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(99995595,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(58924378,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(36261276,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(31550470,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(31000575,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(83778600,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(5554990,0,0,LOCATION_MZONE,0,POS_FACEUP_ATTACK)
Debug.AddCard(18407024,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(81896771,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(402568,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK)
Debug.AddCard(47346845,0,0,LOCATION_MZONE,4,POS_FACEUP_ATTACK)
Debug.AddCard(2772236,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(29765339,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(75285069,1,1,LOCATION_MZONE,0,POS_FACEUP_ATTACK)
Debug.AddCard(20951752,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(11260714,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(5645210,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)
Debug.AddCard(55690251,1,1,LOCATION_MZONE,4,POS_FACEUP_ATTACK)
Debug.AddCard(19252988,1,1,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(95701283,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(47664723,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()
--[[
Solution:
Activate "Wattcastle".
Synchro Summon "Wattchimera" and "Watthydra" in no particular order, but do not use "Wattpheasant" as a Synchro Material Monster.
Activate "Recycling Batteries", selecting "Wattgiraffe" and any other monster.
Normal Summon "Wattgiraffe".
BP (Battle Phase):

Attack directly with "Wattpheasant". The effect of "Wattpheasant" will activate afterwards; select "Splendid Venus" for its effect.
Attack directly with "Watthydra". The effect of "Watthydra" will activate afterwards; select "Earthbound Immortal Aslla piscu".
Attack directly with "Wattchimera". The effect of "Wattchimera" will activate afterwards, placing "Majestic Mech - Goryu" from your opponent's hand on the top of their Deck.
Attack directly with "Wattgiraffe".
Activate "Escape from the Dark Dimension", selecting "Earthbound Immortal Aslla piscu".
Attack directly with "Earthbound Immortal Aslla piscu".
Activate "Foolish Revival", selecting "Darklord Edeh Arae".
Activate "Interdimensional Matter Transporter", selecting "Earthbound Immortal Aslla piscu". After it resolves, the effect of "Earthbound Immortal Aslla piscu" will activate, destroying all monsters your opponent controls and inflicting a total of 4000 damage.
Activate "Conscription", which will Special Summon "Majestic Mech - Goryu".
Attack for game.
]]