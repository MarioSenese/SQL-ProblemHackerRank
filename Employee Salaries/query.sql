/*
 *	Problem: https://www.hackerrank.com/challenges/salary-of-employee/problem
 *	Employee Salaries
*/
SELECT e.name
FROM Employee AS e
WHERE e.salary > 2000 AND e.months < 10
