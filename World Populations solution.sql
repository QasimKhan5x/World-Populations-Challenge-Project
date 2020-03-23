--What years are covered by the dataset?
SELECT DISTINCT year FROM population_years
ORDER BY year DESC;
--Largest population size for Gabon
SELECT population FROM population_years
WHERE country = 'Gabon'
ORDER BY population DESC LIMIT 1;
--What were the 10 lowest population countries
--in 2005?
SELECT country FROM population_years
WHERE year = 2005 ORDER BY population
LIMIT 10;
--What are all the distinct countries with a
--population of over 100 million in the
--year 2010?
SELECT DISTINCT country FROM population_years
WHERE population >= 10;
--How many countries in this dataset have the
--word “Islands” in their name?
SELECT DISTINCT country FROM population_years
WHERE country LIKE '%Islands%';
--What is the difference in population between
--2000 and 2010 in Indonesia?
SELECT population FROM population_years
WHERE country = 'Indonesia' AND
(year = 2000 OR year = 2010); 