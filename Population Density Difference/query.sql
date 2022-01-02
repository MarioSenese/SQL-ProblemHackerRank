/*
 *	Problem: https://www.hackerrank.com/challenges/population-density-difference/problem
 *	Population Density Difference
*/
SELECT MAX(c.POPULATION)-MIN(c.POPULATION)
FROM CITY AS c
