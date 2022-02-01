-- Remove all YieldModifiers
DELETE FROM Building_YieldModifiers
WHERE BuildingType = 'BUILDING_FLOATING_GARDENS';

DELETE FROM Building_YieldModifiers
WHERE BuildingType = 'BUILDING_WORKSHOP';

DELETE FROM Building_YieldModifiers
WHERE BuildingType = 'BUILDING_FACTORY';

DELETE FROM Building_YieldModifiers
WHERE BuildingType = 'BUILDING_SOLAR_PLANT';

DELETE FROM Building_YieldModifiers
WHERE BuildingType = 'BUILDING_NUCLEAR_PLANT';

DELETE FROM Building_YieldModifiers
WHERE BuildingType = 'BUILDING_MARKET';

DELETE FROM Building_YieldModifiers
WHERE BuildingType = 'BUILDING_BAZAAR';

DELETE FROM Building_YieldModifiers
WHERE BuildingType = 'BUILDING_BANK';

DELETE FROM Building_YieldModifiers
WHERE BuildingType = 'BUILDING_SATRAPS_COURT';

DELETE FROM Building_YieldModifiers
WHERE BuildingType = 'BUILDING_STOCK_EXCHANGE';

DELETE FROM Building_YieldModifiers
WHERE BuildingType = 'BUILDING_OBSERVATORY';

DELETE FROM Building_YieldModifiers
WHERE BuildingType = 'BUILDING_NATIONAL_COLLEGE';

DELETE FROM Building_YieldModifiers
WHERE BuildingType = 'BUILDING_COFFEE_HOUSE';

DELETE FROM Building_YieldModifiers
WHERE BuildingType = 'BUILDING_HANSE';

DELETE FROM Building_YieldModifiers
WHERE BuildingType = 'BUILDING_LABORATORY';

DELETE FROM Building_YieldModifiers
WHERE BuildingType = 'BUILDING_WAT';

DELETE FROM Building_YieldModifiers
WHERE BuildingType = 'BUILDING_UNIVERSITY';


-- Building Changes

-- Palace
UPDATE Building_YieldChanges
SET Yield = '5'
WHERE BuildingType = 'BUILDING_PALACE' AND YieldType = 'YIELD_GOLD';

UPDATE Building_YieldChanges
SET Yield = '6'
WHERE BuildingType = 'BUILDING_PALACE' AND YieldType = 'YIELD_SCIENCE';

UPDATE Buildings
SET EventTourism = '7'
WHERE Type = 'BUILDING_PALACE';

-- Granary

UPDATE Building_ResourceYieldChanges
SET Yield = '1'
WHERE BuildingType = 'BUILDING_GRANARY';

UPDATE Building_YieldChanges
Set Yield = '1'
WHERE BuildingType = 'BUILDING_GRANARY';

UPDATE Buildings
SET FoodKept = '15'
WHERE Type = 'BUILDING_GRANARY';

-- Water Mill
UPDATE Building_YieldChanges
SET Yield = '3'
WHERE BuildingType = 'BUILDING_WATERMILL' AND YieldType = 'YIELD_PRODUCTION';

UPDATE Buildings
SET MutuallyExclusiveGroup = '3'
WHERE Type = 'BUILDING_WATERMILL';

UPDATE Buildings
SET PrereqTech = 'TECH_CONSTRUCTION'
WHERE Type = 'BUILDING_WATERMILL';

-- Aqueduct

UPDATE Buildings
SET FoodKept = '15'
WHERE Type = 'BUILDING_AQUEDUCT';

-- Hospital
UPDATE Building_ClassesNeededInCity
SET BuildingClassType= 'BUILDINGCLASS_GROCER'
WHERE BuildingType = 'BUILDING_HOSPITAL';

UPDATE Buildings
SET AlwaysHeal = '15'
WHERE Type = 'BUILDING_HOSPITAL';

UPDATE Buildings
SET CitySupplyModifier = '10'
WHERE Type = 'BUILDING_HOSPITAL';

UPDATE Building_YieldChanges
SET Yield = '2'
WHERE BuildingType = 'BUILDING_HOSPITAL';

UPDATE Buildings
SET Help = 'TXT_KEY_BUILDING_HOSPITAL_HELP'
WHERE Type = 'BUILDING_HOSPITAL';

INSERT INTO Building_YieldFromYieldPercent
	(BuildingType, YieldIn, YieldOut, Value)
VALUES
	('BUILDING_STOCKYARD', 'YIELD_FOOD', 'YIELD_GOLD', 10);
-- Medical Lab

UPDATE Buildings
SET FoodKept = '15'
WHERE Type = 'BUILDING_MEDICAL_LAB';

UPDATE Buildings
SET PopulationChange = '2'
WHERE Type = 'BUILDING_MEDICAL_LAB';

-- Garden
UPDATE Buildings
SET FreshWater = '0'
WHERE Type = 'BUILDING_GARDEN';

UPDATE Buildings
SET GreatPeopleRateModifier = '25'
WHERE Type = 'BUILDING_GARDEN';

UPDATE Buildings
SET NoUnhappfromXSpecialists = '1'
WHERE Type = 'BUILDING_GARDEN';

-- Shrine
UPDATE Buildings
SET PrereqTech = 'TECH_AGRICULTURE'
WHERE Type = 'BUILDING_SHRINE';

UPDATE Building_YieldChanges
SET Yield = '2'
WHERE BuildingType = 'BUILDING_SHRINE';

-- Temple
UPDATE Buildings
SET Help = 'TXT_KEY_BUILDING_TEMPLE_HELP'
WHERE Type = 'BUILDING_TEMPLE';

UPDATE Buildings
SET ReligiousPressureModifier = '25'
WHERE Type = 'BUILDING_TEMPLE';

UPDATE Building_YieldChanges
SET Yield = '3'
WHERE BuildingType = 'BUILDING_TEMPLE';

UPDATE Buildings
SET GreatWorkSlotType = 'GREAT_WORK_SLOT_MUSIC'
WHERE Type = 'BUILDING_TEMPLE';

UPDATE Buildings
SET GreatWorkCount = '1'
WHERE Type = 'BUILDING_TEMPLE';

-- Monument
UPDATE Building_YieldChanges
SET Yield = '2'
WHERE BuildingType = 'BUILDING_MONUMENT';

UPDATE Buildings
SET PlotCultureCostModifier = '-25'
WHERE Type = 'BUILDING_MONUMENT';

UPDATE Buildings
SET Help = 'TXT_KEY_BUILDING_MONUMENT_HELP'
WHERE Type = 'BUILDING_MONUMENT';

-- Amphitheater
UPDATE Building_YieldChanges
SET Yield = '2'
WHERE BuildingType = 'BUILDING_AMPHITHEATER';

UPDATE Buildings
SET Help = 'TXT_KEY_BUILDING_AMPHITHEATER_HELP'
WHERE Type = 'BUILDING_AMPHITHEATER';

UPDATE Buildings
SET GreatWorkCount = '2'
WHERE Type = 'BUILDING_AMPHITHEATER';

UPDATE Buildings
SET ThemingBonusHelp = 'TXT_KEY_AMPHITHEATER_THEMING_BONUS_HELP'
WHERE Type = 'BUILDING_AMPHITHEATER';

-- Opera House
DELETE FROM Building_YieldChanges
WHERE BuildingType = 'BUILDING_OPERA_HOUSE';

UPDATE Buildings
SET Help = 'TXT_KEY_BUILDING_OPERA_HOUSE_HELP'
WHERE Type = 'BUILDING_OPERA_HOUSE';

UPDATE Buildings
SET CultureRateModifier = '5'
WHERE Type = 'BUILDING_OPERA_HOUSE';

-- Museum

DELETE FROM Building_YieldChanges
WHERE BuildingType = 'BUILDING_MUSEUM';

UPDATE Buildings
SET Help = 'TXT_KEY_BUILDING_MUSEUM_HELP'
WHERE Type = 'BUILDING_MUSEUM';

