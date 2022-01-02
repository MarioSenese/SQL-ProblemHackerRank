/*
 *	Problem: https://www.hackerrank.com/challenges/japan-population/problem
 *	Japan Population
*/
SELECT SUM(c.POPULATION)
FROM CITY AS c
WHERE c.COUNTRYCODE IN ('JPN')
