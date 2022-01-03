/*
 *  Problem: https://www.hackerrank.com/challenges/weather-observation-station-17/problem
 *  Weather Observation Station 17
*/
SELECT ROUND(LONG_W, 4)
FROM STATION AS s
WHERE s.LAT_N = (
    SELECT MIN(_s.LAT_N)
    FROM STATION AS _s
    WHERE _s.LAT_N > 38.7780
)
