/*
 *	Problem: https://www.hackerrank.com/challenges/what-type-of-triangle/problem
 *	Type of Triangle
*/
SELECT e.salary*e.months AS earnings, COUNT(*)
FROM Employee AS e
GROUP BY earnings
ORDER BY earnings DESC
LIMIT 1
