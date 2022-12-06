DROP TABLE IF EXISTS 1nf;
CREATE TABLE 1nf

SELECT * FROM co2_pop_t_gdp AS t
JOIN (SELECT Entity AS c,Year AS y, energy_consumption
FROM Pollution.energy) 
AS e
ON t.Country = e.c AND t.Year = e.y