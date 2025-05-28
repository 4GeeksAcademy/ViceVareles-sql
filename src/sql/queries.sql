-- queries.sql
-- Complete each mission by writing your SQL query below the instructions.
-- Don't forget to end each query with a semicolon ;

SELECT * FROM regions;
SELECT * FROM species;
SELECT * FROM climate;
SELECT * FROM observations;


-- MISSION 1
-- Your query here
SELECT 
    regions.name,
    regions.country,
    COUNT(DISTINCT species.id) AS total_species
FROM observations
JOIN species ON observations.species_id = species.id
JOIN regions ON observations.region_id = regions.id
GROUP BY regions.name, regions.country
ORDER BY total_species DESC;

-- MISSION 2
-- Your query here:
-- lo revisado en grupos
-- MISSION 1
-- Your query here;
SELECT name, country FROM regions
INNER JOIN observations ON regions.id = observations.region_id
WHERE count > 0 GROUP BY region_id ORDER BY COUNT(*) DESC;

-- MISSION 2
-- Your query here;
SELECT strftime('%m',observation_date) AS mes FROM observations
GROUP BY mes ORDER BY COUNT(count) DESC;

-- MISSION 3
-- Your query here:


-- MISSION 4
-- Your query here:


-- MISSION 5
-- Your query here:


-- MISSION 6
-- Your query here:


-- MISSION 7
-- Your query here:


-- MISSION 8
-- Your query here:
