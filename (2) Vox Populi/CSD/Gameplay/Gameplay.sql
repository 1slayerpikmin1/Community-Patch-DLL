-- Wealth Process Change

UPDATE Process_Flavors
Set Flavor = 0
WHERE ProcessType = 'PROCESS_WEALTH'
AND FlavorType = 'FLAVOR_DIPLOMACY'
AND EXISTS (SELECT * FROM CSD WHERE Type='CSD_AI' AND Value= 1 );

INSERT INTO Process_Flavors (
ProcessType, FlavorType, Flavor)
SELECT 'PROCESS_WEALTH', 'FLAVOR_GOLD', '5'
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_AI' AND Value= 1 );

-- City Specializations

INSERT INTO CitySpecialization_Flavors (
CitySpecializationType, FlavorType, Flavor)
SELECT 'CITYSPECIALIZATION_GENERAL_ECONOMIC', 'FLAVOR_DIPLOMACY', 6
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_AI' AND Value= 1 );

INSERT INTO CitySpecialization_Flavors (
CitySpecializationType, FlavorType, Flavor)
SELECT 'CITYSPECIALIZATION_COMMERCE', 'FLAVOR_DIPLOMACY', 11
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_AI' AND Value= 1 );

--City Strategies

INSERT INTO AICityStrategy_Flavors (
AICityStrategyType, FlavorType, Flavor)
SELECT 'AICITYSTRATEGY_LARGE_CITY', 'FLAVOR_DIPLOMACY', 11
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_AI' AND Value= 1 );

INSERT INTO AICityStrategy_Flavors (
AICityStrategyType, FlavorType, Flavor)
SELECT 'AICITYSTRATEGY_CAPITAL_UNDER_THREAT', 'FLAVOR_DIPLOMACY', -40
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_AI' AND Value= 1 );

INSERT INTO AICityStrategy_Flavors (
AICityStrategyType, FlavorType, Flavor)
SELECT 'AICITYSTRATEGY_CAPITAL_NEED_SETTLER', 'FLAVOR_DIPLOMACY', -30
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_AI' AND Value= 1 );

UPDATE AICityStrategy_Flavors
SET Flavor = 6
WHERE AICityStrategyType = 'AICITYSTRATEGY_MEDIUM_CITY'
AND FlavorType = 'FLAVOR_DIPLOMACY'
AND EXISTS (SELECT * FROM CSD WHERE Type='CSD_AI' AND Value= 1 );

UPDATE AICityStrategy_Flavors
SET Flavor = -30
WHERE AICityStrategyType = 'AICITYSTRATEGY_SMALL_CITY'
AND FlavorType = 'FLAVOR_DIPLOMACY'
AND EXISTS (SELECT * FROM CSD WHERE Type='CSD_AI' AND Value= 1 );

-- Economic Strategies - Player

INSERT INTO AIEconomicStrategy_Player_Flavors (
AIEconomicStrategyType, FlavorType, Flavor)
SELECT 'ECONOMICAISTRATEGY_ISLAND_START', 'FLAVOR_DIPLOMACY', -10
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_AI' AND Value= 1 );

INSERT INTO AIEconomicStrategy_Player_Flavors (
AIEconomicStrategyType, FlavorType, Flavor)
SELECT 'ECONOMICAISTRATEGY_TOO_MANY_UNITS', 'FLAVOR_DIPLOMACY', -10
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_AI' AND Value= 1 );

INSERT INTO AIEconomicStrategy_Player_Flavors (
AIEconomicStrategyType, FlavorType, Flavor)
SELECT 'ECONOMICAISTRATEGY_NEED_HAPPINESS', 'FLAVOR_DIPLOMACY', 6
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_AI' AND Value= 1 );

INSERT INTO AIEconomicStrategy_Player_Flavors (
AIEconomicStrategyType, FlavorType, Flavor)
SELECT 'ECONOMICAISTRATEGY_NEED_HAPPINESS_CRITICAL', 'FLAVOR_DIPLOMACY', 11
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_AI' AND Value= 1 );

