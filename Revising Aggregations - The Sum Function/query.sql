/*
 *	https://www.hackerrank.com/challenges/revising-aggregations-sum/problem
 *	Revising Aggregations - The Sum Function
*/
SELECT SUM(c.POPULATION)
FROM CITY AS c
WHERE c.DISTRICT IN ('California')
