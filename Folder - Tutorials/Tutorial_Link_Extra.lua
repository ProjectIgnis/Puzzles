--Extra Link Tutorial 1 (using your own monsters)
Debug.SetAIName("TutorialBot")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,4) -- 4 = new master rule
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

Debug.AddCard(98978921,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) -- Link Spider 1
Debug.AddCard(98978921,0,0,LOCATION_EXTRA,0,POS_FACEDOWN) -- Link Spider 2

Debug.AddCard(05043010,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK) -- Firewall Dragon
Debug.AddCard(34472920,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK) -- Honeybot
Debug.AddCard(32617464,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK) -- Trigate Wizard

Debug.AddCard(36211150,0,0,LOCATION_MZONE,0,POS_FACEUP_DEFENSE) -- Bitron
Debug.AddCard(32295838,0,0,LOCATION_MZONE,4,POS_FACEUP_ATTACK) -- Digitron

Debug.AddCard(89631139,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK) -- Blue-Eyes White Dragon 1
Debug.AddCard(89631139,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK) -- Blue-Eyes White Dragon 2
Debug.AddCard(89631139,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK) -- Blue-Eyes White Dragon 3

Debug.ReloadFieldEnd()

Debug.ShowHint("Normally, you can only use 1 Extra Monster Zone at a time.")
Debug.ShowHint("The moment you successfully Summon a monster in an Extra Monster Zone, the other zone becomes your opponent's.")
Debug.ShowHint("However, there is a way to use both Extra Monster Zones at the same time! Although, it's hard to pull off.")
Debug.ShowHint("It's called \"Extra Link\"!")
Debug.ShowHint("In order to perform an Extra Link, you need to have Link Monsters that are all co-linked with each other starting from one Extra Monster Zone and ending on the other Extra Monster Zone.")
Debug.ShowHint("Use co-links and Extra Link to win this turn!")

aux.BeginPuzzle()