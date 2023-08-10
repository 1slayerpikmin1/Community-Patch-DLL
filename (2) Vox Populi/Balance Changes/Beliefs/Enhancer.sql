-- Religious Texts (Now Inquisition)

UPDATE Beliefs
SET SpyPressure = '8'
WHERE Type = 'BELIEF_RELIGIOUS_TEXTS';

UPDATE Beliefs
SET SpreadStrengthModifier = '0'
WHERE Type = 'BELIEF_RELIGIOUS_TEXTS';

UPDATE Beliefs
SET InquisitorCostModifier = '-33'
WHERE Type = 'BELIEF_RELIGIOUS_TEXTS';

UPDATE Beliefs
SET HappinessFromForeignSpies = '2'
WHERE Type = 'BELIEF_RELIGIOUS_TEXTS';

INSERT INTO Belief_YieldFromRemoveHeresy
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_RELIGIOUS_TEXTS', 'YIELD_GOLD', 25);

-- Reliquary (Now Mendinancy)
UPDATE Beliefs
SET GreatPersonExpendedFaith = '0'
WHERE Type = 'BELIEF_RELIQUARY';

UPDATE Beliefs
SET GoldPerFirstCityConversion = '0'
WHERE Type = 'BELIEF_RELIQUARY';

INSERT INTO Belief_CityYieldChanges
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_RELIQUARY', 'YIELD_CULTURE', 2),
	('BELIEF_RELIQUARY', 'YIELD_FAITH', 2);

UPDATE Beliefs
SET OtherReligionPressureErosion = '10'
WHERE Type = 'BELIEF_RELIQUARY';


-- Just War (Now Abode of Peace)
UPDATE Beliefs
SET CombatModifierEnemyCities = '0'
WHERE Type = 'BELIEF_JUST_WAR';

UPDATE Beliefs
SET GreatPersonExpendedFaith = '0'
WHERE Type = 'BELIEF_JUST_WAR';

UPDATE Beliefs
SET GreatPersonExpendedFaith = '0'
WHERE Type = 'BELIEF_JUST_WAR';

UPDATE Beliefs
SET OtherReligionPressureErosion = '0'
WHERE Type = 'BELIEF_JUST_WAR';

UPDATE Beliefs
SET CityStateMinimumInfluence = '35'
WHERE Type = 'BELIEF_JUST_WAR';

UPDATE Beliefs
SET CityStateInfluenceModifier = '25'
WHERE Type = 'BELIEF_JUST_WAR';

-- Heathen Conversion (Now Zealotry)
UPDATE Beliefs
SET Enhancer = '1'
WHERE Type = 'BELIEF_HEATHEN_CONVERSION';

UPDATE Beliefs
SET ConvertsBarbarians = '0'
WHERE Type = 'BELIEF_HEATHEN_CONVERSION';

UPDATE Beliefs
SET Reformation = '0'
WHERE Type = 'BELIEF_HEATHEN_CONVERSION';

INSERT INTO Belief_ResourceQuantityModifiers
	(BeliefType, ResourceType, ResourceQuantityModifier)
VALUES
	('BELIEF_HEATHEN_CONVERSION', 'RESOURCE_IRON', 1),
	('BELIEF_HEATHEN_CONVERSION', 'RESOURCE_HORSE', 1),
	('BELIEF_HEATHEN_CONVERSION', 'RESOURCE_OIL', 1),
	('BELIEF_HEATHEN_CONVERSION', 'RESOURCE_COAL', 1),
	('BELIEF_HEATHEN_CONVERSION', 'RESOURCE_ALUMINUM', 1),
	('BELIEF_HEATHEN_CONVERSION', 'RESOURCE_URANIUM', 1);

-- Itinerant Preachers (Now Symbolism)
UPDATE Beliefs
SET SpreadDistanceModifier = '0'
WHERE Type = 'BELIEF_ITINERANT_PREACHERS';

