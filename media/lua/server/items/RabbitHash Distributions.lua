require 'Items/Distributions'
require 'Items/ProceduralDistributions'
require 'Vehicle/Distributions'

local function RHMapBags()
	local baggiesChance = 30
	local zedBagChance = 0.2
	table.insert(SuburbsDistributions["Bag_SurvivorBag"].items, "RabbitHashLootableMap")
	table.insert(SuburbsDistributions["Bag_SurvivorBag"].items, baggiesChance)
	table.insert(SuburbsDistributions["Bag_BigHikingBag"].items, "RabbitHashLootableMap")
    table.insert(SuburbsDistributions["Bag_BigHikingBag"].items, zedBagChance)
    table.insert(SuburbsDistributions["Bag_NormalHikingBag"].items, "RabbitHashLootableMap")
    table.insert(SuburbsDistributions["Bag_NormalHikingBag"].items, zedBagChance)
	table.insert(SuburbsDistributions["Bag_DuffelBagTINT"].items, "RabbitHashLootableMap")
    table.insert(SuburbsDistributions["Bag_DuffelBagTINT"].items, zedBagChance)
    SuburbsDistributions["Bag_DuffelBagTINT"].maxMap = 1
    SuburbsDistributions["Bag_DuffelBagTINT"].rolls = 2
	table.insert(SuburbsDistributions["Satchel"].items, "RabbitHashLootableMap")
    table.insert(SuburbsDistributions["Satchel"].items, zedBagChance)
    SuburbsDistributions["Satchel"].maxMap = 1
    SuburbsDistributions["Satchel"].rolls = 2
	table.insert(SuburbsDistributions["Bag_Schoolbag"].items, "RabbitHashLootableMap")
    table.insert(SuburbsDistributions["Bag_Schoolbag"].items, zedBagChance)
    SuburbsDistributions["Bag_Schoolbag"].maxMap = 1
    SuburbsDistributions["Bag_Schoolbag"].rolls = 2
end

local function RHMapCars()
	local carsChance = 0.6
	-- Glove Box Lists
	table.insert(VehicleDistributions["GloveBox"]["junk"].items, "RabbitHashLootableMap")
	table.insert(VehicleDistributions["GloveBox"]["junk"].items, carsChance)
	table.insert(VehicleDistributions["Police"]["GloveBox"]["junk"].items, "RabbitHashLootableMap")
	table.insert(VehicleDistributions["Police"]["GloveBox"]["junk"].items, carsChance)
end

local function RHMapContainers()
	local mechanicsChance = 1.4
	local racksChance = 10
	local sideTableChance = 0.1
	-- Storage Containers Procedural
	table.insert(ProceduralDistributions["list"]["CrateMechanics"].items, "RabbitHashLootableMap")
	table.insert(ProceduralDistributions["list"]["CrateMechanics"].items, mechanicsChance)
	table.insert(ProceduralDistributions["list"]["StoreShelfMechanics"].items, "RabbitHashLootableMap")
	table.insert(ProceduralDistributions["list"]["StoreShelfMechanics"].items, mechanicsChance)
	table.insert(ProceduralDistributions["list"]["GasStorageMechanics"].items, "RabbitHashLootableMap")
	table.insert(ProceduralDistributions["list"]["GasStorageMechanics"].items, mechanicsChance)
	table.insert(ProceduralDistributions["list"]["MagazineRackMaps"].items, "RabbitHashLootableMap")
	table.insert(ProceduralDistributions["list"]["MagazineRackMaps"].items, racksChance)
	table.insert(ProceduralDistributions["list"]["MagazineRackMaps"].items, "RabbitHashLootableMap")
	table.insert(ProceduralDistributions["list"]["MagazineRackMaps"].items, racksChance)
	 -- Storage Containers Lists
	table.insert(SuburbsDistributions["all"]["sidetable"]["junk"].items, "RabbitHashLootableMap")
	table.insert(SuburbsDistributions["all"]["sidetable"]["junk"].items, sideTableChance)
end

