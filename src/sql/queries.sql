-- queries.sql
-- Complete each mission by writing your SQL query below the instructions.
-- Don't forget to end each query with a semicolon ;

SELECT * FROM regions;
SELECT * FROM species;
SELECT * FROM climate;
SELECT * FROM observations;

SELECT 
    regions.name, 
    regions.country,
    COUNT(DISTINCT species.id) AS total_species
FROM observations
JOIN species ON observations.species_id = species.id
JOIN regions ON observations.region_id = regions.id
GROUP BY regions.name, regions.country
ORDER BY total_species DESC;
SELECT strftime('%m',observation_date) AS mes FROM observations
GROUP BY mes ORDER BY COUNT(*) DESC;
SELECT scientific_name, common_name, SUM(count) AS viewings FROM species 
INNER JOIN observations ON species.id = observations.species_id 
GROUP BY species_id ORDER BY viewings ASC;
SELECT 
    regions.name, 
    regions.country,
    COUNT(DISTINCT species.id) AS total_species
FROM observations
JOIN species ON observations.species_id = species.id
JOIN regions ON observations.region_id = regions.id
GROUP BY regions.name, regions.country
ORDER BY total_species DESC
LIMIT 1;
SELECT scientific_name, common_name, COUNT(count) AS viewings FROM species 
INNER JOIN observations ON species.id = observations.species_id WHERE count > 0
GROUP BY species_id ORDER BY viewings DESC;
SELECT observer, COUNT(*) AS registers FROM observations
GROUP BY observer ORDER BY registers DESC;
SELECT scientific_name, common_name FROM species 
LEFT JOIN observations ON species.id = observations.species_id 
WHERE count IS NULL OR count = 0
GROUP BY species.id;
SELECT observation_date FROM observations
WHERE count > 0 GROUP BY observation_date 
ORDER BY COUNT(*) DESC;