UPDATE Beliefs
SET HappinessPerFollowingCity = '0'
WHERE Type = 'BELIEF_ITINERANT_PREACHERS';

UPDATE Beliefs
SET CityStateMinimumInfluence = '0'
WHERE Type = 'BELIEF_ITINERANT_PREACHERS';

UPDATE Beliefs
SET OtherReligionPressureErosion = '0'
WHERE Type = 'BELIEF_ITINERANT_PREACHERS';

INSERT INTO Belief_HolyCityYieldChanges
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_ITINERANT_PREACHERS', 'YIELD_GOLDEN_AGE_POINTS', 5);

INSERT INTO Belief_GreatPersonPoints
	(BeliefType, GreatPersonType, Value)
VALUES
	('BELIEF_ITINERANT_PREACHERS', 'GREATPERSON_ARTIST', 2),
	('BELIEF_ITINERANT_PREACHERS', 'GREATPERSON_MUSICIAN', 2),
	('BELIEF_ITINERANT_PREACHERS', 'GREATPERSON_WRITER', 2),
	('BELIEF_ITINERANT_PREACHERS', 'GREATPERSON_SCIENTIST', 2),
	('BELIEF_ITINERANT_PREACHERS', 'GREATPERSON_MERCHANT', 2),
	('BELIEF_ITINERANT_PREACHERS', 'GREATPERSON_ENGINEER', 2);

-- Messiah (Now Prophecy)
UPDATE Beliefs
SET ReducePolicyRequirements = '1'
WHERE Type = 'BELIEF_MESSIAH';

-- Missionary Zeal (Now Sacred Calendar)
UPDATE Beliefs
SET SciencePerOtherReligionFollower = '0'
WHERE Type = 'BELIEF_MISSIONARY_ZEAL';

INSERT INTO Belief_YieldChangePerForeignCity
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_MISSIONARY_ZEAL', 'YIELD_GOLD', 3),
	('BELIEF_MISSIONARY_ZEAL', 'YIELD_GOLDEN_AGE_POINTS', 3);

INSERT INTO Belief_GoldenAgeGreatPersonRateModifier
	(BeliefType, GreatPersonType, Modifier)
VALUES
	('BELIEF_MISSIONARY_ZEAL', 'GREATPERSON_ARTIST', 33),
	('BELIEF_MISSIONARY_ZEAL', 'GREATPERSON_MUSICIAN', 33),
	('BELIEF_MISSIONARY_ZEAL', 'GREATPERSON_WRITER', 33),
	('BELIEF_MISSIONARY_ZEAL', 'GREATPERSON_SCIENTIST', 33),
	('BELIEF_MISSIONARY_ZEAL', 'GREATPERSON_MERCHANT', 33),
	('BELIEF_MISSIONARY_ZEAL', 'GREATPERSON_ENGINEER', 33);

UPDATE Beliefs
SET MissionaryStrengthModifier = '25'
WHERE Type = 'BELIEF_MISSIONARY_ZEAL';

-- Holy Order (Now Orthodoxy)
UPDATE Beliefs
SET SpreadDistanceModifier = '25'
WHERE Type = 'BELIEF_HOLY_ORDER';

UPDATE Beliefs
SET SpreadStrengthModifier = '0'
WHERE Type = 'BELIEF_HOLY_ORDER';

UPDATE Beliefs
SET PressureChangeTradeRoute = '200'
WHERE Type = 'BELIEF_HOLY_ORDER';

UPDATE Beliefs
SET MissionaryCostModifier = '0'
WHERE Type = 'BELIEF_HOLY_ORDER';

-- (undocumented in text?)
UPDATE Beliefs
SET FriendlyCityStateSpreadModifier = '100'
WHERE Type = 'BELIEF_HOLY_ORDER';

-- Religious Unity (now Syncretism)
UPDATE Beliefs
SET MissionaryCostModifier = '0'
WHERE Type = 'BELIEF_RELIGIOUS_UNITY';

