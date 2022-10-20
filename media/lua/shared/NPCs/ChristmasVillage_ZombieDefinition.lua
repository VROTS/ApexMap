require 'NPCs/ZombiesZoneDefinition'

ZombiesZoneDefinition.ChristmasVillage = {

	CVElf = {
		name="CVelf",
		chance=89,
	},
	CVElfA = {
		name="CVelfA",
		chance=10,
	},
};

ZombiesZoneDefinition.ChristmasWorkers = {

	CVElf =	{
		name="CVelf",
		chance=49,
	},
	
	CVElfWorker = {
		name="CVelfWorker",
		chance=49,
	},
};

ZombiesZoneDefinition.CVHazmat = {

	CVHazmatZed = {
		name="HazardSuit",
		toSpawn=100,
		mandatory="true",
		room="toystorestorage",
		},
};

ZombiesZoneDefinition.ChristmasCommandos = {

	CVCommando = {
		name="CVCommando",
		chance=99,
		},
};

ZombiesZoneDefinition.SantasCrib = {

	CVSanta = {
		name="CVSanta",
		toSpawn=1,
		gender="male",
		mandatory="true",
		room="library",
		},
		
	CVSantaBackup = {
		name="CVSanta",
		chance=1,
		gender="male",
		},
		
	CVElf =	{
		name="CVelf",
		chance=33,
		gender="male",
		},

	PartyGirl1 = {
		name="StripperBlack",
		chance=30,
		},
		
	PartyGirl2 = {
		name="StripperNaked",
		chance=5,
		gender="female",
		},
		
	PartyGirl3 = {
		name="StripperPink",
		chance=30,
		gender="female",
		},

};

ZombiesZoneDefinition.Spiffs = {

	CVspiffs = {
		name="Spiffo",
		toSpawn=100,
		mandatory="true",
		room="toystorestorage",
	},
};

ZombiesZoneDefinition.CVRaiders = {

	CVZedRaiders = {
		name="Bandit",
		toSpawn=80,
		mandatory="true",
		room="toystorestorage",
		},
		
	CVZedRaiders2 = {
		name="Bandit",
		toSpawn=20,
		mandatory="true",
		room="toystorestorage",
		},
};

ZombiesZoneDefinition.CammoDudes = {
	
	CammoDudes1 = {
		name="Ghillie",
		toSpawn=100,
		mandatory="true",
		room="toystorestorage",
		},
};

ZombiesZoneDefinition.PinkChums = {
	
	pinkchums1 = {
		name="ShellSuit_Pink",
		toSpawn=100,
		mandatory="true",
		room="toystorestorage",
		},
};