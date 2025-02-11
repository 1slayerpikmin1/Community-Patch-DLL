
-- Free Promotions
INSERT INTO Technology_FreePromotions
	(TechType, PromotionType)
VALUES
	('TECH_PENICILIN', 'PROMOTION_FALLOUT_REDUCTION'),
	('TECH_NANOTECHNOLOGY', 'PROMOTION_FALLOUT_IMMUNITY'),
	('TECH_BALLISTICS', 'PROMOTION_ICE_BREAKERS');

-- Art flip metallurgy/steel
UPDATE Technologies
SET PortraitIndex = '14'
WHERE Type = 'TECH_METALLURGY';

-- Art flip metallurgy/steel
UPDATE Technologies
SET PortraitIndex = '33'
WHERE Type = 'TECH_STEEL';

UPDATE Technologies
SET PortraitIndex = '28'
WHERE Type = 'TECH_METAL_CASTING';

-- Art/Name flip for Construction and Masonry
UPDATE Technologies
SET Civilopedia = 'TXT_KEY_TECH_CONSTRUCTION_DESC', Description = 'TXT_KEY_TECH_CONSTRUCTION_TITLE', PortraitIndex = '15'
WHERE Type = 'TECH_MASONRY';

UPDATE Technologies
SET Civilopedia = 'TXT_KEY_TECH_MASONRY_DESC', Description = 'TXT_KEY_TECH_MASONRY_TITLE', PortraitIndex = '6'
WHERE Type = 'TECH_CONSTRUCTION';


-- AI obsoletion logic
UPDATE Resources
SET AIStopTradingEra = 'ERA_FUTURE'
WHERE Type = 'RESOURCE_IRON';

-- Move Wealth to Currency
UPDATE Processes
SET TechPrereq = 'TECH_CURRENCY'
WHERE Type = 'PROCESS_WEALTH';

-- Move Research to Education
UPDATE Processes
SET TechPrereq = 'TECH_EDUCATION'
WHERE Type = 'PROCESS_RESEARCH';

-- Move Embarkation to Sailing (Help AI) -- Move Rearrange Trade Routes

UPDATE Technologies
SET AllowsEmbarking = '1', IconAtlas = 'COMMUNITY_ATLAS', PortraitIndex = '26'
WHERE Type = 'TECH_SAILING';

UPDATE Technologies
SET AllowsEmbarking = '0', PortraitIndex = '13'
WHERE Type = 'TECH_OPTICS';

UPDATE Technologies
SET InternationalTradeRoutesChange = '0'
WHERE Type IN
('TECH_ANIMAL_HUSBANDRY',
'TECH_SAILING',
'TECH_ENGINEERING',
'TECH_BANKING',
'TECH_PENICILIN',
'TECH_BIOLOGY');

UPDATE Technologies
SET InternationalTradeRoutesChange = '1'
WHERE Type IN
('TECH_OPTICS',
'TECH_CURRENCY',
'TECH_HORSEBACK_RIDING',
'TECH_ECONOMICS',
'TECH_COMPUTERS',
'TECH_ELECTRICITY');


-- Add Land Trade Route extension to Machinery

INSERT INTO Technology_TradeRouteDomainExtraRange
	(TechType, DomainType, Range)
VALUES
('TECH_MACHINERY', 'DOMAIN_LAND', '10');

-- Reduce Tourism modifier from Internet
UPDATE Technologies
SET InfluenceSpreadModifier = 50
WHERE Type = 'TECH_INTERNET';

-- City Embark Less/No Cost at Navigation, Rocketry
UPDATE Technologies
SET CityLessEmbarkCost = '1'
WHERE Type = 'TECH_NAVIGATION';

UPDATE Technologies
SET CityNoEmbarkCost = '1'
WHERE Type = 'TECH_ROCKETRY';

-- Future Tech
UPDATE Technologies
SET Happiness = '1'
WHERE Type = 'TECH_FUTURE_TECH';

-- Road/Railroad Speed Changes
UPDATE Routes
SET Movement = '50', FlatMovement = '50'
WHERE Type = 'ROUTE_ROAD';

UPDATE Routes
SET Movement = '25', FlatMovement = '25'
WHERE Type = 'ROUTE_RAILROAD';

-- Bombard Changes
UPDATE Technologies SET BombardRange=1 WHERE Type='TECH_AGRICULTURE';
--UPDATE Technologies SET BombardRange=2 WHERE Type='TECH_MATHEMATICS';
--UPDATE Technologies SET BombardIndirect=1 WHERE Type='TECH_GUNPOWDER';
--UPDATE Technologies SET BombardRange=3 WHERE Type='TECH_DYNAMITE';