UPDATE Beliefs
SET FriendlyCityStateSpreadModifier = '0'
WHERE Type = 'BELIEF_RELIGIOUS_UNITY';

UPDATE Beliefs
SET HappinessPerXPeacefulForeignFollowers = '0'
WHERE Type = 'BELIEF_RELIGIOUS_UNITY';

INSERT INTO Belief_YieldPerScience
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_RELIGIOUS_UNITY', 'YIELD_FAITH', 15);

INSERT INTO Belief_YieldPerOtherReligionFollower
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_RELIGIOUS_UNITY', 'YIELD_PRODUCTION', 5),
	('BELIEF_RELIGIOUS_UNITY', 'YIELD_SCIENCE', 5);

INSERT INTO Belief_YieldChangePerXForeignFollowers
		(BeliefType, 				YieldType, 		ForeignFollowers)
VALUES	('BELIEF_RELIGIOUS_UNITY', 	'YIELD_GOLD', 	10),
		('BELIEF_RELIGIOUS_UNITY', 	'YIELD_FAITH', 	10);

-- Martyrdom

UPDATE Beliefs
SET ReducePolicyRequirements = '1'
WHERE Type = 'BELIEF_MESSIAH';

UPDATE Beliefs
SET InquisitorPressureRetention = '50'
WHERE Type = 'BELIEF_MESSIAH';

-- NEW

INSERT INTO Belief_YieldChangePerXCityStateFollowers
	(BeliefType, YieldType, PerXFollowers)
VALUES
	('BELIEF_JUST_WAR', 'YIELD_GOLD', 2),
	('BELIEF_JUST_WAR', 'YIELD_FAITH', 2);

INSERT INTO Belief_EraFaithUnitPurchase
	(BeliefType, EraType)
VALUES
	('BELIEF_HEATHEN_CONVERSION', 'ERA_ANCIENT'),
	('BELIEF_HEATHEN_CONVERSION', 'ERA_CLASSICAL'),
	('BELIEF_HEATHEN_CONVERSION', 'ERA_MEDIEVAL'),
	('BELIEF_HEATHEN_CONVERSION', 'ERA_RENAISSANCE'),
	('BELIEF_HEATHEN_CONVERSION', 'ERA_INDUSTRIAL'),
	('BELIEF_HEATHEN_CONVERSION', 'ERA_MODERN'),
	('BELIEF_HEATHEN_CONVERSION', 'ERA_POSTMODERN'),
	('BELIEF_HEATHEN_CONVERSION', 'ERA_FUTURE');

INSERT INTO Belief_ImprovementYieldChanges
	(BeliefType, ImprovementType, YieldType, Yield)
VALUES
	('BELIEF_MESSIAH', 'IMPROVEMENT_HOLY_SITE', 'YIELD_FAITH', 3),
	('BELIEF_MESSIAH', 'IMPROVEMENT_HOLY_SITE', 'YIELD_CULTURE', 3),
	('BELIEF_MESSIAH', 'IMPROVEMENT_HOLY_SITE', 'YIELD_TOURISM', 3);


UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_HEATHEN_CONVERSION'
WHERE Type = 'BELIEF_HEATHEN_CONVERSION';

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_RELIGIOUS_UNITY'
WHERE Type = 'BELIEF_RELIGIOUS_UNITY';

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_HOLY_ORDER'
WHERE Type = 'BELIEF_HOLY_ORDER';

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_MISSIONARY_ZEAL'
WHERE Type = 'BELIEF_MISSIONARY_ZEAL';

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_MESSIAH'
WHERE Type = 'BELIEF_MESSIAH';

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_ITINERANT_PREACHERS'
WHERE Type = 'BELIEF_ITINERANT_PREACHERS';

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_JUST_WAR'
WHERE Type = 'BELIEF_JUST_WAR';

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_RELIQUARY'
WHERE Type = 'BELIEF_RELIQUARY';

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_RELIGIOUS_TEXTS'
WHERE Type = 'BELIEF_RELIGIOUS_TEXTS';