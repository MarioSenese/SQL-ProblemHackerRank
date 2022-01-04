/*
 *  Problem: https://www.hackerrank.com/challenges/weather-observation-station-18/problem
 *  Weather Observation Station 18
*/
SELECT ROUND(ABS(MIN(s.LAT_N)-MAX(s.LAT_N))+ABS(MIN(s.LONG_W )-MAX(s.LONG_W )), 4)
FROM STATION AS s
