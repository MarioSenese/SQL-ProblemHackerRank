/*
 *	Problem: https://www.hackerrank.com/challenges/weather-observation-station-14/problem
 *	Weather Observation Station 14
*/
SELECT ROUND(MAX(s.LAT_N), 4)
FROM STATION AS s
WHERE s.LAT_N < 137.2345
