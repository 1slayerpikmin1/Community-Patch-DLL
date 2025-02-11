-- Yield Data

INSERT INTO Resource_FeatureBooleans
	(ResourceType, FeatureType)
VALUES
	('RESOURCE_BANANA', 'FEATURE_MARSH');

UPDATE Improvement_ResourceTypes
SET ImprovementType = 'IMPROVEMENT_QUARRY'
WHERE ResourceType = 'RESOURCE_URANIUM' AND ImprovementType = 'IMPROVEMENT_MINE';

UPDATE ArtDefine_Landmarks
SET ImprovementType = 'ART_DEF_IMPROVEMENT_QUARRY'
WHERE ResourceType = 'ART_DEF_RESOURCE_URANIUM'
AND State IS NOT 'Any';

UPDATE ArtDefine_Landmarks
SET ImprovementType = 'ART_DEF_IMPROVEMENT_QUARRY'
WHERE ResourceType = 'ART_DEF_RESOURCE_URANIUM_HEAVY'
AND State IS NOT 'Any';

UPDATE ArtDefine_Landmarks
SET ImprovementType = 'ART_DEF_IMPROVEMENT_QUARRY'
WHERE ResourceType = 'ART_DEF_RESOURCE_URANIUM_HEAVY_MARSH'
AND State IS NOT 'Any';

UPDATE ArtDefine_Landmarks
SET ImprovementType = 'ART_DEF_IMPROVEMENT_QUARRY'
WHERE ResourceType = 'ART_DEF_RESOURCE_URANIUM_MARSH'
AND State IS NOT 'Any';

-- New Resource - Brazilwood
INSERT INTO Resources
(Type, TechCityTrade, Description, Civilopedia, Help, ResourceClassType, Happiness, AIObjective, AITradeModifier, IconString, PortraitIndex, IconAtlas, ArtDefineTag)
Values
('RESOURCE_BRAZILWOOD', 'TECH_CALENDAR', 'TXT_KEY_RESOURCE_BRAZILWOOD', 'TXT_KEY_RESOURCE_BRAZILWOOD_TEXT', 'TXT_KEY_RESOURCE_BRAZILWOOD_HELP', 'RESOURCECLASS_LUXURY', '2', '1', '0', '[ICON_RES_BRAZILWOOD]', '11', 'VP_RESOURCE_ATLAS', 'ART_DEF_RESOURCE_FUR');

INSERT INTO Resource_Flavors
(ResourceType, FlavorType, Flavor)
Values
('RESOURCE_BRAZILWOOD', 'FLAVOR_HAPPINESS', '10');

-- Clear out old values.
DELETE FROM Resource_YieldChanges;

INSERT INTO Resource_YieldChanges
	(ResourceType, YieldType, Yield)
