/*
 *  Problem: https://www.hackerrank.com/challenges/the-company/problem
 *  New Companies
*/
SELECT c.company_code, 
       c.founder, 
       COUNT(DISTINCT e.lead_manager_code) as lmc, 
       COUNT(DISTINCT e.senior_manager_code) as smc, 
       COUNT(DISTINCT e.manager_code) as mc, 
       COUNT(DISTINCT e.employee_code) as ec
FROM Company AS c
INNER JOIN Employee AS e ON e.company_code = c.company_code
GROUP BY c.company_code, c.founder
ORDER BY c.company_code ASC