UPDATE AIEconomicStrategy_Player_Flavors
SET Flavor = 26
WHERE AIEconomicStrategyType = 'ECONOMICAISTRATEGY_GS_DIPLOMACY'
AND FlavorType = 'FLAVOR_DIPLOMACY'
AND EXISTS (SELECT * FROM CSD WHERE Type='CSD_AI' AND Value= 1 );

UPDATE AIEconomicStrategy_Player_Flavors
SET Flavor = 22
WHERE AIEconomicStrategyType = 'ECONOMICAISTRATEGY_GS_CULTURE'
AND FlavorType = 'FLAVOR_DIPLOMACY'
AND EXISTS (SELECT * FROM CSD WHERE Type='CSD_AI' AND Value= 1 );

INSERT INTO AIEconomicStrategy_Player_Flavors (
AIEconomicStrategyType, FlavorType, Flavor)
SELECT 'ECONOMICAISTRATEGY_GS_SPACESHIP', 'FLAVOR_DIPLOMACY', 16
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_AI' AND Value= 1 );

UPDATE AIEconomicStrategy_Player_Flavors
SET Flavor = 11
WHERE AIEconomicStrategyType = 'ECONOMICAISTRATEGY_GS_CONQUEST'
AND FlavorType = 'FLAVOR_DIPLOMACY'
AND EXISTS (SELECT * FROM CSD WHERE Type='CSD_AI' AND Value= 1 );

INSERT INTO AIEconomicStrategy_Player_Flavors (
AIEconomicStrategyType, FlavorType, Flavor)
SELECT 'ECONOMICAISTRATEGY_GS_SPACESHIP_HOMESTRETCH', 'FLAVOR_DIPLOMACY', -50
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_AI' AND Value= 1 );

-- Economic Strategies - City

INSERT INTO AIEconomicStrategy_City_Flavors (
AIEconomicStrategyType, FlavorType, Flavor)
SELECT 'ECONOMICAISTRATEGY_ISLAND_START', 'FLAVOR_DIPLOMACY', -10
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_AI' AND Value= 1 );

INSERT INTO AIEconomicStrategy_City_Flavors (
AIEconomicStrategyType, FlavorType, Flavor)
SELECT 'ECONOMICAISTRATEGY_TOO_MANY_UNITS', 'FLAVOR_DIPLOMACY', -15
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_AI' AND Value= 1 );

INSERT INTO AIEconomicStrategy_City_Flavors (
AIEconomicStrategyType, FlavorType, Flavor)
SELECT 'ECONOMICAISTRATEGY_NEED_HAPPINESS', 'FLAVOR_DIPLOMACY', 6
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_AI' AND Value= 1 );

INSERT INTO AIEconomicStrategy_City_Flavors (
AIEconomicStrategyType, FlavorType, Flavor)
SELECT 'ECONOMICAISTRATEGY_NEED_HAPPINESS_CRITICAL', 'FLAVOR_DIPLOMACY', 11
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_AI' AND Value= 1 );

UPDATE AIEconomicStrategy_City_Flavors
SET Flavor = 30
WHERE AIEconomicStrategyType = 'ECONOMICAISTRATEGY_GS_DIPLOMACY'
AND FlavorType = 'FLAVOR_DIPLOMACY'
AND EXISTS (SELECT * FROM CSD WHERE Type='CSD_AI' AND Value= 1 );

UPDATE AIEconomicStrategy_City_Flavors
SET Flavor = 22
WHERE AIEconomicStrategyType = 'ECONOMICAISTRATEGY_GS_CULTURE'
AND FlavorType = 'FLAVOR_DIPLOMACY'
AND EXISTS (SELECT * FROM CSD WHERE Type='CSD_AI' AND Value= 1 );

INSERT INTO AIEconomicStrategy_City_Flavors (
AIEconomicStrategyType, FlavorType, Flavor)
SELECT 'ECONOMICAISTRATEGY_GS_SPACESHIP', 'FLAVOR_DIPLOMACY', 16
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_AI' AND Value= 1 );

UPDATE AIEconomicStrategy_City_Flavors
SET Flavor = 11
WHERE AIEconomicStrategyType = 'ECONOMICAISTRATEGY_GS_CONQUEST'
AND FlavorType = 'FLAVOR_DIPLOMACY'
AND EXISTS (SELECT * FROM CSD WHERE Type='CSD_AI' AND Value= 1 );