--INSERT OR REPLACE INTO Defines(Name, Value) SELECT 'MAX_CITY_ATTACK_RANGE', max(BombardRange) FROM Technologies;
--UPDATE CustomModOptions SET Value=1 WHERE Name='EVENTS_CITY_BOMBARD';

-- TR Food/Production Scaling

UPDATE Eras
SET TradeRouteFoodBonusTimes100 = '100', TradeRouteProductionBonusTimes100 = '100'
WHERE Type = 'ERA_CLASSICAL';

UPDATE Eras
SET TradeRouteFoodBonusTimes100 = '200', TradeRouteProductionBonusTimes100 = '200'
WHERE Type = 'ERA_MEDIEVAL';

UPDATE Eras
SET TradeRouteFoodBonusTimes100 = '400', TradeRouteProductionBonusTimes100 = '400'
WHERE Type = 'ERA_RENAISSANCE';

UPDATE Eras
SET TradeRouteFoodBonusTimes100 = '600', TradeRouteProductionBonusTimes100 = '600'
WHERE Type = 'ERA_INDUSTRIAL';

UPDATE Eras
SET TradeRouteFoodBonusTimes100 = '800', TradeRouteProductionBonusTimes100 = '800'
WHERE Type = 'ERA_MODERN';

UPDATE Eras
SET TradeRouteFoodBonusTimes100 = '1000', TradeRouteProductionBonusTimes100 = '1000'
WHERE Type = 'ERA_POSTMODERN';

UPDATE Eras
SET TradeRouteFoodBonusTimes100 = '1200', TradeRouteProductionBonusTimes100 = '1200'
WHERE Type = 'ERA_FUTURE';

-- Tech Prereqs // NOTE THAT CORPORATIONS.SQL ALSO ALTERS THIS

-- Delete Prereqs
DELETE FROM Technology_PrereqTechs;

INSERT INTO Technology_PrereqTechs
	(TechType, PrereqTech)