-- Broadcast Tower
DELETE FROM Building_YieldChanges
WHERE BuildingType = 'BUILDING_BROADCAST_TOWER';

UPDATE Buildings
SET CultureRateModifier = '0'
WHERE Type = 'BUILDING_BROADCAST_TOWER';

UPDATE Buildings
SET ThemingBonusHelp = 'TXT_KEY_BROADCAST_TOWER_THEMING_BONUS_HELP'
WHERE Type = 'BUILDING_BROADCAST_TOWER';

UPDATE Buildings
SET GreatWorkCount = '2'
WHERE Type = 'BUILDING_BROADCAST_TOWER';

-- Barracks 
UPDATE Buildings
SET PrereqTech = 'TECH_ARCHERY'
WHERE Type = 'BUILDING_BARRACKS';

UPDATE Buildings
SET CitySupplyFlat = '1'
WHERE Type = 'BUILDING_BARRACKS';
	
-- Armory
UPDATE Building_DomainFreeExperiences
SET Experience = '20'
WHERE BuildingType = 'BUILDING_ARMORY';

UPDATE Buildings
SET CitySupplyFlat = '1'
WHERE Type = 'BUILDING_ARMORY';

-- Military Academy
UPDATE Building_DomainFreeExperiences
SET Experience = '25'
WHERE BuildingType = 'BUILDING_MILITARY_ACADEMY';

DELETE FROM Building_DomainProductionModifiers
WHERE BuildingType = 'BUILDING_MILITARY_ACADEMY';

UPDATE Buildings
SET CitySupplyFlat = '1'
WHERE Type = 'BUILDING_MILITARY_ACADEMY';

-- Stables
UPDATE Buildings
SET PrereqTech = 'TECH_CHIVALRY'
WHERE Type = 'BUILDING_STABLE';

UPDATE Building_ResourceYieldChanges
SET Yield = '2'
WHERE BuildingType = 'BUILDING_STABLE';
	
UPDATE Building_UnitCombatProductionModifiers
SET Modifier = '33'
WHERE BuildingType = 'BUILDING_STABLE';

UPDATE Buildings
SET CitySupplyModifier = '10'
WHERE Type = 'BUILDING_STABLE';

-- Forge
UPDATE Buildings
SET PrereqTech = 'TECH_IRON_WORKING'
WHERE Type = 'BUILDING_FORGE';

DELETE FROM Building_ResourceYieldChanges
WHERE BuildingType = 'BUILDING_FORGE';
		
DELETE FROM Building_DomainProductionModifiers
WHERE BuildingType = 'BUILDING_FORGE';

UPDATE Buildings
SET SpecialistType = 'SPECIALIST_ENGINEER'
WHERE Type = 'BUILDING_FORGE';

UPDATE Buildings
SET SpecialistCount = '1'
WHERE Type = 'BUILDING_FORGE';

DELETE FROM Building_LocalResourceAnds
WHERE BuildingType = 'BUILDING_FORGE';

-- Workshop 
UPDATE Building_YieldChanges
SET Yield = '2'
WHERE BuildingType = 'BUILDING_WORKSHOP';


UPDATE Buildings
SET PrereqTech = 'TECH_CIVIL_SERVICE'
WHERE Type = 'BUILDING_WORKSHOP';

-- Stoneworks
UPDATE Buildings
SET ProhibitedCityTerrain = NULL
WHERE Type = 'BUILDING_STONE_WORKS';

DELETE FROM Building_YieldChanges
WHERE BuildingType = 'BUILDING_STONE_WORKS';

DELETE FROM Building_ResourceYieldChanges
WHERE BuildingType = 'BUILDING_STONE_WORKS';

UPDATE Buildings
SET PrereqTech = 'TECH_MASONRY'
WHERE Type = 'BUILDING_STONE_WORKS';

UPDATE Buildings
SET AllowsProductionTradeRoutes = '1'
WHERE Type = 'BUILDING_STONE_WORKS';

UPDATE Buildings
SET Happiness = '0'
WHERE Type = 'BUILDING_STONE_WORKS';

-- Lighthouse

DELETE FROM Building_ResourceYieldChanges
WHERE BuildingType = 'BUILDING_LIGHTHOUSE';

DELETE FROM Building_SeaResourceYieldChanges
WHERE BuildingType = 'BUILDING_LIGHTHOUSE';

UPDATE Buildings
SET AllowsWaterRoutes = '1'
WHERE Type = 'BUILDING_LIGHTHOUSE';

UPDATE Buildings
SET CitySupplyFlat = '1'
WHERE Type = 'BUILDING_LIGHTHOUSE';

UPDATE Buildings
SET MinAreaSize = 1
WHERE Type = 'BUILDING_LIGHTHOUSE';

-- Harbor
UPDATE Buildings
SET TradeRouteSeaGoldBonus = '200'
WHERE Type = 'BUILDING_HARBOR';

UPDATE Buildings
SET FinishSeaTRTourism = '10'
WHERE Type = 'BUILDING_HARBOR';

UPDATE Buildings
SET AllowsWaterRoutes = '0'
WHERE Type = 'BUILDING_HARBOR';

UPDATE Buildings
SET CitySupplyFlat = '2'
WHERE Type = 'BUILDING_HARBOR';

UPDATE Building_DomainProductionModifiers
SET BuildingType = 'BUILDING_HARBOR'
WHERE BuildingType = 'BUILDING_SEAPORT';

UPDATE Buildings
SET MinAreaSize = 1
WHERE Type = 'BUILDING_HARBOR';

-- Seaport	
UPDATE Buildings
SET MutuallyExclusiveGroup = '10'
WHERE Type = 'BUILDING_SEAPORT';

UPDATE Building_YieldChanges
SET Yield = '3'
WHERE BuildingType = 'BUILDING_SEAPORT';

UPDATE Building_SeaResourceYieldChanges
SET Yield = '2'
WHERE BuildingType = 'BUILDING_SEAPORT';

UPDATE Buildings
SET SpecialistType = 'SPECIALIST_ENGINEER'
WHERE Type = 'BUILDING_SEAPORT';

UPDATE Buildings
SET SpecialistCount = '1'
WHERE Type = 'BUILDING_SEAPORT';

UPDATE Buildings
SET PrereqTech = 'TECH_STEAM_POWER'
WHERE Type = 'BUILDING_SEAPORT';

UPDATE Buildings
SET CitySupplyModifier = '20'
WHERE Type = 'BUILDING_SEAPORT';

UPDATE Buildings
SET MinAreaSize = 1
WHERE Type = 'BUILDING_SEAPORT';

-- Market	
UPDATE Buildings
SET Help = 'TXT_KEY_BUILDING_MARKET_HELP'
WHERE Type = 'BUILDING_MARKET';

UPDATE Buildings
SET PrereqTech = 'TECH_HORSEBACK_RIDING'
WHERE Type = 'BUILDING_MARKET';

UPDATE Buildings
SET PrereqTech = 'TECH_HORSEBACK_RIDING'
WHERE Type = 'BUILDING_BAZAAR';

UPDATE Building_YieldChanges
SET Yield = '3'
WHERE BuildingType = 'BUILDING_MARKET';

-- Mint

DELETE FROM Building_ResourceYieldChanges
WHERE BuildingType = 'BUILDING_MINT';

DELETE FROM Building_LocalResourceOrs
WHERE BuildingType = 'BUILDING_MINT';
	
UPDATE Buildings
SET PrereqTech = 'TECH_GUILDS'
WHERE Type = 'BUILDING_MINT';

UPDATE Buildings
SET TradeRouteRecipientBonus = '2'
WHERE Type = 'BUILDING_MINT';

UPDATE Buildings
SET TradeRouteTargetBonus = '2'
WHERE Type = 'BUILDING_MINT';

UPDATE Buildings
SET SpecialistType = 'SPECIALIST_MERCHANT'
WHERE Type = 'BUILDING_MINT';