VALUES
	('RESOURCE_IRON', 'YIELD_PRODUCTION', 1),
	('RESOURCE_HORSE', 'YIELD_PRODUCTION', 1),
	('RESOURCE_COAL', 'YIELD_PRODUCTION', 1),
	('RESOURCE_OIL', 'YIELD_PRODUCTION', 1),
	('RESOURCE_ALUMINUM', 'YIELD_PRODUCTION', 1),
	('RESOURCE_STONE', 'YIELD_PRODUCTION', 1),
	('RESOURCE_WHEAT', 'YIELD_FOOD', 1),
	('RESOURCE_DEER', 'YIELD_FOOD', 1),
	('RESOURCE_JEWELRY', 'YIELD_GOLD', 2),
	('RESOURCE_PORCELAIN', 'YIELD_GOLD', 2),
	('RESOURCE_BISON', 'YIELD_FOOD', 1),
	('RESOURCE_FISH', 'YIELD_FOOD', 2),
	('RESOURCE_COW', 'YIELD_PRODUCTION', 1),
	('RESOURCE_SHEEP', 'YIELD_FOOD', 1),
	('RESOURCE_URANIUM', 'YIELD_SCIENCE', 1),
	('RESOURCE_URANIUM', 'YIELD_PRODUCTION', 1),
	('RESOURCE_CITRUS', 'YIELD_FOOD', 1),
	('RESOURCE_CITRUS', 'YIELD_GOLD', 1),
	('RESOURCE_CLOVES', 'YIELD_GOLD', 2),
	('RESOURCE_COCOA', 'YIELD_GOLD', 1),
	('RESOURCE_COCOA', 'YIELD_FOOD', 1),
	('RESOURCE_COPPER', 'YIELD_PRODUCTION', 1),
	('RESOURCE_COTTON', 'YIELD_GOLD', 2),
	('RESOURCE_CRAB', 'YIELD_GOLD', 1),
	('RESOURCE_CRAB', 'YIELD_FOOD', 1),
	('RESOURCE_DYE', 'YIELD_GOLD', 1),
	('RESOURCE_FUR', 'YIELD_FOOD', 2),
	('RESOURCE_GEMS', 'YIELD_GOLD', 1),
	('RESOURCE_GOLD', 'YIELD_GOLD', 2),
	('RESOURCE_INCENSE', 'YIELD_GOLD', 2),
	('RESOURCE_IVORY', 'YIELD_PRODUCTION', 1),
	('RESOURCE_MARBLE', 'YIELD_PRODUCTION', 1),
	('RESOURCE_NUTMEG', 'YIELD_GOLD', 1),
	('RESOURCE_NUTMEG', 'YIELD_PRODUCTION', 1),
	('RESOURCE_PEARLS', 'YIELD_GOLD', 2),
	('RESOURCE_PEPPER', 'YIELD_GOLD', 1),
	('RESOURCE_PEPPER', 'YIELD_FOOD', 1),
	('RESOURCE_SALT', 'YIELD_FOOD', 1),
	('RESOURCE_SALT', 'YIELD_PRODUCTION', 1),
	('RESOURCE_SILK', 'YIELD_GOLD', 2),
	('RESOURCE_SILVER', 'YIELD_GOLD', 1),
	('RESOURCE_SPICES', 'YIELD_GOLD', 1),
	('RESOURCE_SUGAR', 'YIELD_PRODUCTION', 1),
	('RESOURCE_SUGAR', 'YIELD_GOLD', 1),
	('RESOURCE_TRUFFLES', 'YIELD_GOLD', 2),
	('RESOURCE_WHALE', 'YIELD_PRODUCTION', 1),
	('RESOURCE_WHALE', 'YIELD_FOOD', 1),
	('RESOURCE_WINE', 'YIELD_FOOD', 1),
	('RESOURCE_WINE', 'YIELD_GOLD', 1),
	('RESOURCE_BRAZILWOOD', 'YIELD_GOLD', 1);

INSERT INTO Resource_TerrainBooleans
	(ResourceType, TerrainType)
VALUES
	('RESOURCE_OIL', 'TERRAIN_OCEAN');

INSERT INTO Resource_QuantityTypes
	(ResourceType, Quantity)
VALUES
	('RESOURCE_IRON', 2),
	('RESOURCE_IRON', 3),
	('RESOURCE_COAL', 2),
	('RESOURCE_COAL', 2),
	('RESOURCE_OIL', 3),
	('RESOURCE_OIL', 4),
	('RESOURCE_ALUMINUM', 2),
	('RESOURCE_ALUMINUM', 2),
	('RESOURCE_URANIUM', 3),
	('RESOURCE_URANIUM', 4);

INSERT INTO Resource_YieldChangeFromMonopoly
	(ResourceType, YieldType, Yield)
