/*
 *	Problem: https://www.hackerrank.com/challenges/weather-observation-station-2/problem
 *	Weather Observation Station 2
*/
SELECT ROUND(SUM(s.LAT_N), 2), ROUND(SUM(s.LONG_W), 2)
FROM STATION AS s
