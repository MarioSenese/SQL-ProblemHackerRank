/*
 *  Problem: https://www.hackerrank.com/challenges/weather-observation-station-15/problem
 *  Weather Observation Station 15
*/
SELECT ROUND(s.LONG_W, 4) as w
FROM STATION AS s
WHERE s.LAT_N = (
    SELECT MAX(_s.LAT_N)
    FROM STATION AS _s
    WHERE _s.LAT_N < 137.2345
)