VALUES
	('RESOURCE_ALUMINUM', 'YIELD_PRODUCTION', 2),
	('RESOURCE_IRON', 'YIELD_PRODUCTION', 2),
	('RESOURCE_CRAB', 'YIELD_FOOD', 3),
	('RESOURCE_TRUFFLES', 'YIELD_FOOD', 3),
	('RESOURCE_SPICES', 'YIELD_CULTURE', 2),
	('RESOURCE_BRAZILWOOD', 'YIELD_CULTURE', 2),
	('RESOURCE_COCOA', 'YIELD_CULTURE', 2),
	('RESOURCE_CITRUS', 'YIELD_SCIENCE', 2),
	('RESOURCE_OIL', 'YIELD_SCIENCE', 2),
	('RESOURCE_HORSE', 'YIELD_SCIENCE', 2),
	('RESOURCE_COAL', 'YIELD_GOLD', 3),
	('RESOURCE_COTTON', 'YIELD_GOLD', 3),
	('RESOURCE_DYE', 'YIELD_GOLD', 3),
	('RESOURCE_INCENSE', 'YIELD_FAITH', 2),
	('RESOURCE_PEARLS', 'YIELD_FAITH', 2),
	('RESOURCE_PEPPER', 'YIELD_FOOD', 3),
	('RESOURCE_WINE', 'YIELD_FAITH', 2),
	('RESOURCE_SILVER', 'YIELD_CULTURE', 2),
	('RESOURCE_GOLD', 'YIELD_GOLDEN_AGE_POINTS', 2),
	('RESOURCE_IVORY', 'YIELD_GOLDEN_AGE_POINTS', 2);

INSERT INTO Resource_CityYieldModFromMonopoly
	(ResourceType, YieldType, Yield)
VALUES
	('RESOURCE_COPPER', 'YIELD_PRODUCTION', 10),
	('RESOURCE_MARBLE', 'YIELD_CULTURE', 10),
	('RESOURCE_SILK', 'YIELD_GOLD', 10),
	('RESOURCE_GEMS', 'YIELD_GOLD', 10),
	('RESOURCE_SALT', 'YIELD_FOOD', 10),
	('RESOURCE_SUGAR', 'YIELD_FOOD', 10),
	('RESOURCE_URANIUM', 'YIELD_SCIENCE', 10),
	('RESOURCE_NUTMEG', 'YIELD_PRODUCTION', 10),
	('RESOURCE_WHALE', 'YIELD_SCIENCE', 10);

-- Change Spices for Indonesia
	UPDATE Resources SET Flatlands = '1', MaxLatitude = '90', ArtDefineTag = 'ART_DEF_RESOURCE_NUTMEG', TechCityTrade = 'TECH_CALENDAR' WHERE Type = 'RESOURCE_NUTMEG';

	UPDATE Resources SET Flatlands = '1', MaxLatitude = '90', ArtDefineTag = 'ART_DEF_RESOURCE_CLOVES', TechCityTrade = 'TECH_CALENDAR' WHERE Type = 'RESOURCE_CLOVES';

	UPDATE Resources SET Flatlands = '1', MaxLatitude = '90', ArtDefineTag = 'ART_DEF_RESOURCE_PEPPER', TechCityTrade = 'TECH_CALENDAR' WHERE Type = 'RESOURCE_PEPPER';

INSERT INTO Resource_TerrainBooleans
	(ResourceType, TerrainType)
VALUES
	('RESOURCE_NUTMEG', 'TERRAIN_GRASS'),
	('RESOURCE_NUTMEG', 'TERRAIN_PLAINS'),
	('RESOURCE_CLOVES', 'TERRAIN_GRASS'),
	('RESOURCE_CLOVES', 'TERRAIN_PLAINS'),
	('RESOURCE_PEPPER', 'TERRAIN_GRASS'),
	('RESOURCE_PEPPER', 'TERRAIN_PLAINS');

INSERT INTO Resource_FeatureBooleans
	(ResourceType, FeatureType)
