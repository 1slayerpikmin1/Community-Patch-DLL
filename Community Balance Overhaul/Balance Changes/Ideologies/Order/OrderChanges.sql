-- Academy of Sciences
DELETE FROM Policy_BuildingClassHappiness
WHERE PolicyType = 'POLICY_ACADEMY_SCIENCES';

-- Cultural Revolution
UPDATE Policies
SET StealTechFasterModifier = '100'
WHERE Type = 'POLICY_CULTURAL_REVOLUTION';

INSERT INTO Policy_GreatWorkYieldChanges
	(PolicyType, YieldType, Yield)
VALUES
	('POLICY_CULTURAL_REVOLUTION', 'YIELD_TOURISM', 5);
-- Dictatorship of the Proletariat

-- Double Agents
UPDATE Policies
SET FreeSpy = '3'
WHERE Type = 'POLICY_DOUBLE_AGENTS';

-- Hero of the People
UPDATE Policies
SET NumFreeGreatPeople = '1'
WHERE Type = 'POLICY_HERO_OF_THE_PEOPLE';

UPDATE Policies
SET GreatPeopleRateModifier = '25'
WHERE Type = 'POLICY_HERO_OF_THE_PEOPLE';

UPDATE Policies
SET IncludesOneShotFreeUnits = '1'
WHERE Type = 'POLICY_HERO_OF_THE_PEOPLE';

-- Party Leadership
UPDATE Policy_CityYieldChanges
SET Yield = '7'
WHERE PolicyType = 'POLICY_PARTY_LEADERSHIP';

DELETE FROM Policy_CityYieldChanges
WHERE PolicyType = 'POLICY_PARTY_LEADERSHIP' AND YieldType = 'YIELD_PRODUCTION';

-- Patriotic War
UPDATE Policies
SET CityCaptureHealGlobal = '100'
WHERE Type = 'POLICY_PATRIOTIC_WAR';

INSERT INTO Policy_UnitClassReplacements
	(PolicyType, ReplacedUnitClassType, ReplacementUnitClassType)
VALUES
	('POLICY_PATRIOTIC_WAR', 'UNITCLASS_TANK', 'UNITCLASS_PANZER');

DELETE FROM UnitPromotions_UnitCombats
WHERE PromotionType = 'PROMOTION_NATIONALISM';

-- Resettlement

UPDATE Policies
SET FreePopulation = '2'
WHERE Type = 'POLICY_RESETTLEMENT';

UPDATE Policies
SET NoPartisans = '1'
WHERE Type = 'POLICY_RESETTLEMENT';

-- Skyscrapers (now Communism)
UPDATE Policies
SET WonderProductionModifier = '20'
WHERE Type = 'POLICY_SKYSCRAPERS';

UPDATE Policies
SET BuildingPurchaseCostModifier = '-25'
WHERE Type = 'POLICY_SKYSCRAPERS';

-- Socialist Realism
DELETE FROM Policy_BuildingClassHappiness
WHERE PolicyType = 'POLICY_SOCIALIST_REALISM';

DELETE FROM Policy_BuildingClassProductionModifiers
WHERE PolicyType = 'POLICY_SOCIALIST_REALISM';

-- Worker's Faculties
UPDATE Policy_BuildingClassYieldModifiers
SET YieldMod = '10'
WHERE PolicyType = 'POLICY_WORKERS_FACULTIES';

UPDATE Policies
SET Level = '1'
WHERE Type = 'POLICY_WORKERS_FACULTIES';

--Peace, Land, Bread

DELETE FROM Policy_BuildingClassHappiness
WHERE PolicyType = 'POLICY_UNIVERSAL_HEALTHCARE_O';

UPDATE Policies
SET CityGrowthMod = '20'
WHERE Type = 'POLICY_UNIVERSAL_HEALTHCARE_O';

UPDATE Policies
SET BuildingGoldMaintenanceMod = '-20'
WHERE Type = 'POLICY_UNIVERSAL_HEALTHCARE_O';