UPDATE Buildings
SET SpecialistCount = '1'
WHERE Type = 'BUILDING_MINT';

-- Bank

UPDATE Buildings
SET TradeRouteRecipientBonus = '0'
WHERE Type = 'BUILDING_BANK';

UPDATE Buildings
SET TradeRouteTargetBonus = '0'
WHERE Type = 'BUILDING_BANK';

-- Stock Exchange

UPDATE Buildings
SET SpecialistCount = '1'
WHERE Type = 'BUILDING_STOCK_EXCHANGE';
		
-- Caravansary
UPDATE Buildings
SET TradeRouteLandGoldBonus = '300'
WHERE Type = 'BUILDING_CARAVANSARY';

UPDATE Buildings
SET FinishLandTRTourism = '10'
WHERE Type = 'BUILDING_CARAVANSARY';

UPDATE Buildings
SET PrereqTech = 'TECH_CURRENCY'
WHERE Type = 'BUILDING_CARAVANSARY';
	
-- Library
UPDATE Buildings
SET SpecialistType = 'SPECIALIST_SCIENTIST'
WHERE Type = 'BUILDING_LIBRARY';

UPDATE Buildings
SET SpecialistCount = '1'
WHERE Type = 'BUILDING_LIBRARY';

UPDATE Buildings
SET NoUnhappfromXSpecialists = '1'
WHERE Type = 'BUILDING_LIBRARY';


DELETE FROM Building_YieldChangesPerPop
WHERE BuildingType = 'BUILDING_LIBRARY';

-- University
UPDATE Buildings
SET SpecialistCount = '1'
WHERE Type = 'BUILDING_UNIVERSITY';

UPDATE Building_FeatureYieldChanges
SET Yield = '1'
WHERE BuildingType = 'BUILDING_UNIVERSITY';
		
-- Public School
UPDATE Unit_BuildingClassRequireds
SET BuildingClassType = 'BUILDINGCLASS_PUBLIC_SCHOOL'
WHERE UnitType = 'UNIT_ARCHAEOLOGIST';

UPDATE Building_YieldChangesPerPop
SET Yield = '25'
WHERE BuildingType = 'BUILDING_PUBLIC_SCHOOL';

-- Research Lab

-- Observatory
UPDATE Buildings
SET Mountain = '0'
WHERE Type = 'BUILDING_OBSERVATORY';

UPDATE Buildings
SET SpecialistType = 'SPECIALIST_SCIENTIST'
WHERE Type = 'BUILDING_OBSERVATORY';

UPDATE Buildings
SET SpecialistCount = '2'
WHERE Type = 'BUILDING_OBSERVATORY';

UPDATE Buildings
SET NearbyMountainRequired = '0'
WHERE Type = 'BUILDING_OBSERVATORY';

-- Windmill
UPDATE Building_YieldChanges
SET Yield = '3'
WHERE BuildingType = 'BUILDING_WINDMILL';

UPDATE Buildings
SET Flat = '0'
WHERE Type = 'BUILDING_WINDMILL';

UPDATE Buildings
SET BuildingProductionModifier = '15'
WHERE Type = 'BUILDING_WINDMILL';

-- Plants -- Remove terrain restrictions

-- Move all to Ecology

UPDATE Buildings
SET PrereqTech = 'TECH_ECOLOGY'
WHERE Type = 'BUILDING_HYDRO_PLANT';

UPDATE Buildings
SET PrereqTech = 'TECH_ECOLOGY'
WHERE Type = 'BUILDING_WIND_PLANT';

UPDATE Buildings
SET PrereqTech = 'TECH_ECOLOGY'
WHERE Type = 'BUILDING_SOLAR_PLANT';

UPDATE Buildings
SET PrereqTech = 'TECH_ECOLOGY'
WHERE Type = 'BUILDING_NUCLEAR_PLANT';


UPDATE Buildings
SET NearbyTerrainRequired = NULL
WHERE Type = 'BUILDING_SOLAR_PLANT';

UPDATE Buildings
SET River = '0'
WHERE Type = 'BUILDING_HYDRO_PLANT';

-- Hydroplant - now buffs ocean/lake tiles as well
UPDATE Building_RiverPlotYieldChanges
SET Yield = '4' -- 'YIELD_PRODUCTION, do NOT delete this update'
WHERE BuildingType = 'BUILDING_HYDRO_PLANT';

INSERT INTO Building_RiverPlotYieldChanges
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_HYDRO_PLANT', 'YIELD_SCIENCE', 4),
	('BUILDING_HYDRO_PLANT', 'YIELD_GOLD', 4);

INSERT INTO Building_LakePlotYieldChanges
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_HYDRO_PLANT', 'YIELD_PRODUCTION', 4),
	('BUILDING_HYDRO_PLANT', 'YIELD_SCIENCE', 4),
	('BUILDING_HYDRO_PLANT', 'YIELD_GOLD', 4);

INSERT INTO Building_SeaPlotYieldChanges
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_HYDRO_PLANT', 'YIELD_PRODUCTION', 4),
	('BUILDING_HYDRO_PLANT', 'YIELD_SCIENCE', 4),
	('BUILDING_HYDRO_PLANT', 'YIELD_GOLD', 4);

INSERT INTO Building_ClassesNeededInCity
	(BuildingType, BuildingClassType)
VALUES
	('BUILDING_HYDRO_PLANT', 'BUILDINGCLASS_FACTORY');

UPDATE Building_ResourceQuantityRequirements SET ResourceType = 'RESOURCE_IRON' WHERE BuildingType = 'BUILDING_HYDRO_PLANT';

-- EXC Group

UPDATE Buildings
SET MutuallyExclusiveGroup = '1'
WHERE Type = 'BUILDING_HYDRO_PLANT';

UPDATE Buildings
SET MutuallyExclusiveGroup = '1'
WHERE Type = 'BUILDING_WIND_PLANT';

UPDATE Buildings
SET MutuallyExclusiveGroup = '1'
WHERE Type = 'BUILDING_NUCLEAR_PLANT';

UPDATE Buildings
SET MutuallyExclusiveGroup = '1'
WHERE Type = 'BUILDING_SOLAR_PLANT';

-- Wind Plant - now buffs all land tiles

INSERT INTO Building_PlotYieldChanges
	(BuildingType, PlotType, YieldType, Yield)
VALUES
	('BUILDING_WIND_PLANT', 'PLOT_LAND', 'YIELD_PRODUCTION', 2),
	('BUILDING_WIND_PLANT', 'PLOT_LAND', 'YIELD_SCIENCE', 2),
	('BUILDING_WIND_PLANT', 'PLOT_LAND', 'YIELD_GOLD', 2),
	('BUILDING_WIND_PLANT', 'PLOT_HILLS', 'YIELD_PRODUCTION', 2),
	('BUILDING_WIND_PLANT', 'PLOT_HILLS', 'YIELD_SCIENCE', 2),
	('BUILDING_WIND_PLANT', 'PLOT_HILLS', 'YIELD_GOLD', 2);

-- Nuclear Plant -- now buffs specialists
INSERT INTO Building_SpecialistYieldChangesLocal
	(BuildingType, SpecialistType, YieldType, Yield)
VALUES
	('BUILDING_NUCLEAR_PLANT', 'SPECIALIST_SCIENTIST', 'YIELD_SCIENCE', 2),
	('BUILDING_NUCLEAR_PLANT', 'SPECIALIST_WRITER', 'YIELD_CULTURE', 2),
	('BUILDING_NUCLEAR_PLANT', 'SPECIALIST_ARTIST', 'YIELD_CULTURE', 2),
	('BUILDING_NUCLEAR_PLANT', 'SPECIALIST_MUSICIAN', 'YIELD_CULTURE', 2),
	('BUILDING_NUCLEAR_PLANT', 'SPECIALIST_MERCHANT', 'YIELD_GOLD', 2),
	('BUILDING_NUCLEAR_PLANT', 'SPECIALIST_ENGINEER', 'YIELD_PRODUCTION', 2);