VALUES
	('RESOURCE_NUTMEG', 'FEATURE_JUNGLE'),
	('RESOURCE_NUTMEG', 'FEATURE_FLOOD_PLAINS'),
	('RESOURCE_CLOVES', 'FEATURE_JUNGLE'),
	('RESOURCE_CLOVES', 'FEATURE_FLOOD_PLAINS'),
	('RESOURCE_PEPPER', 'FEATURE_JUNGLE'),
	('RESOURCE_PEPPER', 'FEATURE_FLOOD_PLAINS');

INSERT INTO Improvement_ResourceTypes
	(ImprovementType, ResourceType)
VALUES
	('IMPROVEMENT_PLANTATION', 'RESOURCE_NUTMEG'),
	('IMPROVEMENT_PLANTATION', 'RESOURCE_CLOVES'),
	('IMPROVEMENT_PLANTATION', 'RESOURCE_PEPPER');

INSERT INTO Improvement_ResourceType_Yields
		(ImprovementType, 			ResourceType, 		YieldType, 			Yield)
VALUES	('IMPROVEMENT_PLANTATION', 	'RESOURCE_CLOVES', 	'YIELD_FAITH', 		1),
		('IMPROVEMENT_PLANTATION', 	'RESOURCE_CLOVES', 	'YIELD_GOLD', 		1),
		('IMPROVEMENT_PLANTATION', 	'RESOURCE_NUTMEG', 	'YIELD_CULTURE', 	1),
		('IMPROVEMENT_PLANTATION', 	'RESOURCE_NUTMEG', 	'YIELD_GOLD', 		1),
		('IMPROVEMENT_PLANTATION', 	'RESOURCE_PEPPER', 	'YIELD_GOLD', 		1),
		('IMPROVEMENT_PLANTATION', 	'RESOURCE_PEPPER', 	'YIELD_FAITH', 		1);

-- Move Coal to Steampower

	UPDATE Resources
	SET TechReveal = 'TECH_STEAM_POWER', TechCityTrade = 'TECH_STEAM_POWER'
	WHERE Type = 'RESOURCE_COAL';

