DROP TABLE IF EXISTS co2_pop_t_gdp;
CREATE TABLE co2_pop_t_gdp

SELECT * FROM co2_pop_t
JOIN (SELECT Country AS c, 1970g AS GDP
FROM Pollution.gdp) 
AS 1970g
ON co2_pop_t.Country = 1970g.c AND Year = 1970

UNION ALL

SELECT * FROM co2_pop_t
JOIN (SELECT Country AS c, 1980g AS GDP
FROM Pollution.gdp) 
AS 1980g
ON co2_pop_t.Country = 1980g.c AND Year = 1980

UNION ALL

SELECT * FROM co2_pop_t
JOIN (SELECT Country AS c, 1990g AS GDP
FROM Pollution.gdp) 
AS 1990g
ON co2_pop_t.Country = 1990g.c AND Year = 1990

UNION ALL

SELECT * FROM co2_pop_t
JOIN (SELECT Country AS c, 2000g AS GDP
FROM Pollution.gdp) 
AS 2000g
ON co2_pop_t.Country = 2000g.c AND Year = 2000

UNION ALL

SELECT * FROM co2_pop_t
JOIN (SELECT Country AS c, 2010g AS GDP
FROM Pollution.gdp) 
AS 2010g
ON co2_pop_t.Country = 2010g.c AND Year = 2010

UNION ALL

SELECT * FROM co2_pop_t
JOIN (SELECT Country AS c, 2015g AS GDP
FROM Pollution.gdp) 
AS 2015g
ON co2_pop_t.Country = 2015g.c AND Year = 2015
ORDER BY Country, Year;