UPDATE Policies
SET Help = 'TXT_KEY_POLICY_UNIVERSAL_HEALTHCARE_O_HELP'
WHERE Type = 'POLICY_UNIVERSAL_HEALTHCARE_O';

UPDATE Policies
SET Description = 'TXT_KEY_POLICY_UNIVERSAL_HEALTHCARE_O'
WHERE Type = 'POLICY_UNIVERSAL_HEALTHCARE_O';

UPDATE Policies
SET Civilopedia = 'TXT_KEY_POLICY_UNIVERSAL_HEALTHCARE_TEXT_O'
WHERE Type = 'POLICY_UNIVERSAL_HEALTHCARE_O';

-- Great Leap Forward
DELETE FROM Policy_BuildingClassHappiness
WHERE PolicyType = 'POLICY_YOUNG_PIONEERS';

UPDATE Policies
SET NumFreeTechs = '2'
WHERE Type = 'POLICY_YOUNG_PIONEERS';

UPDATE Policies
SET OneShot = '1'
WHERE Type = 'POLICY_YOUNG_PIONEERS';

UPDATE Policies
SET Level = '3'
WHERE Type = 'POLICY_YOUNG_PIONEERS';

-- Iron Curtain

UPDATE Policies
SET InternalTradeRouteYieldModifier = '200'
WHERE Type = 'POLICY_IRON_CURTAIN';

-- Dictatorship Proletariat

UPDATE Policies
SET LessHappyTourismModifier = '50'
WHERE Type = 'POLICY_DICTATORSHIP_PROLETARIAT';

UPDATE Policies
SET Level = '2'
WHERE Type = 'POLICY_DICTATORSHIP_PROLETARIAT';

-- Spaceflight Engineers

UPDATE Policies
SET GreatEngineerHurryModifier = '50'
WHERE Type = 'POLICY_SPACEFLIGHT_PIONEERS';

-- Five Year Plan
DELETE FROM Policy_CityYieldChanges
WHERE PolicyType = 'POLICY_FIVE_YEAR_PLAN';

UPDATE Policies
SET BuildingProductionModifier = '20'
WHERE Type = 'POLICY_FIVE_YEAR_PLAN';


-- NEW

INSERT INTO UnitPromotions_UnitCombats
	(PromotionType, UnitCombatType)
VALUES
	('PROMOTION_NATIONALISM', 'UNITCOMBAT_RECON'),
	('PROMOTION_NATIONALISM', 'UNITCOMBAT_ARCHER'),
	('PROMOTION_NATIONALISM', 'UNITCOMBAT_MOUNTED'),
	('PROMOTION_NATIONALISM', 'UNITCOMBAT_MELEE'),
	('PROMOTION_NATIONALISM', 'UNITCOMBAT_SIEGE'),
	('PROMOTION_NATIONALISM', 'UNITCOMBAT_GUN'),
	('PROMOTION_NATIONALISM', 'UNITCOMBAT_ARMOR');

INSERT INTO Policy_BuildingClassYieldChanges
	(PolicyType, BuildingClassType, YieldType, YieldChange)
VALUES
	('POLICY_SOCIALIST_REALISM', 'BUILDINGCLASS_PUBLIC_SCHOOL', 'YIELD_CULTURE', 5),
	('POLICY_ACADEMY_SCIENCES', 'BUILDINGCLASS_LABORATORY', 'YIELD_SCIENCE', 2);

UPDATE Policies
SET AllCityFreeBuilding = NULL
WHERE Type = 'POLICY_ACADEMY_SCIENCES';

UPDATE Policies
SET AllCityFreeBuilding = NULL
WHERE Type = 'POLICY_SOCIALIST_REALISM';

INSERT INTO Policy_BuildingClassProductionModifiers
	(PolicyType, BuildingClassType, ProductionModifier)
