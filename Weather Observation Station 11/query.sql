/*
 *	Problem: https://www.hackerrank.com/challenges/weather-observation-station-11/problem
 *	Weather Observation Station 11
*/
SELECT s.CITY
FROM STATION AS s
WHERE s.CITY NOT REGEXP "^[aeiou].*[aeiou]$"
/*WHERE s.CITY NOT REGEXP "^[aeiou].*" OR s.CITY NOT REGEXP "[aeiou]$"*/
GROUP BY s.CITY
