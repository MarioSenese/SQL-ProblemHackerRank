/*
 *	https://www.hackerrank.com/challenges/weather-observation-station-7/problem
 *	Weather Observation Station 7
*/
SELECT s.CITY
FROM STATION AS s
WHERE s.CITY REGEXP "[aeiou]$.*"
GROUP BY s.CITY