DROP TABLE IF EXISTS 2nf_1;
CREATE TABLE 2nf_1

SELECT DISTINCT Country, Continent FROM 1nf;

DROP TABLE IF EXISTS 2nf_2;
CREATE TABLE 2nf_2

SELECT Country, Year, CO2_emission, Population, avgT, GDP, energy_consumption FROM 1nf;