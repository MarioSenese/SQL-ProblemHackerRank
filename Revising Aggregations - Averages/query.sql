/*
 *	Problem: https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem
 *	Revising Aggregations - Averages
*/
SELECT AVG(c.POPULATION)
FROM CITY AS c
WHERE c.DISTRICT IN ('California')