UPDATE Buildings
SET GreatPeopleRateModifier = '25'
WHERE Type = 'BUILDING_NUCLEAR_PLANT';

-- Solar Plant -- now buffs processes

INSERT INTO Building_YieldFromProcessModifier
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_SOLAR_PLANT', 'YIELD_FOOD', 25),
	('BUILDING_SOLAR_PLANT', 'YIELD_GOLD', 25),
	('BUILDING_SOLAR_PLANT', 'YIELD_SCIENCE', 25),
	('BUILDING_SOLAR_PLANT', 'YIELD_CULTURE', 25),
	('BUILDING_SOLAR_PLANT', 'YIELD_FAITH', 25);


-- Courthouse
UPDATE Buildings
SET PrereqTech = 'TECH_PHILOSOPHY'
WHERE Type = 'BUILDING_COURTHOUSE';

UPDATE Buildings
SET HurryCostModifier = '75'
WHERE Type = 'BUILDING_COURTHOUSE';

UPDATE Buildings
SET NumCityCostMod = '10'
WHERE Type = 'BUILDING_COURTHOUSE';

UPDATE Buildings
SET NeverCapture = '1'
WHERE Type = 'BUILDING_COURTHOUSE';

-- Walls

UPDATE Buildings 
SET Help = 'TXT_KEY_BUILDING_WALLS_HELP'
WHERE Type = 'BUILDING_WALLS';

UPDATE Buildings
SET CitySupplyModifier = '10'
WHERE Type = 'BUILDING_WALLS';

UPDATE Buildings
SET CityRangedStrikeRange = '1'
WHERE Type = 'BUILDING_WALLS';

-- Castle

UPDATE Buildings
SET CitySupplyModifier = '10'
WHERE Type = 'BUILDING_CASTLE';

UPDATE Buildings
SET GreatWorkSlotType = 'GREAT_WORK_SLOT_ART_ARTIFACT'
WHERE Type = 'BUILDING_CASTLE';

UPDATE Buildings
SET GreatWorkCount = '1'
WHERE Type = 'BUILDING_CASTLE';

-- Arsenal
UPDATE Buildings
SET PrereqTech = 'TECH_RIFLING'
WHERE Type = 'BUILDING_ARSENAL';

UPDATE Buildings
SET CitySupplyModifier = '15'
WHERE Type = 'BUILDING_ARSENAL';

UPDATE Buildings
SET HealRateChange = '10'
WHERE Type = 'BUILDING_ARSENAL';

UPDATE Buildings
SET CityRangedStrikeRange = '1'
WHERE Type = 'BUILDING_ARSENAL';

UPDATE Buildings
SET CityIndirectFire = '1'
WHERE Type = 'BUILDING_ARSENAL';

-- Military Base

UPDATE Buildings
SET CityAirStrikeDefense = '5'
WHERE Type = 'BUILDING_MILITARY_BASE';

UPDATE Buildings
SET HealRateChange = '20'
WHERE Type = 'BUILDING_MILITARY_BASE';

UPDATE Buildings
SET PrereqTech = 'TECH_ROCKETRY'
WHERE Type = 'BUILDING_MILITARY_BASE';

UPDATE Buildings
SET CitySupplyModifier = '25'
WHERE Type = 'BUILDING_MILITARY_BASE';

UPDATE Buildings
SET EspionageModifier = '-25'
WHERE Type = 'BUILDING_MILITARY_BASE';

-- Bomb Shelter

UPDATE Buildings
SET PrereqTech = 'TECH_NUCLEAR_FISSION'
WHERE Type = 'BUILDING_BOMB_SHELTER';

UPDATE Buildings
SET NukeInterceptionChance = '50'
WHERE Type = 'BUILDING_BOMB_SHELTER';

UPDATE Buildings
SET Happiness = '0'
WHERE Type = 'BUILDING_BOMB_SHELTER';

UPDATE Buildings
SET CityAirStrikeDefense = '10'
WHERE Type = 'BUILDING_BOMB_SHELTER';

 -- Factory
UPDATE Building_YieldChanges
SET Yield = '5'
WHERE BuildingType = 'BUILDING_FACTORY';

UPDATE Buildings
SET SpecialistCount = '1'
WHERE Type = 'BUILDING_FACTORY';

UPDATE Buildings
SET XBuiltTriggersIdeologyChoice = '0'
WHERE Type = 'BUILDING_FACTORY';

UPDATE Buildings
SET NoUnhappfromXSpecialists = '1'
WHERE Type = 'BUILDING_FACTORY';

-- Spaceship Factory

-- Hotel
UPDATE Buildings
SET PrereqTech = 'TECH_RAILROAD'
WHERE Type = 'BUILDING_HOTEL';

UPDATE Buildings
SET LandmarksTourismPercent = '25'
WHERE Type = 'BUILDING_HOTEL';

UPDATE Buildings
SET GreatWorksTourismModifier = '25'
WHERE Type = 'BUILDING_HOTEL';

-- Airport

UPDATE Buildings
SET CityAirStrikeDefense = '10'
WHERE Type = 'BUILDING_AIRPORT';

UPDATE Buildings
SET LandmarksTourismPercent = '25'
WHERE Type = 'BUILDING_AIRPORT';

UPDATE Buildings
SET GreatWorksTourismModifier = '25'
WHERE Type = 'BUILDING_AIRPORT';
			
-- Circus
DELETE FROM Building_LocalResourceOrs
WHERE BuildingType = 'BUILDING_CIRCUS';

UPDATE Buildings
SET PrereqTech = 'TECH_PHYSICS'
WHERE Type = 'BUILDING_CIRCUS';

UPDATE Buildings
SET Happiness = '1'
WHERE Type = 'BUILDING_CIRCUS';

UPDATE Buildings
SET WLTKDTurns = '10'
WHERE Type = 'BUILDING_CIRCUS';

-- Colosseum

UPDATE Buildings
SET Happiness = '0'
WHERE Type = 'BUILDING_COLOSSEUM';

UPDATE Buildings 
SET Help = 'TXT_KEY_BUILDING_COLOSSEUM_HELP'
WHERE Type = 'BUILDING_COLOSSEUM';

-- Zoo
UPDATE Building_ClassesNeededInCity
SET BuildingClassType = 'BUILDINGCLASS_CIRCUS'
WHERE BuildingType = 'BUILDING_THEATRE';

UPDATE Buildings
SET Happiness = '0'
WHERE Type = 'BUILDING_THEATRE';

UPDATE Buildings
SET PrereqTech = 'TECH_SCIENTIFIC_THEORY'
WHERE Type = 'BUILDING_THEATRE';

UPDATE Buildings
SET FinishLandTRTourism = '5'
WHERE Type = 'BUILDING_THEATRE';

UPDATE Buildings
SET FinishSeaTRTourism = '5'
WHERE Type = 'BUILDING_THEATRE';

-- Stadium
UPDATE Buildings
SET Happiness = '0'
WHERE Type = 'BUILDING_STADIUM';

UPDATE Buildings
SET LandmarksTourismPercent = '25'
WHERE Type = 'BUILDING_STADIUM';

UPDATE Buildings
SET WLTKDTurns = '10'
WHERE Type = 'BUILDING_STADIUM';

UPDATE Buildings
SET GreatWorksTourismModifier = '25'
WHERE Type = 'BUILDING_STADIUM';

-- Police Station
UPDATE Buildings
SET PrereqTech = 'TECH_ELECTRONICS'
WHERE Type = 'BUILDING_POLICE_STATION';

UPDATE Buildings
SET EspionageModifier = '-25'
WHERE Type = 'BUILDING_POLICE_STATION';

UPDATE Buildings
SET Happiness = '0'
WHERE Type = 'BUILDING_POLICE_STATION';

INSERT INTO Building_YieldFromSpyDefense
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_POLICE_STATION', 'YIELD_CULTURE', 25),
	('BUILDING_POLICE_STATION', 'YIELD_GOLD', 25);