VALUES
	('TECH_FUTURE_TECH', 'TECH_NANOTECHNOLOGY'),
	('TECH_FUTURE_TECH', 'TECH_PARTICLE_PHYSICS'),
	('TECH_FUTURE_TECH', 'TECH_NUCLEAR_FUSION'),
	('TECH_FUTURE_TECH', 'TECH_GLOBALIZATION'),
	('TECH_NANOTECHNOLOGY', 'TECH_ROBOTICS'),
	('TECH_NANOTECHNOLOGY', 'TECH_INTERNET'),
	('TECH_PARTICLE_PHYSICS', 'TECH_INTERNET'),
	('TECH_PARTICLE_PHYSICS', 'TECH_LASERS'),
	('TECH_PARTICLE_PHYSICS', 'TECH_ROBOTICS'),
	('TECH_GLOBALIZATION', 'TECH_LASERS'),
	('TECH_GLOBALIZATION', 'TECH_STEALTH'),
	('TECH_GLOBALIZATION', 'TECH_INTERNET'),
	('TECH_NUCLEAR_FUSION', 'TECH_STEALTH'),
	('TECH_NUCLEAR_FUSION', 'TECH_LASERS'),
	('TECH_ROBOTICS', 'TECH_ECOLOGY'),
	('TECH_ROBOTICS', 'TECH_TELECOM'),
	('TECH_LASERS', 'TECH_ADVANCED_BALLISTICS'),
	('TECH_LASERS', 'TECH_SATELLITES'),
	('TECH_INTERNET', 'TECH_SATELLITES'),
	('TECH_INTERNET', 'TECH_TELECOM'),
	('TECH_STEALTH', 'TECH_ADVANCED_BALLISTICS'),
	('TECH_STEALTH', 'TECH_MOBILE_TACTICS'),
	('TECH_ECOLOGY', 'TECH_ELECTRONICS'),
	('TECH_TELECOM', 'TECH_ELECTRONICS'),
	('TECH_TELECOM', 'TECH_COMPUTERS'),
	('TECH_SATELLITES', 'TECH_COMPUTERS'),
	('TECH_SATELLITES', 'TECH_NUCLEAR_FISSION'),
	('TECH_ADVANCED_BALLISTICS', 'TECH_NUCLEAR_FISSION'),
	('TECH_ADVANCED_BALLISTICS', 'TECH_RADAR'),
	('TECH_MOBILE_TACTICS', 'TECH_RADAR'),
	('TECH_ELECTRONICS', 'TECH_PENICILIN'),
	('TECH_ELECTRONICS', 'TECH_REFRIGERATION'),
	('TECH_COMPUTERS', 'TECH_ATOMIC_THEORY'),
	('TECH_COMPUTERS', 'TECH_REFRIGERATION'),
	('TECH_NUCLEAR_FISSION', 'TECH_ATOMIC_THEORY'),
	('TECH_NUCLEAR_FISSION', 'TECH_ROCKETRY'),
	('TECH_RADAR', 'TECH_ROCKETRY'),
	('TECH_RADAR', 'TECH_COMBINED_ARMS'),
	('TECH_PENICILIN', 'TECH_PLASTIC'),
	('TECH_REFRIGERATION', 'TECH_PLASTIC'),
	('TECH_REFRIGERATION', 'TECH_RADIO'),
	('TECH_ATOMIC_THEORY', 'TECH_FLIGHT'),
	('TECH_ATOMIC_THEORY', 'TECH_RADIO'),
	('TECH_COMBINED_ARMS', 'TECH_BALLISTICS'),
	('TECH_ROCKETRY', 'TECH_FLIGHT'),
	('TECH_ROCKETRY', 'TECH_BALLISTICS'),
	('TECH_PLASTIC', 'TECH_BIOLOGY'),
	('TECH_PLASTIC', 'TECH_ELECTRICITY'),
	('TECH_RADIO', 'TECH_ELECTRICITY'),
	('TECH_RADIO', 'TECH_REPLACEABLE_PARTS'),
	('TECH_RADIO', 'TECH_BIOLOGY'),
	('TECH_FLIGHT', 'TECH_COMBUSTION'),
	('TECH_FLIGHT', 'TECH_REPLACEABLE_PARTS'),
	('TECH_FLIGHT', 'TECH_ELECTRICITY'),
	('TECH_BALLISTICS', 'TECH_COMBUSTION'),
	('TECH_BALLISTICS', 'TECH_REPLACEABLE_PARTS'),
	('TECH_BIOLOGY', 'TECH_ARCHAEOLOGY'),
	('TECH_BIOLOGY', 'TECH_FERTILIZER'),
	('TECH_ELECTRICITY', 'TECH_FERTILIZER'),
	('TECH_ELECTRICITY', 'TECH_INDUSTRIALIZATION'),
	('TECH_REPLACEABLE_PARTS', 'TECH_INDUSTRIALIZATION'),
	('TECH_REPLACEABLE_PARTS', 'TECH_DYNAMITE'),
	('TECH_COMBUSTION', 'TECH_DYNAMITE'),
	('TECH_COMBUSTION', 'TECH_MILITARY_SCIENCE'),
	('TECH_ARCHAEOLOGY', 'TECH_SCIENTIFIC_THEORY'),
	('TECH_FERTILIZER', 'TECH_SCIENTIFIC_THEORY'),
	('TECH_FERTILIZER', 'TECH_RAILROAD'),
	('TECH_INDUSTRIALIZATION', 'TECH_RAILROAD'),
	('TECH_INDUSTRIALIZATION', 'TECH_STEAM_POWER'),
	('TECH_DYNAMITE', 'TECH_STEAM_POWER'),
	('TECH_DYNAMITE', 'TECH_RIFLING'),
	('TECH_MILITARY_SCIENCE', 'TECH_RIFLING'),
	('TECH_SCIENTIFIC_THEORY', 'TECH_ECONOMICS'),
	('TECH_SCIENTIFIC_THEORY', 'TECH_ARCHITECTURE'),
	('TECH_RAILROAD', 'TECH_ACOUSTICS'),
	('TECH_RAILROAD', 'TECH_ECONOMICS'),
	('TECH_STEAM_POWER', 'TECH_NAVIGATION'),
	('TECH_STEAM_POWER', 'TECH_ACOUSTICS'),
	('TECH_RIFLING', 'TECH_NAVIGATION'),
	('TECH_RIFLING', 'TECH_METALLURGY'),
	('TECH_ARCHITECTURE', 'TECH_BANKING'),
	('TECH_ARCHITECTURE', 'TECH_PRINTING_PRESS'),
	('TECH_ECONOMICS', 'TECH_PRINTING_PRESS'),
	('TECH_ECONOMICS', 'TECH_ASTRONOMY'),
	('TECH_ECONOMICS', 'TECH_BANKING'),
	('TECH_ACOUSTICS', 'TECH_ASTRONOMY'),
	('TECH_ACOUSTICS', 'TECH_PRINTING_PRESS'),
	('TECH_ACOUSTICS', 'TECH_GUNPOWDER'),
	('TECH_NAVIGATION', 'TECH_GUNPOWDER'),
	('TECH_NAVIGATION', 'TECH_CHEMISTRY'),
	('TECH_NAVIGATION', 'TECH_ASTRONOMY'),
	('TECH_METALLURGY', 'TECH_CHEMISTRY'),
	('TECH_METALLURGY', 'TECH_GUNPOWDER'),
	('TECH_BANKING', 'TECH_CIVIL_SERVICE'),
	('TECH_PRINTING_PRESS', 'TECH_CIVIL_SERVICE'),
	('TECH_PRINTING_PRESS', 'TECH_GUILDS'),
	('TECH_ASTRONOMY', 'TECH_GUILDS'),
	('TECH_ASTRONOMY', 'TECH_COMPASS'),
	('TECH_GUNPOWDER', 'TECH_COMPASS'),
	('TECH_GUNPOWDER', 'TECH_MACHINERY'),
	('TECH_CHEMISTRY', 'TECH_MACHINERY'),
	('TECH_CIVIL_SERVICE', 'TECH_THEOLOGY'),
	('TECH_CIVIL_SERVICE', 'TECH_EDUCATION'),
	('TECH_GUILDS', 'TECH_THEOLOGY'),
	('TECH_GUILDS', 'TECH_CHIVALRY'),
	('TECH_COMPASS', 'TECH_PHYSICS'),
	('TECH_COMPASS', 'TECH_CHIVALRY'),
	('TECH_MACHINERY', 'TECH_STEEL'),
	('TECH_MACHINERY', 'TECH_PHYSICS'),
	('TECH_EDUCATION', 'TECH_DRAMA'),
	('TECH_EDUCATION', 'TECH_PHILOSOPHY'),
	('TECH_THEOLOGY', 'TECH_PHILOSOPHY'),
	('TECH_THEOLOGY', 'TECH_DRAMA'),
	('TECH_THEOLOGY', 'TECH_CURRENCY'),
	('TECH_CHIVALRY', 'TECH_CURRENCY'),
	('TECH_CHIVALRY', 'TECH_ENGINEERING'),
	('TECH_CHIVALRY', 'TECH_PHILOSOPHY'),
	('TECH_PHYSICS', 'TECH_ENGINEERING'),
	('TECH_PHYSICS', 'TECH_CURRENCY'),
	('TECH_PHYSICS', 'TECH_METAL_CASTING'),
	('TECH_STEEL', 'TECH_METAL_CASTING'),
	('TECH_STEEL', 'TECH_ENGINEERING'),
	('TECH_DRAMA', 'TECH_OPTICS'),
	('TECH_DRAMA', 'TECH_WRITING'),
	('TECH_PHILOSOPHY', 'TECH_WRITING'),
	('TECH_PHILOSOPHY', 'TECH_MATHEMATICS'),
	('TECH_PHILOSOPHY', 'TECH_OPTICS'),
	('TECH_CURRENCY', 'TECH_MATHEMATICS'),
	('TECH_CURRENCY', 'TECH_CONSTRUCTION'),
	('TECH_CURRENCY', 'TECH_WRITING'),
	('TECH_ENGINEERING', 'TECH_MATHEMATICS'),
	('TECH_ENGINEERING', 'TECH_IRON_WORKING'),
	('TECH_ENGINEERING', 'TECH_CONSTRUCTION'),
	('TECH_METAL_CASTING', 'TECH_CONSTRUCTION'),
	('TECH_METAL_CASTING', 'TECH_IRON_WORKING'),
	('TECH_OPTICS', 'TECH_SAILING'),
	('TECH_OPTICS', 'TECH_HORSEBACK_RIDING'),
	('TECH_WRITING', 'TECH_CALENDAR'),
	('TECH_WRITING', 'TECH_HORSEBACK_RIDING'),
	('TECH_MATHEMATICS', 'TECH_MASONRY'),
	('TECH_MATHEMATICS', 'TECH_CALENDAR'),
	('TECH_CONSTRUCTION', 'TECH_ARCHERY'),
	('TECH_CONSTRUCTION', 'TECH_MASONRY'),
	('TECH_IRON_WORKING', 'TECH_BRONZE_WORKING'),
	('TECH_IRON_WORKING', 'TECH_ARCHERY'),
	('TECH_SAILING', 'TECH_POTTERY'),
	('TECH_MASONRY', 'TECH_ANIMAL_HUSBANDRY'),
	('TECH_MASONRY', 'TECH_THE_WHEEL'),
	('TECH_HORSEBACK_RIDING', 'TECH_TRAPPING'),
	('TECH_HORSEBACK_RIDING', 'TECH_POTTERY'),
	('TECH_CALENDAR', 'TECH_THE_WHEEL'),
	('TECH_CALENDAR', 'TECH_TRAPPING'),
	('TECH_ARCHERY', 'TECH_MINING'),
	('TECH_ARCHERY', 'TECH_ANIMAL_HUSBANDRY'),
	('TECH_BRONZE_WORKING', 'TECH_MINING'),
	('TECH_TRAPPING', 'TECH_AGRICULTURE'),
	('TECH_ANIMAL_HUSBANDRY', 'TECH_AGRICULTURE'),
	('TECH_THE_WHEEL', 'TECH_AGRICULTURE'),
	('TECH_POTTERY', 'TECH_AGRICULTURE'),
	('TECH_MINING', 'TECH_AGRICULTURE');
