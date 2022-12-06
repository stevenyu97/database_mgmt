DROP TABLE IF EXISTS co2_pop;
CREATE TABLE co2_pop
SELECT * FROM co2
JOIN (SELECT rk, Country_Territory, Continent, 2020p AS Population FROM world_population) AS p_2020
ON co2.Country=p_2020.Country_Territory AND co2.Year = 2020
UNION ALL
SELECT * FROM co2
JOIN (SELECT rk, Country_Territory, Continent, 2015p AS Population FROM world_population) AS p_2015
ON co2.Country=p_2015.Country_Territory AND co2.Year = 2015
UNION ALL
SELECT * FROM co2
JOIN (SELECT rk, Country_Territory, Continent, 2010p AS Population FROM world_population) AS p_2010
ON co2.Country=p_2010.Country_Territory AND co2.Year = 2010
UNION ALL
SELECT * FROM co2
JOIN (SELECT rk, Country_Territory, Continent, 2000p AS Population FROM world_population) AS p_2000
ON co2.Country=p_2000.Country_Territory AND co2.Year = 2000
UNION ALL
SELECT * FROM co2
JOIN (SELECT rk, Country_Territory, Continent, 1990p AS Population FROM world_population) AS p_1990
ON co2.Country=p_1990.Country_Territory AND co2.Year = 1990
UNION ALL
SELECT * FROM co2
JOIN (SELECT rk, Country_Territory, Continent, 1980p AS Population FROM world_population) AS p_1980
ON co2.Country=p_1980.Country_Territory AND co2.Year = 1980
UNION ALL
SELECT * FROM co2
JOIN (SELECT rk, Country_Territory, Continent, 1970p AS Population FROM world_population) AS p_1970
ON co2.Country=p_1970.Country_Territory AND co2.Year = 1970
ORDER BY Country, Year;