-- Constabulary
UPDATE Buildings
SET EspionageModifier = '-25'
WHERE Type = 'BUILDING_CONSTABLE';

UPDATE Buildings
SET Defense = '0'
WHERE Type = 'BUILDING_CONSTABLE';

-- Guilds
UPDATE Buildings
SET GreatPeopleRateChange = '3'
WHERE Type = 'BUILDING_WRITERS_GUILD';

UPDATE Buildings
SET GreatPeopleRateChange = '4'
WHERE Type = 'BUILDING_ARTISTS_GUILD';

UPDATE Buildings
SET GreatWorkSlotType = 'GREAT_WORK_SLOT_ART_ARTIFACT'
WHERE Type = 'BUILDING_ARTISTS_GUILD';

UPDATE Buildings
SET GreatWorkCount = '1'
WHERE Type = 'BUILDING_ARTISTS_GUILD';

UPDATE Buildings
SET GreatPeopleRateChange = '5'
WHERE Type = 'BUILDING_MUSICIANS_GUILD';


UPDATE Buildings
SET NoUnhappfromXSpecialists = '1'
WHERE Type = 'BUILDING_ARTISTS_GUILD';

UPDATE Buildings
SET NoUnhappfromXSpecialists = '1'
WHERE Type = 'BUILDING_WRITERS_GUILD';

UPDATE Buildings
SET NoUnhappfromXSpecialists = '1'
WHERE Type = 'BUILDING_MUSICIANS_GUILD';

-- Building Era reductions

UPDATE Eras
SET LaterEraBuildingConstructMod = '-2';

-- New Data

DELETE FROM Building_ResourceYieldChanges WHERE ResourceType = 'RESOURCE_MARBLE';
DELETE FROM Building_ResourceYieldChanges WHERE ResourceType = 'RESOURCE_STONE';

INSERT INTO Building_ResourceYieldChanges
	(BuildingType, ResourceType, YieldType, Yield)
VALUES
	('BUILDING_GRANARY', 'RESOURCE_BISON', 'YIELD_FOOD', 1),
	('BUILDING_AMPHITHEATER', 'RESOURCE_DYE', 'YIELD_CULTURE', 1),
	('BUILDING_AMPHITHEATER', 'RESOURCE_DYE', 'YIELD_GOLD', 1),
	('BUILDING_AMPHITHEATER', 'RESOURCE_SILK', 'YIELD_CULTURE', 1),
	('BUILDING_AMPHITHEATER', 'RESOURCE_SILK', 'YIELD_GOLD', 1),
	('BUILDING_TEMPLE', 'RESOURCE_INCENSE', 'YIELD_CULTURE', 1),
	('BUILDING_TEMPLE', 'RESOURCE_INCENSE', 'YIELD_GOLD', 1),
	('BUILDING_TEMPLE', 'RESOURCE_WINE', 'YIELD_GOLD', 1),
	('BUILDING_TEMPLE', 'RESOURCE_WINE', 'YIELD_CULTURE', 1),
	('BUILDING_GARDEN', 'RESOURCE_CLOVES', 'YIELD_FAITH', 1),
	('BUILDING_GARDEN', 'RESOURCE_CLOVES', 'YIELD_CULTURE', 1),
	('BUILDING_GARDEN', 'RESOURCE_PEPPER', 'YIELD_FAITH', 1),
	('BUILDING_GARDEN', 'RESOURCE_PEPPER', 'YIELD_GOLD', 1),
	('BUILDING_GARDEN', 'RESOURCE_NUTMEG', 'YIELD_PRODUCTION', 1),
	('BUILDING_GARDEN', 'RESOURCE_NUTMEG', 'YIELD_CULTURE', 1),
	('BUILDING_GARDEN', 'RESOURCE_CITRUS', 'YIELD_GOLD', 1),
	('BUILDING_GARDEN', 'RESOURCE_CITRUS', 'YIELD_FOOD', 1),
	('BUILDING_GARDEN', 'RESOURCE_COCOA', 'YIELD_GOLD', 1),
	('BUILDING_GARDEN', 'RESOURCE_COCOA', 'YIELD_FOOD', 1),
	('BUILDING_MARKET', 'RESOURCE_SPICES', 'YIELD_FOOD', 1),
	('BUILDING_MARKET', 'RESOURCE_SPICES', 'YIELD_PRODUCTION', 1),
	('BUILDING_MARKET', 'RESOURCE_SUGAR', 'YIELD_GOLD', 1),
	('BUILDING_MARKET', 'RESOURCE_SUGAR', 'YIELD_FOOD', 1),
	('BUILDING_BANK', 'RESOURCE_GEMS', 'YIELD_GOLD', 1),
	('BUILDING_BANK', 'RESOURCE_GEMS', 'YIELD_CULTURE', 2),
	('BUILDING_BANK', 'RESOURCE_GOLD', 'YIELD_GOLD', 3),
	('BUILDING_BANK', 'RESOURCE_SILVER', 'YIELD_GOLD', 1),
	('BUILDING_BANK', 'RESOURCE_SILVER', 'YIELD_PRODUCTION', 1),
	('BUILDING_BANK', 'RESOURCE_SILVER', 'YIELD_CULTURE', 1),
	('BUILDING_FORGE', 'RESOURCE_COPPER', 'YIELD_GOLD', 2),
	('BUILDING_FORGE', 'RESOURCE_IRON', 'YIELD_PRODUCTION', 1),
	('BUILDING_FORGE', 'RESOURCE_IRON', 'YIELD_GOLD', 1),
	('BUILDING_CARAVANSARY', 'RESOURCE_TRUFFLES', 'YIELD_GOLD', 2),
	('BUILDING_CARAVANSARY', 'RESOURCE_COTTON', 'YIELD_CULTURE', 1),
	('BUILDING_CARAVANSARY', 'RESOURCE_COTTON', 'YIELD_PRODUCTION', 1),
	('BUILDING_CARAVANSARY', 'RESOURCE_FUR', 'YIELD_GOLD', 1),
	('BUILDING_CARAVANSARY', 'RESOURCE_FUR', 'YIELD_PRODUCTION', 1),
	('BUILDING_STONE_WORKS', 'RESOURCE_STONE', 'YIELD_PRODUCTION', 2),
	('BUILDING_STONE_WORKS', 'RESOURCE_MARBLE', 'YIELD_PRODUCTION', 1),
	('BUILDING_STONE_WORKS', 'RESOURCE_MARBLE', 'YIELD_GOLD', 1),
	('BUILDING_STONE_WORKS', 'RESOURCE_SALT', 'YIELD_GOLD', 2),
	('BUILDING_CIRCUS', 'RESOURCE_IVORY', 'YIELD_CULTURE', 3),
	('BUILDING_LABORATORY', 'RESOURCE_URANIUM', 'YIELD_SCIENCE', 4),
	('BUILDING_LABORATORY', 'RESOURCE_ALUMINUM', 'YIELD_SCIENCE', 4),
	('BUILDING_MINT', 'RESOURCE_BANANA', 'YIELD_GOLD', 2),
	('BUILDING_HANSE', 'RESOURCE_BANANA', 'YIELD_GOLD', 2);

