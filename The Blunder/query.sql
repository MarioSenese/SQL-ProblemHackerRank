/*
 *	Problem: https://www.hackerrank.com/challenges/the-blunder/problem
 *	The Blunder
*/
SELECT CEIL(AVG(e.SALARY) - AVG(REPLACE(e.SALARY, '0', '')))
FROM EMPLOYEES AS e
