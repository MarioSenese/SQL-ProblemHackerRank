/*
*   Problem: https://www.hackerrank.com/challenges/asian-population/problem
*   Population Census 
*/
SELECT SUM(c.POPULATION)
FROM COUNTRY AS ct
INNER JOIN CITY AS c ON c.COUNTRYCODE = ct.CODE
WHERE ct.CONTINENT IN ('Asia')