local function RHMapZombies()
	local zedChance = 0.2
	table.insert(SuburbsDistributions["all"]["Outfit_AmbulanceDriver"].items, "RabbitHashLootableMap")
    table.insert(SuburbsDistributions["all"]["Outfit_AmbulanceDriver"].items, zedChance)
	table.insert(SuburbsDistributions["all"]["Outfit_Bandit"].items, "RabbitHashLootableMap")
    table.insert(SuburbsDistributions["all"]["Outfit_Bandit"].items, zedChance)
	table.insert(SuburbsDistributions["all"]["Outfit_Biker"].items, "RabbitHashLootableMap")
    table.insert(SuburbsDistributions["all"]["Outfit_Biker"].items, zedChance)
	table.insert(SuburbsDistributions["all"]["Outfit_Camper"].items, "RabbitHashLootableMap")
    table.insert(SuburbsDistributions["all"]["Outfit_Camper"].items, zedChance)
    table.insert(SuburbsDistributions["all"]["Outfit_Cyclist"].items, "RabbitHashLootableMap")
    table.insert(SuburbsDistributions["all"]["Outfit_Cyclist"].items, zedChance)
	table.insert(SuburbsDistributions["all"]["Outfit_Fisherman"].items, "RabbitHashLootableMap")
    table.insert(SuburbsDistributions["all"]["Outfit_Fisherman"].items, zedChance)
	table.insert(SuburbsDistributions["all"]["Outfit_Fossoil"].items, "RabbitHashLootableMap")
    table.insert(SuburbsDistributions["all"]["Outfit_Fossoil"].items, zedChance)
    table.insert(SuburbsDistributions["all"]["Outfit_Gas2Go"].items, "RabbitHashLootableMap")
    table.insert(SuburbsDistributions["all"]["Outfit_Gas2Go"].items, zedChance)
    table.insert(SuburbsDistributions["all"]["Outfit_Hunter"].items, "RabbitHashLootableMap")
    table.insert(SuburbsDistributions["all"]["Outfit_Hunter"].items, zedChance)
	table.insert(SuburbsDistributions["all"]["Outfit_Mechanic"].items, "RabbitHashLootableMap")
    table.insert(SuburbsDistributions["all"]["Outfit_Mechanic"].items, zedChance)
	table.insert(SuburbsDistributions["all"]["Outfit_ParkRanger"].items, "RabbitHashLootableMap")
    table.insert(SuburbsDistributions["all"]["Outfit_ParkRanger"].items, zedChance)
    table.insert(SuburbsDistributions["all"]["Outfit_Police"].items, "RabbitHashLootableMap")
    table.insert(SuburbsDistributions["all"]["Outfit_Police"].items, zedChance)
    table.insert(SuburbsDistributions["all"]["Outfit_PoliceOfficer"].items, "RabbitHashLootableMap")
    table.insert(SuburbsDistributions["all"]["Outfit_PoliceOfficer"].items, zedChance)
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceRiot"].items, "RabbitHashLootableMap")
    table.insert(SuburbsDistributions["all"]["Outfit_PoliceRiot"].items, zedChance)
    table.insert(SuburbsDistributions["all"]["Outfit_PoliceState"].items, "RabbitHashLootableMap")
    table.insert(SuburbsDistributions["all"]["Outfit_PoliceState"].items, zedChance)
	table.insert(SuburbsDistributions["all"]["Outfit_Postal"].items, "RabbitHashLootableMap")
    table.insert(SuburbsDistributions["all"]["Outfit_Postal"].items, zedChance)
    table.insert(SuburbsDistributions["all"]["Outfit_PrisonGuard"].items, "RabbitHashLootableMap")
    table.insert(SuburbsDistributions["all"]["Outfit_PrisonGuard"].items, zedChance)
    table.insert(SuburbsDistributions["all"]["Outfit_PrivateMilitia"].items, "RabbitHashLootableMap")
    table.insert(SuburbsDistributions["all"]["Outfit_PrivateMilitia"].items, zedChance)
    table.insert(SuburbsDistributions["all"]["Outfit_Raider"].items, "RabbitHashLootableMap")
    table.insert(SuburbsDistributions["all"]["Outfit_Raider"].items, zedChance)
	table.insert(SuburbsDistributions["all"]["Outfit_Ranger"].items, "RabbitHashLootableMap")
    table.insert(SuburbsDistributions["all"]["Outfit_Ranger"].items, zedChance)
	table.insert(SuburbsDistributions["all"]["Outfit_Student"].items, "RabbitHashLootableMap")
	table.insert(SuburbsDistributions["all"]["Outfit_Student"].items, zedChance)
    table.insert(SuburbsDistributions["all"]["Outfit_Survivalist"].items, "RabbitHashLootableMap")
    table.insert(SuburbsDistributions["all"]["Outfit_Survivalist"].items, zedChance)
    table.insert(SuburbsDistributions["all"]["Outfit_Survivalist02"].items, "RabbitHashLootableMap")
    table.insert(SuburbsDistributions["all"]["Outfit_Survivalist02"].items, zedChance)
    table.insert(SuburbsDistributions["all"]["Outfit_Survivalist03"].items, "RabbitHashLootableMap")
    table.insert(SuburbsDistributions["all"]["Outfit_Survivalist03"].items, zedChance)
	table.insert(SuburbsDistributions["all"]["Outfit_ThunderGas"].items, "RabbitHashLootableMap")
    table.insert(SuburbsDistributions["all"]["Outfit_ThunderGas"].items, zedChance)
    table.insert(SuburbsDistributions["all"]["Outfit_Tourist"].items, "RabbitHashLootableMap")
    table.insert(SuburbsDistributions["all"]["Outfit_Tourist"].items, zedChance)
    table.insert(SuburbsDistributions["all"]["Outfit_Trader"].items, "RabbitHashLootableMap")
    table.insert(SuburbsDistributions["all"]["Outfit_Trader"].items, zedChance)
