/*
 *  Problem: https://www.hackerrank.com/challenges/weather-observation-station-20/problem
 *  Weather Observation Station 20
*/

SET @ct := (SELECT COUNT(1) from STATION);
SET @row_id := 0;

SELECT ROUND(AVG(l.LAT_N), 4)
FROM (
    SELECT *
    FROM STATION AS s
    ORDER BY s.LAT_N) AS l
WHERE (SELECT @row_id := @row_id + 1) BETWEEN @ct/2 AND (@ct/2)+1
