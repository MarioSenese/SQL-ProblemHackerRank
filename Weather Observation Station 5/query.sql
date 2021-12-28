/*
 *	Problem: https://www.hackerrank.com/challenges/weather-observation-station-5/problem
 *	Weather Observation Station 5
*/
SELECT *
FROM (
    SELECT s.CITY, LENGTH(s.CITY)
    FROM STATION AS s
    ORDER BY LENGTH(s.CITY) ASC, s.CITY ASC
    LIMIT 1
) AS tab1
UNION
SELECT *
FROM (
    SELECT s.CITY, LENGTH(s.CITY)
    FROM STATION AS s
    ORDER BY LENGTH(s.CITY) DESC, s.CITY ASC
    LIMIT 1
) AS tab2