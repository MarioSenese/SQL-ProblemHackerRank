/*
 *	Problem: https://www.hackerrank.com/challenges/african-cities/problem
 *	African Cities
*/
SELECT ct.NAME
FROM CITY AS ct
/* LEFT JOIN COUNTRY AS co ON co.CODE = ct.COUNTRYCODE */
INNER JOIN COUNTRY AS co ON co.CODE = ct.COUNTRYCODE
WHERE co.CONTINENT IN ('Africa')
