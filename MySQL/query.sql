USE Pollution;

SELECT Country, Continent, SUM(CO2_emission)
FROM 1nf
GROUP BY Country
ORDER BY SUM(CO2_emission) DESC;

SELECT Country, Continent, (MAX(CO2_emission) - MIN(CO2_emission)) AS Diff_emission
FROM 1nf
GROUP BY Country
ORDER BY Diff_emission DESC;

SELECT *, CO2_emission/population AS emission_per_capita, 
GDP/population  AS gdp_per_capita,
energy_consumption/population * POWER(10,12) AS consumption_per_capita
FROM 1nf;

SELECT Country, AVG(Population), AVG(GDP), AVG(energy_consumption), AVG(CO2_emission)
FROM 1nf
GROUP BY Country;

SELECT Year, AVG(Population), AVG(GDP), AVG(energy_consumption), AVG(CO2_emission)
FROM 1nf
GROUP BY Year;

SELECT Country, Year, CO2_emission 
FROM 1nf 
WHERE CO2_emission IN
(SELECT MAX(CO2_emission)
FROM 1nf
GROUP BY Year);

SELECT Country, CO2_emission
FROM 1nf
GROUP BY Country
ORDER BY (MAX(avgT) - MIN(avgT)) DESC LIMIT 10;

SELECT Country, Continent, MAX(CO2_emission) - MIN(CO2_emission) AS Diff_emission
FROM 1nf
GROUP BY Country
ORDER BY (MAX(avgT) - MIN(avgT)) DESC LIMIT 10;

SELECT Country, Continent, MAX(CO2_emission/population) - MIN(CO2_emission/population) AS Diff_emission
FROM 1nf
GROUP BY Country
ORDER BY (MAX(energy_consumption/population) - MIN(energy_consumption/population)) DESC LIMIT 10;

SELECT Country, Continent, MAX(CO2_emission/population) - MIN(CO2_emission/population) AS Diff_emission
FROM 1nf
GROUP BY Country
ORDER BY Diff_emission DESC LIMIT 10;


SELECT Continent, (MAX(CO2_emission) - MIN(CO2_emission)) AS Diff_emission
FROM 1nf
GROUP BY Continent
ORDER BY Diff_emission DESC;
