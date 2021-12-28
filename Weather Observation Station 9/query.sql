/*
 *	Problem: https://www.hackerrank.com/challenges/weather-observation-station-9/problem
 *	Weather Observation Station 9
*/
SELECT s.CITY
FROM STATION AS s
WHERE s.CITY NOT REGEXP "^[aeiou].*"
GROUP BY s.CITY