INSERT INTO Building_YieldChanges
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_STONE_WORKS', 'YIELD_PRODUCTION', 1),
	('BUILDING_AQUEDUCT', 'YIELD_FOOD', 1),
	('BUILDING_COLOSSEUM', 'YIELD_CULTURE', 1),
	('BUILDING_THEATRE', 'YIELD_CULTURE', 2),
	('BUILDING_STABLE', 'YIELD_PRODUCTION', 3),
	('BUILDING_HARBOR', 'YIELD_GOLD', 1),
	('BUILDING_CARAVANSARY', 'YIELD_GOLD', 1),
	('BUILDING_MINT', 'YIELD_CULTURE', 2),
	('BUILDING_LIBRARY', 'YIELD_SCIENCE', 2),
	('BUILDING_UNIVERSITY', 'YIELD_SCIENCE', 3),
	('BUILDING_OBSERVATORY', 'YIELD_SCIENCE', 6),
	('BUILDING_HYDRO_PLANT', 'YIELD_PRODUCTION', 5),
	('BUILDING_GROVE', 'YIELD_SCIENCE', 1),
	('BUILDING_WELL', 'YIELD_PRODUCTION', 2),
	('BUILDING_WELL', 'YIELD_FOOD', 1),
	('BUILDING_STOCKYARD', 'YIELD_FOOD', 5),
	('BUILDING_COAL_PLANT', 'YIELD_PRODUCTION', 3),
	('BUILDING_WIND_PLANT', 'YIELD_PRODUCTION', 5),
	('BUILDING_HERBALIST', 'YIELD_FOOD', 1),
	('BUILDING_BARRACKS', 'YIELD_SCIENCE', 1),
	('BUILDING_ARMORY', 'YIELD_SCIENCE', 2),
	('BUILDING_MILITARY_ACADEMY', 'YIELD_SCIENCE', 1),
	('BUILDING_FORGE', 'YIELD_SCIENCE', 1),
	('BUILDING_BATH', 'YIELD_CULTURE', 2),
	('BUILDING_OPERA_HOUSE', 'YIELD_CULTURE', 3);

INSERT INTO Building_LakePlotYieldChanges
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_AQUEDUCT', 'YIELD_FOOD', 2);

INSERT INTO Building_LakePlotYieldChanges
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_WINDMILL', 'YIELD_PRODUCTION', 2),
	('BUILDING_WINDMILL', 'YIELD_GOLD', 2);

INSERT INTO Building_FeatureYieldChanges
	(BuildingType, FeatureType, YieldType, Yield)
VALUES
	('BUILDING_AQUEDUCT', 'FEATURE_OASIS', 'YIELD_FOOD', 2),
	('BUILDING_GARDEN', 'FEATURE_OASIS', 'YIELD_GOLD', 2),
	('BUILDING_WINDMILL', 'FEATURE_MARSH', 'YIELD_PRODUCTION', 2),
	('BUILDING_WINDMILL', 'FEATURE_MARSH', 'YIELD_GOLD', 2),
	('BUILDING_WORKSHOP', 'FEATURE_FOREST', 'YIELD_PRODUCTION', 1),
	('BUILDING_WORKSHOP', 'FEATURE_FOREST', 'YIELD_GOLD', 1),
	('BUILDING_THEATRE', 'FEATURE_FOREST', 'YIELD_CULTURE', 1),
	('BUILDING_THEATRE', 'FEATURE_JUNGLE', 'YIELD_CULTURE', 1),
	('BUILDING_THEATRE', 'FEATURE_FOREST', 'YIELD_TOURISM', 1),
	('BUILDING_THEATRE', 'FEATURE_JUNGLE', 'YIELD_TOURISM', 1);

INSERT INTO Building_YieldPerXTerrainTimes100
	(BuildingType, TerrainType, YieldType, Yield)
VALUES
	('BUILDING_CARAVANSARY', 'TERRAIN_DESERT', 'YIELD_FOOD', 34),
	('BUILDING_CARAVANSARY', 'TERRAIN_DESERT', 'YIELD_GOLD', 34),
	('BUILDING_CARAVANSARY', 'TERRAIN_TUNDRA', 'YIELD_FOOD', 34),
	('BUILDING_CARAVANSARY', 'TERRAIN_TUNDRA', 'YIELD_GOLD', 34);

INSERT INTO Building_YieldPerXFeatureTimes100
	(BuildingType, FeatureType, YieldType, Yield)
VALUES
	('BUILDING_HERBALIST', 'FEATURE_FOREST', 'YIELD_FOOD', 50),
	('BUILDING_HERBALIST', 'FEATURE_JUNGLE', 'YIELD_FOOD', 50);

INSERT INTO Building_BuildingClassYieldChanges
	(BuildingType, BuildingClassType, YieldType, YieldChange)
VALUES
	('BUILDING_OPERA_HOUSE', 'BUILDINGCLASS_MUSICIANS_GUILD', 'YIELD_GOLD', 1),
	('BUILDING_AMPHITHEATER', 'BUILDINGCLASS_WRITERS_GUILD', 'YIELD_GOLD', 1),
	('BUILDING_MUSEUM', 'BUILDINGCLASS_ARTISTS_GUILD', 'YIELD_GOLD', 1),
	('BUILDING_FACTORY', 'BUILDINGCLASS_FACTORY', 'YIELD_PRODUCTION', 2);

INSERT INTO Building_SpecificGreatPersonRateModifier
	(BuildingType, SpecialistType, Modifier)
VALUES
	('BUILDING_AMPHITHEATER', 'SPECIALIST_WRITER', 33),
	('BUILDING_OPERA_HOUSE', 'SPECIALIST_MUSICIAN', 33),
	('BUILDING_MUSEUM', 'SPECIALIST_ARTIST', 33),
	('BUILDING_LABORATORY', 'SPECIALIST_SCIENTIST', 33);

INSERT INTO Building_DomainProductionModifiers
	(BuildingType, DomainType, Modifier)
VALUES
	('BUILDING_MILITARY_ACADEMY', 'DOMAIN_LAND', 15),
	('BUILDING_MILITARY_BASE', 'DOMAIN_AIR', 25);

INSERT INTO Building_BuildingClassLocalYieldChanges
	(BuildingType, BuildingClassType, YieldType, YieldChange)
VALUES
	('BUILDING_COLOSSEUM', 'BUILDINGCLASS_BARRACKS', 'YIELD_PRODUCTION', 2),
	('BUILDING_COLOSSEUM', 'BUILDINGCLASS_FORGE', 'YIELD_PRODUCTION', 2),
	('BUILDING_COLOSSEUM', 'BUILDINGCLASS_ARMORY', 'YIELD_PRODUCTION', 2),
	('BUILDING_LABORATORY', 'BUILDINGCLASS_HOSPITAL', 'YIELD_SCIENCE', 4),
	('BUILDING_LABORATORY', 'BUILDINGCLASS_MEDICAL_LAB', 'YIELD_SCIENCE', 4),
	('BUILDING_LABORATORY', 'BUILDINGCLASS_FACTORY', 'YIELD_SCIENCE', 4),
	('BUILDING_WINDMILL', 'BUILDINGCLASS_GROCER', 'YIELD_FOOD', 1),
	('BUILDING_WINDMILL', 'BUILDINGCLASS_GRANARY', 'YIELD_FOOD', 1),
	('BUILDING_BATH', 'BUILDINGCLASS_AMPHITHEATER', 'YIELD_GOLD', 1),
	('BUILDING_BATH', 'BUILDINGCLASS_TEMPLE', 'YIELD_GOLD', 1),
	('BUILDING_BATH', 'BUILDINGCLASS_GARDEN', 'YIELD_GOLD', 1),
	('BUILDING_BATH', 'BUILDINGCLASS_AMPHITHEATER', 'YIELD_CULTURE', 1),
	('BUILDING_BATH', 'BUILDINGCLASS_TEMPLE', 'YIELD_CULTURE', 1),
	('BUILDING_BATH', 'BUILDINGCLASS_GARDEN', 'YIELD_CULTURE', 1),
	('BUILDING_BANK', 'BUILDINGCLASS_MINT', 'YIELD_GOLD', 3),
	('BUILDING_BANK', 'BUILDINGCLASS_CARAVANSARY', 'YIELD_GOLD', 3);

INSERT INTO Building_InstantYield
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_GRANARY', 'YIELD_FOOD', 25),
	('BUILDING_STADIUM', 'YIELD_TOURISM', 2500),
	('BUILDING_THEATRE', 'YIELD_TOURISM', 1000),
	('BUILDING_CIRCUS', 'YIELD_TOURISM', 500);