INSERT INTO AIEconomicStrategy_City_Flavors (
AIEconomicStrategyType, FlavorType, Flavor)
SELECT 'ECONOMICAISTRATEGY_GS_SPACESHIP_HOMESTRETCH', 'FLAVOR_DIPLOMACY', -50
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_AI' AND Value= 1 );


-- Military Strategies

INSERT INTO AIMilitaryStrategy_Player_Flavors (
AIMilitaryStrategyType, FlavorType, Flavor)
SELECT 'MILITARYAISTRATEGY_EMPIRE_DEFENSE', 'FLAVOR_DIPLOMACY', -15
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_AI' AND Value= 1 );

INSERT INTO AIMilitaryStrategy_Player_Flavors (
AIMilitaryStrategyType, FlavorType, Flavor)
SELECT 'MILITARYAISTRATEGY_EMPIRE_DEFENSE_CRITICAL', 'FLAVOR_DIPLOMACY', -35
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_AI' AND Value= 1 );

INSERT INTO AIMilitaryStrategy_Player_Flavors (
AIMilitaryStrategyType, FlavorType, Flavor)
SELECT 'MILITARYAISTRATEGY_AT_WAR', 'FLAVOR_DIPLOMACY', -25
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_AI' AND Value= 1 );

INSERT INTO AIMilitaryStrategy_Player_Flavors (
AIMilitaryStrategyType, FlavorType, Flavor)
SELECT 'MILITARYAISTRATEGY_WAR_MOBILIZATION', 'FLAVOR_DIPLOMACY', -15
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_AI' AND Value= 1 );

INSERT INTO AIMilitaryStrategy_Player_Flavors (
AIMilitaryStrategyType, FlavorType, Flavor)
SELECT 'MILITARYAISTRATEGY_ERADICATE_BARBARIANS', 'FLAVOR_DIPLOMACY', -10
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_AI' AND Value= 1 );

INSERT INTO AIMilitaryStrategy_Player_Flavors (
AIMilitaryStrategyType, FlavorType, Flavor)
SELECT 'MILITARYAISTRATEGY_LOSING_WARS', 'FLAVOR_DIPLOMACY', -20
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_AI' AND Value= 1 );

-- Military City Flavors

INSERT INTO AIMilitaryStrategy_City_Flavors (
AIMilitaryStrategyType, FlavorType, Flavor)
SELECT 'MILITARYAISTRATEGY_EMPIRE_DEFENSE', 'FLAVOR_DIPLOMACY', -25
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_AI' AND Value= 1 );

INSERT INTO AIMilitaryStrategy_City_Flavors (
AIMilitaryStrategyType, FlavorType, Flavor)
SELECT 'MILITARYAISTRATEGY_EMPIRE_DEFENSE_CRITICAL', 'FLAVOR_DIPLOMACY', -50
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_AI' AND Value= 1 );

INSERT INTO AIMilitaryStrategy_City_Flavors (
AIMilitaryStrategyType, FlavorType, Flavor)
SELECT 'MILITARYAISTRATEGY_AT_WAR', 'FLAVOR_DIPLOMACY', -40
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_AI' AND Value= 1 );

INSERT INTO AIMilitaryStrategy_City_Flavors (
AIMilitaryStrategyType, FlavorType, Flavor)
SELECT 'MILITARYAISTRATEGY_WAR_MOBILIZATION', 'FLAVOR_DIPLOMACY', -20
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_AI' AND Value= 1 );

INSERT INTO AIMilitaryStrategy_City_Flavors (
AIMilitaryStrategyType, FlavorType, Flavor)
SELECT 'MILITARYAISTRATEGY_ERADICATE_BARBARIANS', 'FLAVOR_DIPLOMACY', -20
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_AI' AND Value= 1 );

INSERT INTO AIMilitaryStrategy_City_Flavors (
AIMilitaryStrategyType, FlavorType, Flavor)
SELECT 'MILITARYAISTRATEGY_LOSING_WARS', 'FLAVOR_DIPLOMACY', -30
WHERE EXISTS (SELECT * FROM CSD WHERE Type='CSD_AI' AND Value= 1 );