-- Move Oil to Combustion

	UPDATE Builds
	SET PrereqTech = 'TECH_COMBUSTION'
	WHERE Type = 'BUILD_WELL';
	
	UPDATE Resources
	SET TechReveal = 'TECH_COMBUSTION', TechCityTrade = 'TECH_COMBUSTION'
	WHERE Type = 'RESOURCE_OIL';

	-- Stone good for Ancient and Classical wonders
	UPDATE Resources
	SET WonderProductionMod = '10', WonderProductionModObsoleteEra = 'ERA_MEDIEVAL'
	WHERE Type = 'RESOURCE_STONE';

	-- Marble good for Classical thru Renaissance wonders
	UPDATE Resources
	SET WonderProductionMod = '15', WonderProductionModObsoleteEra = 'ERA_INDUSTRIAL'
	WHERE Type = 'RESOURCE_MARBLE';

	-- Resource Monopoly Changes (would probably better to set all to 1 and update 0s)
	UPDATE Resources
	SET IsMonopoly = '1'
	WHERE Type IN 
	('RESOURCE_BRAZILWOOD',
	'RESOURCE_ALUMINUM',
	'RESOURCE_CITRUS',
	'RESOURCE_CLOVES',
	'RESOURCE_COAL',
	'RESOURCE_COCOA',
	'RESOURCE_COPPER',
	'RESOURCE_COTTON',
	'RESOURCE_CRAB',
	'RESOURCE_DYE',
	'RESOURCE_FUR',
	'RESOURCE_GEMS',
	'RESOURCE_GOLD',
	'RESOURCE_HORSE',
	'RESOURCE_INCENSE',
	'RESOURCE_IRON',
	'RESOURCE_IVORY',
	'RESOURCE_JEWELRY',
	'RESOURCE_MARBLE', 
	'RESOURCE_NUTMEG', 
	'RESOURCE_OIL', 
	'RESOURCE_PEARLS', 
	'RESOURCE_PEPPER',  
	'RESOURCE_PORCELAIN',
	'RESOURCE_SALT', 
	'RESOURCE_SILK',  
	'RESOURCE_SILVER', 
	'RESOURCE_SPICES', 
	'RESOURCE_SUGAR', 
	'RESOURCE_TRUFFLES',
	'RESOURCE_URANIUM', 
	'RESOURCE_WHALE', 
	'RESOURCE_WINE');

	UPDATE Resources
	SET MonopolyHealBonus = '5'
	WHERE Type = 'RESOURCE_ALUMINUM';

	UPDATE Resources
	SET MonopolyHappiness = '6'
	WHERE Type = 'RESOURCE_CLOVES';

	UPDATE Resources
	SET  MonopolyMovementBonus = '1'
	WHERE Type = 'RESOURCE_COAL';

	UPDATE Resources
	SET MonopolyHappiness = '6'
	WHERE Type = 'RESOURCE_FUR';

	UPDATE Resources
	SET MonopolyGALength = '25'
	WHERE Type = 'RESOURCE_GOLD';

	UPDATE Resources
	SET MonopolyAttackBonus = '10'
	WHERE Type = 'RESOURCE_HORSE';

	UPDATE Resources
	SET MonopolyDefenseBonus = '10'
	WHERE Type = 'RESOURCE_IRON';

	UPDATE Resources
	SET MonopolyGALength = '25'
	WHERE Type = 'RESOURCE_IVORY';

	UPDATE Resources
	SET MonopolyHappiness = '6'
	WHERE Type = 'RESOURCE_JEWELRY';

	UPDATE Resources
	SET MonopolyXPBonus = '2'
	WHERE Type = 'RESOURCE_OIL';

	UPDATE Resources
	SET MonopolyGALength = '30'
	WHERE Type = 'RESOURCE_PORCELAIN';

	UPDATE Resources
	SET MonopolyAttackBonus = '10'
	WHERE Type = 'RESOURCE_URANIUM';

	-- Text files for changes.

	-- Other Text
	UPDATE Resources
	SET Help = 'TXT_KEY_RESOURCE_MONOPOLY_HAPPINESS'
	WHERE MonopolyHappiness = '6';

	UPDATE Resources
	SET Help = 'TXT_KEY_RESOURCE_MONOPOLY_GA_LENGTH'
	WHERE MonopolyGALength = '25';

	-- Exception for Porcelain: +30% length and no tile bonus
	UPDATE Resources
	SET Help = 'TXT_KEY_RESOURCE_MONOPOLY_GA_LENGTH_ONLY'
	WHERE Type = 'RESOURCE_PORCELAIN';

	-- Yield Text

	UPDATE Resources
	SET Help = 'TXT_KEY_RESOURCE_MONOPOLY_YIELD_GOLD'
	WHERE Type IN ('RESOURCE_COTTON', 'RESOURCE_DYE');

	UPDATE Resources
	SET Help = 'TXT_KEY_RESOURCE_MONOPOLY_YIELD_PRODUCTION_ALUMINUM'
	WHERE Type = 'RESOURCE_ALUMINUM';

	UPDATE Resources
	SET Help = 'TXT_KEY_RESOURCE_MONOPOLY_YIELD_GOLD_COAL'
	WHERE Type = 'RESOURCE_COAL';

	UPDATE Resources
	SET Help = 'TXT_KEY_RESOURCE_MONOPOLY_YIELD_FOOD'
	WHERE Type IN ('RESOURCE_CRAB', 'RESOURCE_TRUFFLES', 'RESOURCE_PEPPER');

	UPDATE Resources
	SET Help = 'TXT_KEY_RESOURCE_MONOPOLY_YIELD_SCIENCE'
	WHERE Type = 'RESOURCE_CITRUS';

	UPDATE Resources
	SET Help = 'TXT_KEY_RESOURCE_MONOPOLY_YIELD_FAITH'
	WHERE Type IN ('RESOURCE_PEARLS', 'RESOURCE_INCENSE', 'RESOURCE_WINE');

	UPDATE Resources
	SET Help = 'TXT_KEY_RESOURCE_MONOPOLY_YIELD_SCIENCE_OIL'
	WHERE Type = 'RESOURCE_OIL';

	UPDATE Resources
	SET Help = 'TXT_KEY_RESOURCE_MONOPOLY_YIELD_SCIENCE_HORSE'
	WHERE Type = 'RESOURCE_HORSE';

	UPDATE Resources
	SET Help = 'TXT_KEY_RESOURCE_MONOPOLY_YIELD_CULTURE'
	WHERE Type IN ('RESOURCE_COCOA', 'RESOURCE_SPICES', 'RESOURCE_SILVER');

