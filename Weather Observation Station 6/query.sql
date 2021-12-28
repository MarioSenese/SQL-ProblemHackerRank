/*
 *	Problem: https://www.hackerrank.com/challenges/weather-observation-station-6/problem
 *	Weather Observation Station 6
*/
SELECT s.CITY
FROM STATION AS s
WHERE s.CITY REGEXP "^[aeiou].*"
GROUP BY s.CITY