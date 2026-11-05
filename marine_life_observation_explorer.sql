CREATE TABLE IF NOT EXISTS marine_observation (
    observation_id INTEGER PRIMARY KEY,
    animal_name TEXT NOT NULL,
    animal_group TEXT NOT NULL,
    habitat TEXT NOT NULL,
    depth_m INTEGER NOT NULL,
    estimated_weight_kg REAL NOT NULL
);

INSERT INTO marine_observation VALUES (1, 'Killer Whale', 'Mammal', 'Open Ocean', 50, 60000.0);
INSERT INTO marine_observation VALUES (2, 'Seal','Mammal', 'Antarctic Waters', 25, 200.0);
INSERT INTO marine_observation VALUES (3, 'Tiger Shark', 'Fish', 'Open Reef', 35, 5000.0);
INSERT INTO marine_observation VALUES (4, 'Clownfish', 'Fish', 'Coral Reef', 15, 10.0);
INSERT INTO marine_observation VALUES (5, 'Seahorse', 'Fish', 'Open Ocean', 70, 9.0);
INSERT INTO marine_observation VALUES (6, 'Giant Squid', 'Mollusc', 'Seabed', 60, 25.0);
INSERT INTO marine_observation VALUES (7, 'Sponge', 'Invertebrate', 'Open Ocean', 100, 5.0);
INSERT INTO marine_observation VALUES (8, 'Spotted Eagle Ray', 'Fish', 'Tropical Waters', 75, 150.0);

SELECT * FROM marine_observation;

SELECT animal_group FROM marine_observation;
SELECT DISTINCT animal_group FROM marine_observation;

SELECT COUNT(DISTINCT animal_group) AS unique_animal_groups
FROM marine_observation;

SELECT COUNT(observation_id) AS total_observations
FROM marine_observation;

SELECT COUNT(observation_id) AS open_ocean_observations
FROM marine_observation
WHERE habitat = 'Open Ocean';

SELECT SUM(estimated_weight_kg) AS total_estimated_weight_kg
FROM marine_observation;

SELECT AVG(depth_m) AS average_observation_depth_m
FROM marine_observation;

SELECT
    COUNT(observation_id) AS total_observations,
    COUNT(DISTINCT animal_group) AS unique_animal_groups,
    SUM(estimated_weight_kg) AS total_estimated_weight_kg,
    AVG(depth_m) AS average_observation_depth_m
FROM marine_observation;