end

local function RHMapDistribution()
	-- Map func for each loot/container type
	RHMapBags()
	RHMapCars()
	RHMapContainers()
	RHMapZombies()
end

local function RHGSLootDistribution()
	-- creates new procList entries for generalstore_counter
	local armyOutfitList = {
			name="ArmyHangarOutfit",
			min=0,
			max=3,
			weightChance=50
	}
	local barMiscList = {
			name="BarCounterMisc",
			min=0,
			max=6,
			weightChance=100
	}
	local barWepList = {
			name="BarCounterWeapon",
			min=0,
			max=1,
			weightChance=50
	}
	local candyList = {
			name="CrateCandyPackage",
			min=0,
			max=6,
			weightChance=400
	}
	local medList = {
			name="StoreShelfMedical",
			min=0,
			max=6,
			weightChance=200
	}
	local smokeList = {
			name="StoreCounterTobacco",
			min=0,
			max=6,
			weightChance=200
	}
	local snackList = {
			name="StoreShelfSnacks",
			min=0,
			max=6,
			weightChance=500
	}

	local toysList = {
			name="GigamartToys",
			min=0,
			max=3,
			weightChance=100
	}

	local vhsList = {
			name="MovieRentalShelves",
			min=0,
			max=10,
			weightChance=100
		
	}
	-- Insert new entries into existing generalstore_counter loot tables
	table.insert(SuburbsDistributions["generalstore"]["counter"].procList, armyOutfitList)
	table.insert(SuburbsDistributions["generalstore"]["counter"].procList, barMiscList)
	table.insert(SuburbsDistributions["generalstore"]["counter"].procList, barWepList)
	table.insert(SuburbsDistributions["generalstore"]["counter"].procList, candyList)
	table.insert(SuburbsDistributions["generalstore"]["counter"].procList, medList)
	table.insert(SuburbsDistributions["generalstore"]["counter"].procList, smokeList)
	table.insert(SuburbsDistributions["generalstore"]["counter"].procList, snackList)
	table.insert(SuburbsDistributions["generalstore"]["counter"].procList, toysList)
	table.insert(SuburbsDistributions["generalstore"]["counter"].procList, vhsList)
end

