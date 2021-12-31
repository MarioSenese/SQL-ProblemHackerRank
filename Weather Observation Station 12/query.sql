/*
 *	Problem: https://www.hackerrank.com/challenges/weather-observation-station-12/problem
 *	Weather Observation Station 12
*/
SELECT s.CITY
FROM STATION AS s
WHERE s.CITY NOT REGEXP "^[aeiou].*" AND s.CITY NOT REGEXP "[aeiou]$.*"
GROUP BY s.CITY