INSERT INTO Building_SeaPlotYieldChanges
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_HARBOR', 'YIELD_FOOD', 1),
	('BUILDING_SEAPORT', 'YIELD_PRODUCTION', 1),
	('BUILDING_SEAPORT', 'YIELD_GOLD', 1),
	('BUILDING_LIGHTHOUSE', 'YIELD_GOLD', 1);

INSERT INTO Building_SeaResourceYieldChanges
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_HARBOR', 'YIELD_PRODUCTION', 1);	

INSERT INTO Building_YieldChangesPerPop
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_PALACE', 'YIELD_SCIENCE', 34),
	('BUILDING_BROADCAST_TOWER', 'YIELD_CULTURE', 50),
	('BUILDING_BROADCAST_TOWER', 'YIELD_TOURISM', 50),
	('BUILDING_MUSEUM', 'YIELD_CULTURE', 25),
	('BUILDING_MUSEUM', 'YIELD_TOURISM', 25),
	('BUILDING_FACTORY', 'YIELD_PRODUCTION', 25),
	('BUILDING_WATERMILL', 'YIELD_PRODUCTION', 25),
	('BUILDING_STOCK_EXCHANGE', 'YIELD_GOLD', 50),
	('BUILDING_WELL', 'YIELD_PRODUCTION', 20),
	('BUILDING_WORKSHOP', 'YIELD_PRODUCTION', 10),
	('BUILDING_GROCER', 'YIELD_FOOD', 20),
	('BUILDING_STADIUM', 'YIELD_GOLDEN_AGE_POINTS', 50),
	('BUILDING_HOSPITAL', 'YIELD_FOOD', 10),
	('BUILDING_COLOSSEUM', 'YIELD_TOURISM', 25);

INSERT INTO Building_GreatWorkYieldChangesLocal
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_MUSEUM', 'YIELD_TOURISM', 1),
	('BUILDING_OPERA_HOUSE', 'YIELD_TOURISM', 1),
	('BUILDING_BROADCAST_TOWER', 'YIELD_TOURISM', 2);

INSERT INTO Building_YieldFromInternalTR
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_LIGHTHOUSE', 'YIELD_FOOD', 4),
	('BUILDING_JELLING_STONES', 'YIELD_FOOD', 6),
	('BUILDING_TRAINSTATION', 'YIELD_FOOD', 6),
	('BUILDING_STABLE', 'YIELD_PRODUCTION', 2),
	('BUILDING_DUCAL_STABLE', 'YIELD_PRODUCTION', 4),
	('BUILDING_WORKSHOP', 'YIELD_PRODUCTION', 4);

INSERT INTO Building_GrowthExtraYield
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_AQUEDUCT', 'YIELD_PRODUCTION', 25);

INSERT INTO Building_HurryModifiersLocal
	(BuildingType, HurryType, HurryCostModifier)
VALUES
	('BUILDING_STOCK_EXCHANGE', 'HURRY_GOLD', -20);

INSERT INTO Building_ClassesNeededInCity
	(BuildingType, BuildingClassType)
VALUES
	('BUILDING_MINT', 'BUILDINGCLASS_MARKET'),
	('BUILDING_CARAVANSARY', 'BUILDINGCLASS_MARKET'),
	('BUILDING_LIBRARY', 'BUILDINGCLASS_GROVE'),
	('BUILDING_CIRCUS', 'BUILDINGCLASS_COLOSSEUM'),
	('BUILDING_WORKSHOP', 'BUILDINGCLASS_FORGE'),
	('BUILDING_LONGHOUSE', 'BUILDINGCLASS_FORGE'),
	('BUILDING_GROCER', 'BUILDINGCLASS_AQUEDUCT'),
	('BUILDING_STOCKYARD', 'BUILDINGCLASS_GROCER'),
	('BUILDING_MINEFIELD', 'BUILDINGCLASS_HARBOR'),
	('BUILDING_GARDEN', 'BUILDINGCLASS_AQUEDUCT'),
	('BUILDING_HARBOR', 'BUILDINGCLASS_LIGHTHOUSE');

INSERT INTO Building_YieldPerXTerrainTimes100
	(BuildingType, TerrainType, YieldType, Yield)
VALUES
	('BUILDING_OBSERVATORY', 'TERRAIN_MOUNTAIN', 'YIELD_SCIENCE', 100);
	
INSERT INTO Building_TerrainYieldChanges
	(BuildingType, TerrainType, YieldType, Yield)
VALUES
	('BUILDING_UNIVERSITY', 'TERRAIN_SNOW', 'YIELD_SCIENCE', 1);

INSERT INTO Building_GrowthExtraYield
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_UNIVERSITY', 'YIELD_SCIENCE', 25);

INSERT INTO Building_YieldFromPurchase
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_BANK', 'YIELD_SCIENCE', 15);

INSERT INTO Building_YieldFromBirth
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_GROVE', 'YIELD_SCIENCE', 5);

INSERT INTO Building_LocalResourceOrs
	(BuildingType, ResourceType)
VALUES
	('BUILDING_STONE_WORKS', 'RESOURCE_SALT');

INSERT INTO Building_ImprovementYieldChanges
	(BuildingType, ImprovementType, YieldType, Yield)
VALUES
	('BUILDING_HERBALIST', 'IMPROVEMENT_PLANTATION', 'YIELD_PRODUCTION', 1),
	('BUILDING_HERBALIST', 'IMPROVEMENT_CAMP', 'YIELD_PRODUCTION', 1),
	('BUILDING_FORGE', 'IMPROVEMENT_MINE', 'YIELD_PRODUCTION', 2),
	('BUILDING_LABORATORY', 'IMPROVEMENT_ACADEMY', 'YIELD_SCIENCE', 4),
	('BUILDING_STOCK_EXCHANGE', 'IMPROVEMENT_CUSTOMS_HOUSE', 'YIELD_GOLD', 2),
	('BUILDING_STOCK_EXCHANGE', 'IMPROVEMENT_TRADING_POST', 'YIELD_GOLD', 2),
	('BUILDING_FACTORY', 'IMPROVEMENT_MANUFACTORY', 'YIELD_PRODUCTION', 2),
	('BUILDING_STOCKYARD', 'IMPROVEMENT_FARM', 'YIELD_PRODUCTION', 2),
	('BUILDING_STOCKYARD', 'IMPROVEMENT_FARM', 'YIELD_GOLD', 2),
	('BUILDING_STOCKYARD', 'IMPROVEMENT_PASTURE', 'YIELD_PRODUCTION', 2),
	('BUILDING_STOCKYARD', 'IMPROVEMENT_PASTURE', 'YIELD_GOLD', 2),
	('BUILDING_CASTLE', 'IMPROVEMENT_QUARRY', 'YIELD_PRODUCTION', 1);
	--('BUILDING_MISSION', 'IMPROVEMENT_QUARRY', 'YIELD_PRODUCTION', 1);

INSERT INTO Building_ResourceQuantityRequirements
	(BuildingType, ResourceType, Cost)
VALUES
	('BUILDING_WIND_PLANT', 'RESOURCE_IRON', 1),
	('BUILDING_MINEFIELD', 'RESOURCE_IRON', 1),
	('BUILDING_SEAPORT', 'RESOURCE_COAL', 1),
	('BUILDING_TRAINSTATION', 'RESOURCE_COAL', 1),
	('BUILDING_SOLAR_PLANT', 'RESOURCE_ALUMINUM', 1),
	('BUILDING_STOCKYARD', 'RESOURCE_HORSE', 2);

INSERT INTO Building_ResourceQuantity
	(BuildingType, ResourceType, Quantity)
VALUES
	('BUILDING_COAL_PLANT', 'RESOURCE_COAL', 1),
	('BUILDING_COAL_PLANT', 'RESOURCE_IRON', 1);

INSERT INTO Building_ThemingBonuses
	(BuildingType, Description, Bonus, SameEra, ConsecutiveEras, UniqueEras,  AIPriority)
