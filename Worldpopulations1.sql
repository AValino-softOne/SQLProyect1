-- This is the first query:

SELECT DISTINCT year from population_years;

-- Add your additional queries below:



-- What were the 10 lowest population countries in 2005?
SELECT *
FROM population_years
WHERE population IS NOT NULL 
AND year=2005
GROUP BY country
ORDER BY population 
LIMIT 10;


-- What are all the distinct countries with a population of over 100 million in the year 2010
SELECT *
FROM population_years
WHERE population IS NOT NULL 
AND year=2010
AND population>100
GROUP BY country
ORDER BY population;



-- WHow many countries in this dataset have the word “Islands” in their name?
SELECT DISTINCT country
FROM population_years
WHERE country LIKE '%islands%';