local function baseRHDistribution()
    -- Definitions
    ProceduralDistributions = ProceduralDistributions 														or {}
    VehicleDistributions = VehicleDistributions 															or {}
    SuburbsDistributions = SuburbsDistributions 															or {}
	
    -- ProcLists
    ProceduralDistributions.list.CrateMechanics = ProceduralDistributions.list.CrateMechanics 				or {rolls = 1, items={}, junk= {rolls =1, items={}}}
    ProceduralDistributions.list.MagazineRackMaps = ProceduralDistributions.list.MagazineRackMaps 			or {rolls = 1, items={}, junk= {rolls =1, items={}}}
    ProceduralDistributions.list.StoreShelfMechanics = ProceduralDistributions.list.StoreShelfMechanics 	or {rolls = 1, items={}, junk= {rolls =1, items={}}}
    ProceduralDistributions.list.ArmyHangarOutfit = ProceduralDistributions.list.ArmyHangarOutfit 			or {rolls = 1, items={}, junk= {rolls =1, items={}}}
    ProceduralDistributions.list.BarCounterMisc = ProceduralDistributions.list.BarCounterMisc 				or {rolls = 1, items={}, junk= {rolls =1, items={}}}
    ProceduralDistributions.list.BarCounterWeapon = ProceduralDistributions.list.BarCounterWeapon 			or {rolls = 1, items={}, junk= {rolls =1, items={}}}
    ProceduralDistributions.list.CrateCandyPackage = ProceduralDistributions.list.CrateCandyPackage 		or {rolls = 1, items={}, junk= {rolls =1, items={}}}
    ProceduralDistributions.list.StoreShelfMedical = ProceduralDistributions.list.StoreShelfMedical		 	or {rolls = 1, items={}, junk= {rolls =1, items={}}}
    ProceduralDistributions.list.StoreCounterTobacco = ProceduralDistributions.list.StoreCounterTobacco 	or {rolls = 1, items={}, junk= {rolls =1, items={}}}
    ProceduralDistributions.list.StoreShelfSnacks = ProceduralDistributions.list.StoreShelfSnacks		 	or {rolls = 1, items={}, junk= {rolls =1, items={}}}
    ProceduralDistributions.list.GigamartToys = ProceduralDistributions.list.GigamartToys				 	or {rolls = 1, items={}, junk= {rolls =1, items={}}}
	-- Vehicle
    VehicleDistributions.GloveBox = VehicleDistributions.GloveBox 											or {rolls = 1, items={}, junk= {rolls =1, items={}}}
    VehicleDistributions.Police.GloveBox = VehicleDistributions.Police.GloveBox 							or {rolls = 1, items={}, junk= {rolls =1, items={}}}
    -- Containers
	SuburbsDistributions.all = SuburbsDistributions.all 													or {}
    SuburbsDistributions.all.sidetable = SuburbsDistributions.all.sidetable 								or {rolls = 1, items={}, junk= {rolls =1, items={}}}
    SuburbsDistributions.generalstore.counter = SuburbsDistributions.generalstore.counter					or {rolls = 1, items={}, junk= {rolls =1, items={}}}
	-- Bags
    SuburbsDistributions.Bag_SurvivorBag = SuburbsDistributions.Bag_SurvivorBag 							or {rolls = 1, items={}, junk= {rolls =1, items={}}}
    SuburbsDistributions.Bag_SurvivorBag.maxMap = 1
    SuburbsDistributions.Bag_BigHikingBag = SuburbsDistributions.Bag_BigHikingBag 							or {rolls = 1, items={}, junk= {rolls =1, items={}}}
    SuburbsDistributions.Bag_BigHikingBag.maxMap = 1
    SuburbsDistributions.Bag_NormalHikingBag = SuburbsDistributions.Bag_NormalHikingBag 					or {rolls = 1, items={}, junk= {rolls =1, items={}}}
    SuburbsDistributions.Bag_NormalHikingBag.maxMap = 1
    SuburbsDistributions.Satchel = SuburbsDistributions.Satchel 											or {rolls = 1, items={}, junk= {rolls =1, items={}}}
    SuburbsDistributions.Satchel.maxMap = 1
    SuburbsDistributions.Bag_DuffelBagTINT = SuburbsDistributions.Bag_DuffelBagTINT 						or {rolls = 1, items={}, junk= {rolls =1, items={}}}
    SuburbsDistributions.Bag_DuffelBagTINT.maxMap = 1
    SuburbsDistributions.Bag_Schoolbag = SuburbsDistributions.Bag_Schoolbag 								or {rolls = 1, items={}, junk= {rolls =1, items={}}}
    SuburbsDistributions.Bag_Schoolbag.maxMap = 1
    -- Zombies
    SuburbsDistributions.all.Outfit_AmbulanceDriver = SuburbsDistributions.all.Outfit_AmbulanceDriver 		or {rolls = 1,items = {},junk= {rolls =1, items={}}}
    SuburbsDistributions.all.Outfit_Bandit = SuburbsDistributions.all.Outfit_Bandit 						or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	SuburbsDistributions.all.Outfit_Biker = SuburbsDistributions.all.Outfit_Biker 							or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	SuburbsDistributions.all.Outfit_Camper = SuburbsDistributions.all.Outfit_Camper 						or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	SuburbsDistributions.all.Outfit_Cyclist = SuburbsDistributions.all.Outfit_Cyclist 						or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	SuburbsDistributions.all.Outfit_Fisherman = SuburbsDistributions.all.Outfit_Fisherman 					or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	SuburbsDistributions.all.Outfit_Fossoil = SuburbsDistributions.all.Outfit_Fossoil 						or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	SuburbsDistributions.all.Outfit_Gas2Go = SuburbsDistributions.all.Outfit_Gas2Go 						or {rolls = 1,items = {},junk= {rolls =1, items={}}}
    SuburbsDistributions.all.Outfit_Hunter = SuburbsDistributions.all.Outfit_Hunter 						or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	SuburbsDistributions.all.Outfit_Mechanic =SuburbsDistributions.all.Outfit_Mechanic 						or {rolls = 1,items = {},junk= {rolls =1, items={}}}
    SuburbsDistributions.all.Outfit_ParkRanger = SuburbsDistributions.all.Outfit_ParkRanger 				or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	SuburbsDistributions.all.Outfit_Police = SuburbsDistributions.all.Outfit_Police 						or {rolls = 1,items = {},junk= {rolls =1, items={}}}
    SuburbsDistributions.all.Outfit_PoliceOfficer = SuburbsDistributions.all.Outfit_PoliceOfficer 			or {rolls = 1,items = {},junk= {rolls =1, items={}}}
    SuburbsDistributions.all.Outfit_PoliceRiot = SuburbsDistributions.all.Outfit_PoliceRiot 				or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	SuburbsDistributions.all.Outfit_PoliceState = SuburbsDistributions.all.Outfit_PoliceState 				or {rolls = 1,items = {},junk= {rolls =1, items={}}}
    SuburbsDistributions.all.Outfit_Postal = SuburbsDistributions.all.Outfit_Postal 						or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	SuburbsDistributions.all.Outfit_PrisonGuard = SuburbsDistributions.all.Outfit_PrisonGuard 				or {rolls = 1,items = {},junk= {rolls =1, items={}}}
    SuburbsDistributions.all.Outfit_PrivateMilitia = SuburbsDistributions.all.Outfit_PrivateMilitia 		or {rolls = 1,items = {},junk= {rolls =1, items={}}}
    SuburbsDistributions.all.Outfit_Raider = SuburbsDistributions.all.Outfit_Raider 						or {rolls = 1,items = {},junk= {rolls =1, items={}}}
    SuburbsDistributions.all.Outfit_Student = SuburbsDistributions.all.Outfit_Student 						or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	SuburbsDistributions.all.Outfit_Survivalist = SuburbsDistributions.all.Outfit_Survivalist 				or {rolls = 1,items = {},junk= {rolls =1, items={}}}
    SuburbsDistributions.all.Outfit_Survivalist02 = SuburbsDistributions.all.Outfit_Survivalist02 			or {rolls = 1,items = {},junk= {rolls =1, items={}}}
    SuburbsDistributions.all.Outfit_Survivalist03 = SuburbsDistributions.all.Outfit_Survivalist03 			or {rolls = 1,items = {},junk= {rolls =1, items={}}}
    SuburbsDistributions.all.Outfit_Ranger = SuburbsDistributions.all.Outfit_Ranger 						or {rolls = 1,items = {},junk= {rolls =1, items={}}}
    SuburbsDistributions.all.Outfit_ThunderGas = SuburbsDistributions.all.Outfit_ThunderGas 				or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	SuburbsDistributions.all.Outfit_Tourist = SuburbsDistributions.all.Outfit_Tourist 						or {rolls = 1,items = {},junk= {rolls =1, items={}}}
    SuburbsDistributions.all.Outfit_Trader = SuburbsDistributions.all.Outfit_Trader 						or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	
	-- Distribute RabbitHashLootableMap
	RHMapDistribution()
	
	-- Alter generalstore_counter loot
	RHGSLootDistribution()
end

Events.OnPreDistributionMerge.Add(baseRHDistribution)