/*
 *	Problem: https://www.hackerrank.com/challenges/weather-observation-station-13/problem
 *	Weather Observation Station 13
*/
SELECT ROUND(SUM(s.LAT_N), 4)
FROM STATION AS s
WHERE s.LAT_N BETWEEN 38.7880 AND 137.2345
