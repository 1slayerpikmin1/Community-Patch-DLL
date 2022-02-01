UPDATE PostDefines
SET Key = 'ERA_MODERN'
WHERE Name = 'IDEOLOGY_START_ERA';

-- New Resolutions
INSERT INTO Resolutions
	(Type, Description, Help, VoterDecision, ProposerDecision, TourismMod, TechPrereqAnyMember)
VALUES
	('RESOLUTION_TOURISM_PENALTY', 'TXT_KEY_RESOLUTION_TOURISM_PENALTY', 'TXT_KEY_RESOLUTION_TOURISM_PENALTY_HELP', 'RESOLUTION_DECISION_YES_OR_NO', 'RESOLUTION_DECISION_NONE', -35, 'TECH_FLIGHT'),
	('RESOLUTION_TOURISM_BONUS', 'TXT_KEY_RESOLUTION_TOURISM_BONUS', 'TXT_KEY_RESOLUTION_TOURISM_BONUS_HELP', 'RESOLUTION_DECISION_YES_OR_NO', 'RESOLUTION_DECISION_NONE', 50, 'TECH_FLIGHT');

-- Ideologies


UPDATE PolicyBranchTypes
SET FirstAdopterFreePolicies = '1'
WHERE Type = 'POLICY_BRANCH_FREEDOM';

UPDATE PolicyBranchTypes
SET FirstAdopterFreePolicies = '1'
WHERE Type = 'POLICY_BRANCH_ORDER';

UPDATE PolicyBranchTypes
SET FirstAdopterFreePolicies = '1'
WHERE Type = 'POLICY_BRANCH_AUTOCRACY';

-- Lose more tenets when you switch.
UPDATE Defines
SET Value = '5'
WHERE Name = 'SWITCH_POLICY_BRANCHES_TENETS_LOST';

UPDATE Defines
SET Value = '3'
WHERE Name = 'SWITCH_POLICY_BRANCHES_ANARCHY_TURNS';

-- Tourism stuff

UPDATE Defines
SET Value = '5'
WHERE Name = 'CULTURE_LEVEL_EXOTIC';

UPDATE Defines
SET Value = '25'
WHERE Name = 'CULTURE_LEVEL_FAMILIAR';

UPDATE Defines
SET Value = '50'
WHERE Name = 'CULTURE_LEVEL_POPULAR';

UPDATE Defines
SET Value = '3'
WHERE Name = 'BASE_CULTURE_PER_GREAT_WORK';

UPDATE Defines
SET Value = '3'
WHERE Name = 'BASE_TOURISM_PER_GREAT_WORK';

UPDATE Defines
SET Value = '15'
WHERE Name = 'TOURISM_MODIFIER_OPEN_BORDERS';

UPDATE Defines
SET Value = '10'
WHERE Name = 'TOURISM_MODIFIER_TRADE_ROUTE';

UPDATE Defines
SET Value = '-10'
WHERE Name = 'TOURISM_MODIFIER_DIFFERENT_IDEOLOGIES';

UPDATE Defines
SET Value = '10'
WHERE Name = 'TOURISM_MODIFIER_DIPLOMAT';


-- Theming Bonuses increased in all buildings

UPDATE Building_ThemingBonuses
SET Bonus = '15'
WHERE BuildingType = 'BUILDING_UFFIZI';

UPDATE Building_ThemingBonuses
SET Bonus = '10'
WHERE BuildingType = 'BUILDING_GLOBE_THEATER';

UPDATE Building_ThemingBonuses
SET Bonus = '25'
WHERE BuildingType = 'BUILDING_BROADWAY';

UPDATE Building_ThemingBonuses
SET Bonus = '15'
WHERE BuildingType = 'BUILDING_HERMITAGE';

UPDATE Building_ThemingBonuses
SET Bonus = '10'
WHERE BuildingType = 'BUILDING_OXFORD_UNIVERSITY';

UPDATE Building_ThemingBonuses
SET Bonus = '10'
WHERE BuildingType = 'BUILDING_SISTINE_CHAPEL';

UPDATE Building_ThemingBonuses
SET Bonus = '15'
WHERE BuildingType = 'BUILDING_LOUVRE';

UPDATE Building_ThemingBonuses
SET Bonus = '10'
WHERE BuildingType = 'BUILDING_GREAT_LIBRARY';

UPDATE Building_ThemingBonuses
SET Bonus = '25'
WHERE BuildingType = 'BUILDING_SYDNEY_OPERA_HOUSE';

UPDATE Building_ThemingBonuses
SET Bonus = '6'
WHERE BuildingType = 'BUILDING_MUSEUM' AND Description = 'TXT_KEY_THEMING_BONUS_MUSEUM_1';

UPDATE Building_ThemingBonuses
SET Bonus = '6'
WHERE BuildingType = 'BUILDING_MUSEUM' AND Description = 'TXT_KEY_THEMING_BONUS_MUSEUM_2';

UPDATE Building_ThemingBonuses
SET Bonus = '5'
WHERE BuildingType = 'BUILDING_MUSEUM' AND Description = 'TXT_KEY_THEMING_BONUS_MUSEUM_3';

UPDATE Building_ThemingBonuses
SET Bonus = '5'
WHERE BuildingType = 'BUILDING_MUSEUM' AND Description = 'TXT_KEY_THEMING_BONUS_MUSEUM_4';

UPDATE Building_ThemingBonuses
SET Bonus = '5'
WHERE BuildingType = 'BUILDING_MUSEUM' AND Description = 'TXT_KEY_THEMING_BONUS_MUSEUM_5';

UPDATE Building_ThemingBonuses
SET Bonus = '5'
WHERE BuildingType = 'BUILDING_MUSEUM' AND Description = 'TXT_KEY_THEMING_BONUS_MUSEUM_6';

UPDATE Building_ThemingBonuses
SET Bonus = '5'
WHERE BuildingType = 'BUILDING_MUSEUM' AND Description = 'TXT_KEY_THEMING_BONUS_MUSEUM_7';

UPDATE Building_ThemingBonuses
SET Bonus = '5'
WHERE BuildingType = 'BUILDING_MUSEUM' AND Description = 'TXT_KEY_THEMING_BONUS_MUSEUM_8';