-- Mod Text

	UPDATE Resources
	SET Help = 'TXT_KEY_RESOURCE_MONOPOLY_MOD_GOLD'
	WHERE Type IN ('RESOURCE_GEMS', 'RESOURCE_SILK');

	UPDATE Resources
	SET Help = 'TXT_KEY_RESOURCE_MONOPOLY_MOD_PRODUCTION'
	WHERE Type IN ('RESOURCE_COPPER', 'RESOURCE_NUTMEG');

	UPDATE Resources
	SET Help = 'TXT_KEY_RESOURCE_MONOPOLY_MOD_PRODUCTION_IRON'
	WHERE Type = 'RESOURCE_IRON';

	UPDATE Resources
	SET Help = 'TXT_KEY_RESOURCE_MONOPOLY_MOD_FOOD'
	WHERE Type IN ('RESOURCE_SALT', 'RESOURCE_SUGAR');

	UPDATE Resources
	SET Help = 'TXT_KEY_RESOURCE_MONOPOLY_MOD_CULTURE'
	WHERE Type = 'RESOURCE_MARBLE';

	UPDATE Resources
	SET Help = 'TXT_KEY_RESOURCE_MONOPOLY_MOD_SCIENCE_URANIUM'
	WHERE Type = 'RESOURCE_URANIUM';

	UPDATE Resources
	SET Help = 'TXT_KEY_RESOURCE_MONOPOLY_MOD_SCIENCE'
	WHERE Type = 'RESOURCE_WHALE';

	UPDATE Resources
	SET Help = 'TXT_KEY_RESOURCE_MONOPOLY_HAPPINESS'
	WHERE Type = 'RESOURCE_CLOVES';


	-- Strategic Values

	UPDATE Resources
	Set StrategicHelp = 'TXT_KEY_RESOURCE_MONOPOLY_STRAT_HORSE'
	WHERE Type = 'RESOURCE_HORSE';

	UPDATE Resources
	Set StrategicHelp = 'TXT_KEY_RESOURCE_MONOPOLY_STRAT_IRON'
	WHERE Type = 'RESOURCE_IRON';
	
	UPDATE Resources
	Set StrategicHelp = 'TXT_KEY_RESOURCE_MONOPOLY_STRAT_COAL'
	WHERE Type = 'RESOURCE_COAL';

	UPDATE Resources
	Set StrategicHelp = 'TXT_KEY_RESOURCE_MONOPOLY_STRAT_ALUMINUM'
	WHERE Type = 'RESOURCE_ALUMINUM';

	UPDATE Resources
	Set StrategicHelp = 'TXT_KEY_RESOURCE_MONOPOLY_STRAT_OIL'
	WHERE Type = 'RESOURCE_OIL';

	UPDATE Resources
	Set StrategicHelp = 'TXT_KEY_RESOURCE_MONOPOLY_STRAT_URANIUM'
	WHERE Type = 'RESOURCE_URANIUM';
