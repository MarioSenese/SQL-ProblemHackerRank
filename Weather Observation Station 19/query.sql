/*
 *  Problem: https://www.hackerrank.com/challenges/weather-observation-station-19/problem
 *  Weather Observation Station 19
*/
SELECT ROUND(SQRT(POWER(MIN(s.LAT_N)-MAX(s.LAT_N), 2)+POWER(MIN(s.LONG_W)-MAX(s.LONG_W), 2)), 4)
FROM STATION AS s