VALUES
	('POLICY_ACADEMY_SCIENCES', 'BUILDINGCLASS_LABORATORY', 100),
	('POLICY_SOCIALIST_REALISM', 'BUILDINGCLASS_MILITARY_ACADEMY', 100);

INSERT INTO Policy_FreeBuilding
			(PolicyType,			BuildingClassType,				Count)
VALUES		('POLICY_ACADEMY_SCIENCES',	'BUILDINGCLASS_LABORATORY',	5),
			('POLICY_SOCIALIST_REALISM',	'BUILDINGCLASS_MILITARY_ACADEMY',	5),
			('POLICY_WORKERS_FACULTIES',	'BUILDINGCLASS_FACTORY',	5);

INSERT INTO Policy_BuildingClassHappiness
	(PolicyType, BuildingClassType, Happiness)
VALUES
	('POLICY_DICTATORSHIP_PROLETARIAT', 'BUILDINGCLASS_FACTORY', 1),
	('POLICY_SOCIALIST_REALISM', 'BUILDINGCLASS_PUBLIC_SCHOOL', 2);

INSERT INTO Policy_YieldChangeTradeRoute
	(PolicyType, YieldType, Yield)
VALUES
	('POLICY_IRON_CURTAIN', 'YIELD_GOLD', 5),
	('POLICY_IRON_CURTAIN', 'YIELD_PRODUCTION', 5);

INSERT INTO Policy_YieldGPExpend
	(PolicyType, YieldType, Yield)
VALUES
	('POLICY_SPACEFLIGHT_PIONEERS', 'YIELD_SCIENCE', 100);

INSERT INTO Policy_ImprovementYieldChanges
	(PolicyType, ImprovementType, YieldType, Yield)
VALUES
	('POLICY_FIVE_YEAR_PLAN', 'IMPROVEMENT_LUMBERMILL', 'YIELD_PRODUCTION', 3),
	('POLICY_FIVE_YEAR_PLAN', 'IMPROVEMENT_LUMBERMILL_JUNGLE', 'YIELD_PRODUCTION', 3),
	('POLICY_FIVE_YEAR_PLAN', 'IMPROVEMENT_TERRACE_FARM', 'YIELD_PRODUCTION', 3),
	('POLICY_FIVE_YEAR_PLAN', 'IMPROVEMENT_SPAIN_HACIENDA', 'YIELD_PRODUCTION', 3),
	('POLICY_FIVE_YEAR_PLAN', 'IMPROVEMENT_EKI', 'YIELD_PRODUCTION', 3),
	('POLICY_FIVE_YEAR_PLAN', 'IMPROVEMENT_KUNA', 'YIELD_PRODUCTION', 3),
	('POLICY_FIVE_YEAR_PLAN', 'IMPROVEMENT_ENCAMPMENT_SHOSHONE', 'YIELD_PRODUCTION', 3),
	('POLICY_FIVE_YEAR_PLAN', 'IMPROVEMENT_POLDER', 'YIELD_PRODUCTION', 3),
	('POLICY_FIVE_YEAR_PLAN', 'IMPROVEMENT_CHATEAU', 'YIELD_PRODUCTION', 3),
	('POLICY_FIVE_YEAR_PLAN', 'IMPROVEMENT_KASBAH', 'YIELD_PRODUCTION', 3),
	('POLICY_FIVE_YEAR_PLAN', 'IMPROVEMENT_BRAZILWOOD_CAMP', 'YIELD_PRODUCTION', 3),
	('POLICY_FIVE_YEAR_PLAN', 'IMPROVEMENT_MOAI', 'YIELD_PRODUCTION', 3),
	('POLICY_FIVE_YEAR_PLAN', 'IMPROVEMENT_FEITORIA', 'YIELD_PRODUCTION', 3),
	('POLICY_FIVE_YEAR_PLAN', 'IMPROVEMENT_MONGOLIA_ORDO', 'YIELD_PRODUCTION', 3);