VALUES
	('BUILDING_BROADCAST_TOWER', 'TXT_KEY_THEMING_BONUS_BROADCAST_TOWER_NATIONAL', 14, 1, 0, 0, 2),
	('BUILDING_BROADCAST_TOWER', 'TXT_KEY_THEMING_BONUS_BROADCAST_TOWER_CLASSICS', 14, 0, 1, 0, 2),
	('BUILDING_BROADCAST_TOWER', 'TXT_KEY_THEMING_BONUS_BROADCAST_TOWER_ALL', 14, 0, 0, 1, 2);

INSERT INTO Building_ThemingBonuses
	(BuildingType, Description, Bonus, RequiresOwner, RequiresAnyButOwner,  AIPriority)
VALUES
	('BUILDING_AMPHITHEATER', 'TXT_KEY_THEMING_BONUS_AMPHITHEATER_NATIONAL', 4, 1, 0, 1),
	('BUILDING_AMPHITHEATER', 'TXT_KEY_THEMING_BONUS_AMPHITHEATER_GLOBAL', 4, 0, 1, 1);

UPDATE Building_ThemingBonuses SET AIPriority = '4' WHERE BuildingType = 'BUILDING_SYDNEY_OPERA_HOUSE';
UPDATE Building_ThemingBonuses SET AIPriority = '3' WHERE BuildingType = 'BUILDING_BROADWAY';
UPDATE Building_ThemingBonuses SET AIPriority = '2' WHERE BuildingType = 'BUILDING_OXFORD_UNIVERSITY';

INSERT INTO Building_ThemingYieldBonus
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_AMPHITHEATER', 'YIELD_CULTURE', 2),
	('BUILDING_MUSEUM', 'YIELD_CULTURE', 4),
	('BUILDING_HERMITAGE', 'YIELD_GOLD', 4),
	('BUILDING_HERMITAGE', 'YIELD_CULTURE', 4),
	('BUILDING_OXFORD_UNIVERSITY', 'YIELD_SCIENCE', 4),
	('BUILDING_SISTINE_CHAPEL', 'YIELD_FAITH', 3),
	('BUILDING_SISTINE_CHAPEL', 'YIELD_CULTURE', 3),
	('BUILDING_LOUVRE', 'YIELD_CULTURE', 15),
	('BUILDING_GREAT_LIBRARY', 'YIELD_SCIENCE', 3),
	('BUILDING_SYDNEY_OPERA_HOUSE', 'YIELD_CULTURE', 15),
	('BUILDING_UFFIZI', 'YIELD_CULTURE', 10),
	('BUILDING_GLOBE_THEATER', 'YIELD_GOLD', 10),
	('BUILDING_BROADWAY', 'YIELD_GOLD', 20),
	('BUILDING_RELIQUARY', 'YIELD_FAITH', 10),
	('BUILDING_BROADCAST_TOWER', 'YIELD_GOLD', 10),
	('BUILDING_ROYAL_LIBRARY', 'YIELD_PRODUCTION', 3),
	('BUILDING_ROYAL_LIBRARY', 'YIELD_SCIENCE', 3),
	('BUILDING_PARTHENON', 'YIELD_CULTURE', 3),
	('BUILDING_NOTRE_DAME', 'YIELD_FAITH', 3),
	('BUILDING_NOTRE_DAME', 'YIELD_GOLDEN_AGE_POINTS', 3);

INSERT INTO Building_GreatWorkYieldChanges
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_UFFIZI', 'YIELD_CULTURE', 1);
	

INSERT INTO Building_Flavors
	(BuildingType, FlavorType, Flavor)
VALUES
	('BUILDING_BATH', 'FLAVOR_CULTURE', 35),
	('BUILDING_HERBALIST', 'FLAVOR_PRODUCTION', 20),
	('BUILDING_HERBALIST', 'FLAVOR_GROWTH', 20),
	('BUILDING_GROCER', 'FLAVOR_GROWTH', 25),
	('BUILDING_GROCER', 'FLAVOR_HAPPINESS', 25),
	('BUILDING_WELL', 'FLAVOR_GROWTH', 25),
	('BUILDING_WELL', 'FLAVOR_PRODUCTION', 10),
	('BUILDING_GROVE', 'FLAVOR_SCIENCE', 35),
	('BUILDING_GROVE', 'FLAVOR_GROWTH', 10),
	('BUILDING_WIND_PLANT', 'FLAVOR_GROWTH', 10),
	('BUILDING_WIND_PLANT', 'FLAVOR_PRODUCTION', 70),
	('BUILDING_STOCKYARD', 'FLAVOR_GROWTH', 40),
	('BUILDING_COAL_PLANT', 'FLAVOR_PRODUCTION', 30),
	('BUILDING_MINEFIELD', 'FLAVOR_CITY_DEFENSE', 50),
	('BUILDING_CARAVANSARY', 'FLAVOR_CULTURE', 30),
	('BUILDING_HARBOR', 'FLAVOR_CULTURE', 30),
	('BUILDING_MINT', 'FLAVOR_CULTURE', 40),
	('BUILDING_TRAINSTATION', 'FLAVOR_PRODUCTION', 50);

UPDATE Building_Flavors
SET Flavor = '50'
WHERE BuildingType = 'BUILDING_SEAPORT';

UPDATE Building_Flavors
SET Flavor = '60'
WHERE BuildingType = 'BUILDING_SATRAPS_COURT';


INSERT INTO Building_YieldModifiers
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_SOLAR_PLANT', 'YIELD_PRODUCTION', 10),
	('BUILDING_NUCLEAR_PLANT', 'YIELD_PRODUCTION', 50),
	('BUILDING_WIND_PLANT', 'YIELD_PRODUCTION', 15),
	('BUILDING_HYDRO_PLANT', 'YIELD_PRODUCTION', 15),
	('BUILDING_TRAINSTATION', 'YIELD_PRODUCTION', 25),
	('BUILDING_TRAINSTATION', 'YIELD_GOLD', 10),
	('BUILDING_SEAPORT', 'YIELD_PRODUCTION', 25),
	('BUILDING_SPACESHIP_FACTORY', 'YIELD_SCIENCE', 25);

INSERT INTO Building_GoldenAgeYieldMod
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_BATH', 'YIELD_CULTURE', 10);

INSERT INTO Building_SpecialistYieldChangesLocal
	(BuildingType, SpecialistType, YieldType, Yield)
VALUES
	('BUILDING_MEDICAL_LAB', 'SPECIALIST_SCIENTIST', 'YIELD_SCIENCE', 2),
	('BUILDING_MEDICAL_LAB', 'SPECIALIST_ENGINEER', 'YIELD_PRODUCTION', 2),
	('BUILDING_MEDICAL_LAB', 'SPECIALIST_MERCHANT', 'YIELD_GOLD', 2),
	('BUILDING_GARDEN', 'SPECIALIST_ARTIST', 'YIELD_TOURISM', 1),
	('BUILDING_GARDEN', 'SPECIALIST_MUSICIAN', 'YIELD_TOURISM', 1),
	('BUILDING_GARDEN', 'SPECIALIST_WRITER', 'YIELD_TOURISM', 1),
	('BUILDING_CARAVANSARY', 'SPECIALIST_MERCHANT', 'YIELD_GOLD', 1);

UPDATE Buildings SET NeverCapture = '1' WHERE Type = 'BUILDING_ARTISTS_GUILD';
UPDATE Buildings SET NeverCapture = '1' WHERE Type = 'BUILDING_MUSICIANS_GUILD';
UPDATE Buildings SET NeverCapture = '1' WHERE Type = 'BUILDING_WRITERS_GUILD';
UPDATE Buildings SET NeverCapture = '1' WHERE Type = 'BUILDING_HOTEL';
UPDATE Buildings SET NeverCapture = '1' WHERE Type = 'BUILDING_KREPOST';
UPDATE Buildings SET NeverCapture = '1' WHERE Type = 'BUILDING_STABLE';