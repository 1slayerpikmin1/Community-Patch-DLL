-- Peace Loving (Now Mandate of Heaven)
UPDATE Beliefs
SET HappinessPerXPeacefulForeignFollowers = 0
WHERE Type = 'BELIEF_PEACE_LOVING';

-- Interfaith Dialog (Now Hero Worship)
UPDATE Beliefs
SET SciencePerOtherReligionFollower = 0
WHERE Type = 'BELIEF_INTERFAITH_DIALOGUE';

-- Ceremonial Burial
UPDATE Beliefs
SET HappinessPerFollowingCity = 0
WHERE Type = 'BELIEF_CEREMONIAL_BURIAL';

-- Church Property (Now Holy Law)
UPDATE Beliefs
SET GoldPerFollowingCity = 0
WHERE Type = 'BELIEF_CHURCH_PROPERTY';

-- Tithe (Now Way of the Pilgrim)
UPDATE Beliefs 
SET GoldPerXFollowers = 0
WHERE Type = 'BELIEF_TITHE';

-- Initiation Rites (Now Way of Transcendence)
UPDATE Beliefs
SET GoldPerFirstCityConversion = 0
WHERE Type = 'BELIEF_INITIATION_RITES';

-- Papal Primacy (Now Council of Elders)
UPDATE Beliefs
SET CityStateMinimumInfluence = 0
WHERE Type = 'BELIEF_PAPAL_PRIMACY';

-- scalers

UPDATE Beliefs
SET CityScalerLimiter = 25
WHERE Type = 'BELIEF_PAPAL_PRIMACY';

UPDATE Beliefs
SET CityScalerLimiter = 25
WHERE Type = 'BELIEF_INITIATION_RITES';

UPDATE Beliefs
SET CityScalerLimiter = 25
WHERE Type = 'BELIEF_CEREMONIAL_BURIAL';

UPDATE Beliefs
SET CityScalerLimiter = 20
WHERE Type = 'BELIEF_TO_GLORY_OF_GOD';

UPDATE Beliefs
SET FollowerScalerLimiter = 250
WHERE Type = 'BELIEF_CHURCH_PROPERTY';

UPDATE Beliefs
SET FollowerScalerLimiter = 250
WHERE Type = 'BELIEF_TITHE';

