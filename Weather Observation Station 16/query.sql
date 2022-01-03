/*
 *  Problem: https://www.hackerrank.com/challenges/weather-observation-station-16/problem
 *  Weather Observation Station 16
*/
SELECT ROUND(MIN(s.LAT_N), 4)
FROM STATION AS s
WHERE s.LAT_N > 38.7780
