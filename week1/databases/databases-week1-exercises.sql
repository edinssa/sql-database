-- 1. What are the names of countries with population greater than 8 million?
SELECT Name 
FROM country
WHERE Population > 8000000;

-- 2. What are the names of countries that have “land” in their names?
SELECT name 
FROM country 
WHERE name like '%land%';

-- 3. What are the names of the cities with population in between 500,000 and 1 million?
SELECT name, Population 
FROM city 
Where Population > 500000 and Population < 1000000;

-- 4. What's the name of all the countries on the continent ‘Europe’?
SELECT name 
FROM country 
WHERE Continent = 'Europe';

-- 5. What are the names of all the cities in the Netherlands?
SELECT city.name 
FROM city
JOIN country on city.CountryCode = country.Code  
WHERE country.name = 'Netherlands';

-- 6. What is the population of Rotterdam?
SELECT name, population 
FROM city 
WHERE name = 'Rotterdam';

-- 7. Which countries don't have a head of state? Hint: looks for NULL and '' values
SELECT name 
FROM country 
WHERE HeadOfState is NULL;

-- 8. What's the top 10 least populated cities? Return the name and population
SELECT name, Population
FROM city 
ORDER BY Population desc 
LIMIT 10;

-- 9. What countries in Africa have the local name the same as their common name?
SELECT name 
FROM country 
WHERE Continent = 'africa' and name = LocalName;

-- 10. What countries have Spanish as official language? Hint: see countrylanguage table
SELECT ...

-- 11. What countries have official languages spoken between 1% and 10% of the population?
SELECT ...

-- 12. What languages are spoken by over 90% of the population of a country? Return just the language names, but don't repeat entries
SELECT ...

-- 13. In which countries is 'Creole English' used? Order by descending percentage of speakers
SELECT ...

-- 14. What are the 5 oldest countries (by independence date) with some form of republic government? Tip: there are multiple types of republic
SELECT ...

-- 15. For each country, how many people speak each language? Important: we want absolute values, not a percentage. Return the name of the country, the name of the language, and number of speakers of that language - Hint: you need both the country and countrylanguage tables - Hint: you can do calculations between columns, for example (SELECT a - b from table;)
SELECT ...


-- BONUS
-- 1. What is the total population of the world?
SELECT ...

-- 2. What is the average population of countries in Europe?
SELECT ...

-- 3. How many *official* languages are spoken in Belgium (`BEL`)? Return the country code, and the number of languages as "Number of Languages"
SELECT ...


-- MORE
-- 1. Retrieve the names of all the cities along with their respective country names, make sure the column names are easy to understand.
SELECT ...

-- 2. Find the average life expectancy of countries in the continent 'Europe'.
SELECT ...

-- 3. Get the names and populations of cities in the district 'California'.
SELECT ...

-- 4. Retrieve the capital city of each country along with the country name.
SELECT ...

-- 5. Find the largest city by population in each country.
SELECT ...

-- 6. List the names of all cities with a population of over 1 million in the continent of 'Asia'.
SELECT ...

-- 7. Get the names and continents of countries that do not have an official language recorded in the database.
SELECT ...

-- 8. List the countries in the 'Oceania' continent with an average life expectancy over 70.
SELECT ...

-- 9. Find the total number of languages spoken in the continent 'Africa'.
SELECT ...

-- 10. Retrieve the names and populations of cities located in countries with a surface area greater than 1 million square kilometers.
SELECT ...

-- 11. Retrieve the names and populations of capital cities with populations over 500,000.
SELECT ...

-- 12. List the names and continents of countries where English is an official language.
SELECT ...

-- 13. Find the name of the country with the highest life expectancy.
SELECT ...

-- 14. Get the names of countries in the 'South America' continent with cities having a population over 1 million.
SELECT ...

-- 15. Find the name and population of the smallest city (by population) in the country 'India'.
SELECT ...

-- 16. Retrieve the country name and its corresponding capital city's name where the capital's population is more than 1 million.
SELECT ...

-- 17. List the names of countries that have no cities in the database.
SELECT ...

-- 18. Get the name and population of the largest city in the continent 'South America'.
SELECT ...

-- 19. List the names and populations of all cities in countries where the official language is 'Spanish'.
SELECT ...

-- 20. Get the name of the country and the population of the city with the highest population in that country.
SELECT ...