-- Pilgrimage (Now Apostolic Tradition
DELETE FROM Belief_YieldChangePerForeignCity
WHERE BeliefType = 'BELIEF_PILGRIMAGE';

-- World Church (Now Theocratic Rule)
DELETE FROM Belief_YieldChangePerXForeignFollowers
WHERE BeliefType = 'BELIEF_WORLD_CHURCH';

-- NEW

INSERT INTO Belief_YieldFromGPUse
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_CEREMONIAL_BURIAL', 'YIELD_FAITH', 10),
	('BELIEF_CEREMONIAL_BURIAL', 'YIELD_CULTURE', 10);

INSERT INTO Belief_YieldBonusGoldenAge
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_PEACE_LOVING', 'YIELD_FOOD', 20),
	('BELIEF_PEACE_LOVING', 'YIELD_PRODUCTION', 20),
	('BELIEF_PEACE_LOVING', 'YIELD_GOLD', 20),
	('BELIEF_PEACE_LOVING', 'YIELD_CULTURE', 20),
	('BELIEF_PEACE_LOVING', 'YIELD_FAITH', 20),
	('BELIEF_PEACE_LOVING', 'YIELD_SCIENCE', 20);

INSERT INTO Belief_YieldFromSpread
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_PILGRIMAGE', 'YIELD_FOOD', 15);

INSERT INTO Belief_YieldFromForeignSpread
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_PILGRIMAGE', 'YIELD_TOURISM', 15);

INSERT Into Belief_YieldFromTechUnlock
		(BeliefType, YieldType, Yield, IsEraScaling)
VALUES	('BELIEF_TITHE', 'YIELD_FAITH', 2, 0),
		('BELIEF_TITHE', 'YIELD_CULTURE', 2, 0),
		('BELIEF_TITHE', 'YIELD_GOLDEN_AGE_POINTS', 2, 0);

INSERT INTO Belief_YieldFromConquest
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_INTERFAITH_DIALOGUE', 'YIELD_GREAT_GENERAL_POINTS', 25),
	('BELIEF_INTERFAITH_DIALOGUE', 'YIELD_GREAT_ADMIRAL_POINTS', 25),
	('BELIEF_INTERFAITH_DIALOGUE', 'YIELD_FAITH', 100),
	('BELIEF_INTERFAITH_DIALOGUE', 'YIELD_GOLDEN_AGE_POINTS', 100);

INSERT INTO Belief_YieldFromPolicyUnlock
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_CHURCH_PROPERTY', 'YIELD_FAITH', 5),
	('BELIEF_CHURCH_PROPERTY', 'YIELD_SCIENCE', 5),
	('BELIEF_CHURCH_PROPERTY', 'YIELD_GOLD', 5);

INSERT INTO Belief_YieldFromEraUnlock
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_INITIATION_RITES', 'YIELD_FAITH', 12),
	('BELIEF_INITIATION_RITES', 'YIELD_SCIENCE', 12),
	('BELIEF_INITIATION_RITES', 'YIELD_GOLD', 12),
	('BELIEF_INITIATION_RITES', 'YIELD_CULTURE', 12),
	('BELIEF_INITIATION_RITES', 'YIELD_FOOD', 12),
	('BELIEF_INITIATION_RITES', 'YIELD_PRODUCTION', 12),
	('BELIEF_INITIATION_RITES', 'YIELD_TOURISM', 12),
	('BELIEF_INITIATION_RITES', 'YIELD_GOLDEN_AGE_POINTS', 12);

INSERT INTO Belief_YieldFromConversion
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_PAPAL_PRIMACY', 'YIELD_SCIENCE', 20),
	('BELIEF_PAPAL_PRIMACY', 'YIELD_PRODUCTION', 20);

INSERT INTO Belief_YieldFromWLTKD
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_WORLD_CHURCH', 'YIELD_FAITH', 15),
	('BELIEF_WORLD_CHURCH', 'YIELD_GOLD', 15),
	('BELIEF_WORLD_CHURCH', 'YIELD_CULTURE', 15);

INSERT INTO Belief_BuildingClassFaithPurchase
	(BeliefType, BuildingClassType)
VALUES
	('BELIEF_CEREMONIAL_BURIAL', 'BUILDINGCLASS_MAUSOLEUM'),
	('BELIEF_PEACE_LOVING', 'BUILDINGCLASS_HEAVENLY_THRONE'),
	('BELIEF_INTERFAITH_DIALOGUE', 'BUILDINGCLASS_GREAT_ALTAR'),
	('BELIEF_CHURCH_PROPERTY', 'BUILDINGCLASS_DIVINE_COURT'),
	('BELIEF_TITHE', 'BUILDINGCLASS_RELIGIOUS_LIBRARY'),
	('BELIEF_INITIATION_RITES', 'BUILDINGCLASS_SACRED_GARDEN'),
	('BELIEF_PAPAL_PRIMACY', 'BUILDINGCLASS_HOLY_COUNCIL'),
	('BELIEF_PILGRIMAGE', 'BUILDINGCLASS_APOSTOLIC_PALACE'),
	('BELIEF_WORLD_CHURCH', 'BUILDINGCLASS_GRAND_OSSUARY');


UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_PEACE_LOVING'
WHERE Type = 'BELIEF_PEACE_LOVING';

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_INTERFAITH_DIALOGUE'
WHERE Type = 'BELIEF_INTERFAITH_DIALOGUE';

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_CEREMONIAL_BURIAL'
WHERE Type = 'BELIEF_CEREMONIAL_BURIAL';

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_CHURCH_PROPERTY'
WHERE Type = 'BELIEF_CHURCH_PROPERTY';

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_TITHE'
WHERE Type = 'BELIEF_TITHE';

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_INITIATION_RITES'
WHERE Type = 'BELIEF_INITIATION_RITES';

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_PAPAL_PRIMACY'
WHERE Type = 'BELIEF_PAPAL_PRIMACY';

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_PILGRIMAGE'
WHERE Type = 'BELIEF_PILGRIMAGE';

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_WORLD_CHURCH'
WHERE Type = 'BELIEF_WORLD_CHURCH';