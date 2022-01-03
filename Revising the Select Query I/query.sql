/*
 *  Problem: https://www.hackerrank.com/challenges/revising-the-select-query/problem
 *  Revising the Select Query I
*/
SELECT *
FROM CITY AS c
WHERE c.Population > 100000 AND c.CountryCode IN ('USA')
