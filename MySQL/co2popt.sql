DROP TABLE IF EXISTS co2_pop_t;
CREATE TABLE co2_pop_t

SELECT * FROM co2_pop
JOIN (SELECT Country AS c, 1970t AS avgT
FROM Pollution.temp) 
AS 1970t
ON co2_pop.Country = 1970t.c AND Year = 1970

UNION ALL

SELECT * FROM co2_pop
JOIN (SELECT Country AS c, 1980t AS avgT
FROM Pollution.temp) 
AS 1980t
ON co2_pop.Country = 1980t.c AND Year = 1980

UNION ALL

SELECT * FROM co2_pop
JOIN (SELECT Country AS c, 1990t AS avgT
FROM Pollution.temp) 
AS 1990t
ON co2_pop.Country = 1990t.c AND Year = 1990

UNION ALL

SELECT * FROM co2_pop
JOIN (SELECT Country AS c, 2000t AS avgT
FROM Pollution.temp) 
AS 2000t
ON co2_pop.Country = 2000t.c AND Year = 2000

UNION ALL

SELECT * FROM co2_pop
JOIN (SELECT Country AS c, 2010t AS avgT
FROM Pollution.temp) 
AS 2010t
ON co2_pop.Country = 2010t.c AND Year = 2010

UNION ALL

SELECT * FROM co2_pop
JOIN (SELECT Country AS c, 2015t AS avgT
FROM Pollution.temp) 
AS 2015t
ON co2_pop.Country = 2015t.c AND Year = 2015
ORDER BY Country, Year;


ALTER TABLE `Pollution`.`co2_pop_t` 
DROP COLUMN `c`,
DROP COLUMN `Country_Territory`;