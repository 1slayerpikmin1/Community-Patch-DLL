-- Buffed CSs a bit.

UPDATE Defines
SET Value = '25'
WHERE Name = 'BALANCE_CS_ALLIANCE_DEFENSE_BONUS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );


UPDATE Defines
SET Value = '70'
WHERE Name = 'MINOR_MAX_XP_VALUE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

-- Extra Spies based on # of Minors

INSERT INTO Defines (Name, Value)
SELECT 'BALANCE_SPY_TO_MINOR_RATIO', '10'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

-- New Quests
UPDATE Defines
SET Value = '0'
WHERE Name = 'QUEST_DISABLED_CP_QUESTS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

-- Maritime Civs Buffed

UPDATE Defines
SET Value = '300'
WHERE Name = 'FRIENDS_CAPITAL_FOOD_BONUS_AMOUNT_PRE_RENAISSANCE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '600'
WHERE Name = 'FRIENDS_CAPITAL_FOOD_BONUS_AMOUNT_POST_RENAISSANCE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '50'
WHERE Name = 'FRIENDS_OTHER_CITIES_FOOD_BONUS_AMOUNT_PRE_RENAISSANCE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '100'
WHERE Name = 'FRIENDS_OTHER_CITIES_FOOD_BONUS_AMOUNT_POST_RENAISSANCE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '200'
WHERE Name = 'ALLIES_CAPITAL_FOOD_BONUS_AMOUNT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '200'
WHERE Name = 'ALLIES_OTHER_CITIES_FOOD_BONUS_AMOUNT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '12'
WHERE Name = 'FRIENDS_FAITH_FLAT_BONUS_AMOUNT_INDUSTRIAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '9'
WHERE Name = 'FRIENDS_FAITH_FLAT_BONUS_AMOUNT_RENAISSANCE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '7'
WHERE Name = 'FRIENDS_FAITH_FLAT_BONUS_AMOUNT_MEDIEVAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '5'
WHERE Name = 'FRIENDS_FAITH_FLAT_BONUS_AMOUNT_CLASSICAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '3'
WHERE Name = 'FRIENDS_FAITH_FLAT_BONUS_AMOUNT_ANCIENT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '12'
WHERE Name = 'ALLIES_FAITH_FLAT_BONUS_AMOUNT_INDUSTRIAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '9'
WHERE Name = 'ALLIES_FAITH_FLAT_BONUS_AMOUNT_RENAISSANCE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '7'
WHERE Name = 'ALLIES_FAITH_FLAT_BONUS_AMOUNT_MEDIEVAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '5'
WHERE Name = 'ALLIES_FAITH_FLAT_BONUS_AMOUNT_CLASSICAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '3'
WHERE Name = 'ALLIES_FAITH_FLAT_BONUS_AMOUNT_ANCIENT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

-- Minor Civ Stuff
UPDATE Defines
SET Value = '0'
WHERE Name = 'FRIENDSHIP_THRESHOLD_CAN_BULLY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_MINOR_ANCHOR_ATTACK', '-10'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_CS_WAR_COOLDOWN_RATE', '50'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_CS_FORGIVENESS_CHANCE', '75'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );


-- Quest values

UPDATE Defines
SET Value = '35'
WHERE Name = 'MINOR_QUEST_FRIENDSHIP_ROUTE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '40'
WHERE Name = 'MINOR_QUEST_FRIENDSHIP_KILL_CAMP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '35'
WHERE Name = 'MINOR_QUEST_FRIENDSHIP_CONNECT_RESOURCE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '35'
WHERE Name = 'MINOR_QUEST_FRIENDSHIP_CONSTRUCT_WONDER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '35'
WHERE Name = 'MINOR_QUEST_FRIENDSHIP_GREAT_PERSON' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '60'
WHERE Name = 'MINOR_QUEST_FRIENDSHIP_KILL_CITY_STATE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '35'
WHERE Name = 'MINOR_QUEST_FRIENDSHIP_FIND_PLAYER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '35'
WHERE Name = 'MINOR_QUEST_FRIENDSHIP_FIND_NATURAL_WONDER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '35'
WHERE Name = 'MINOR_QUEST_FRIENDSHIP_GIVE_GOLD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '10'
WHERE Name = 'MINOR_QUEST_FRIENDSHIP_PLEDGE_TO_PROTECT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '25'
WHERE Name = 'MINOR_QUEST_FRIENDSHIP_CONTEST_CULTURE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '25'
WHERE Name = 'MINOR_QUEST_FRIENDSHIP_CONTEST_FAITH' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '25'
WHERE Name = 'MINOR_QUEST_FRIENDSHIP_CONTEST_TECHS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '0'
WHERE Name = 'MINOR_QUEST_FRIENDSHIP_INVEST' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '50'
WHERE Name = 'MINOR_QUEST_FRIENDSHIP_BULLY_CITY_STATE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '40'
WHERE Name = 'MINOR_QUEST_FRIENDSHIP_SPREAD_RELIGION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '40'
WHERE Name = 'MINOR_QUEST_FRIENDSHIP_TRADE_ROUTE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );


-- CS Yield Rewards

UPDATE Defines
SET Value = '4'
WHERE Name = 'FRIENDS_GOLD_FLAT_BONUS_AMOUNT_INDUSTRIAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '3'
WHERE Name = 'FRIENDS_GOLD_FLAT_BONUS_AMOUNT_RENAISSANCE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '2'
WHERE Name = 'FRIENDS_GOLD_FLAT_BONUS_AMOUNT_MEDIEVAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '1'
WHERE Name = 'FRIENDS_GOLD_FLAT_BONUS_AMOUNT_CLASSICAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '1'
WHERE Name = 'FRIENDS_GOLD_FLAT_BONUS_AMOUNT_ANCIENT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '6'
WHERE Name = 'ALLIES_GOLD_FLAT_BONUS_AMOUNT_INDUSTRIAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '5'
WHERE Name = 'ALLIES_GOLD_FLAT_BONUS_AMOUNT_RENAISSANCE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '4'
WHERE Name = 'ALLIES_GOLD_FLAT_BONUS_AMOUNT_MEDIEVAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '3'
WHERE Name = 'ALLIES_GOLD_FLAT_BONUS_AMOUNT_CLASSICAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '2'
WHERE Name = 'ALLIES_GOLD_FLAT_BONUS_AMOUNT_ANCIENT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '10'
WHERE Name = 'FRIENDS_SCIENCE_FLAT_BONUS_AMOUNT_INDUSTRIAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '6'
WHERE Name = 'FRIENDS_SCIENCE_FLAT_BONUS_AMOUNT_RENAISSANCE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '4'
WHERE Name = 'FRIENDS_SCIENCE_FLAT_BONUS_AMOUNT_MEDIEVAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '2'
WHERE Name = 'FRIENDS_SCIENCE_FLAT_BONUS_AMOUNT_CLASSICAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '1'
WHERE Name = 'FRIENDS_SCIENCE_FLAT_BONUS_AMOUNT_ANCIENT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '10'
WHERE Name = 'ALLIES_SCIENCE_FLAT_BONUS_AMOUNT_INDUSTRIAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '8'
WHERE Name = 'ALLIES_SCIENCE_FLAT_BONUS_AMOUNT_RENAISSANCE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '6'
WHERE Name = 'ALLIES_SCIENCE_FLAT_BONUS_AMOUNT_MEDIEVAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '4'
WHERE Name = 'ALLIES_SCIENCE_FLAT_BONUS_AMOUNT_CLASSICAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '3'
WHERE Name = 'ALLIES_SCIENCE_FLAT_BONUS_AMOUNT_ANCIENT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

INSERT INTO Civilization_UnitClassOverrides
	(CivilizationType, UnitClassType, UnitType)
VALUES
	('CIVILIZATION_MINOR', 'UNITCLASS_PATHFINDER', NULL),
	('CIVILIZATION_MINOR', 'UNITCLASS_PIONEER', NULL),
	('CIVILIZATION_MINOR', 'UNITCLASS_COLONIST', NULL),
	('CIVILIZATION_MINOR', 'UNITCLASS_ZEPPELIN', NULL),
	('CIVILIZATION_MINOR', 'UNITCLASS_EXPLORER', NULL);