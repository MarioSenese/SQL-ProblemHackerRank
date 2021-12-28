/*
 *	Problem: https://www.hackerrank.com/challenges/weather-observation-station-8/problem
 *	Weather Observation Station 8
*/
SELECT s.CITY
FROM STATION AS s
WHERE s.CITY REGEXP "^[aeiou].*[aeiou]$"
GROUP BY s.CITY