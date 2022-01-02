/*
 *	Problem: https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem
 *	Revising Aggregations - The Count Function
*/
SELECT COUNT(*)
FROM CITY AS c
WHERE c.POPULATION > 100000
