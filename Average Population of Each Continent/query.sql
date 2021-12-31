/*
 *	Problem: https://www.hackerrank.com/challenges/average-population-of-each-continent/problem
 *	Average Population of Each Continent
*/
SELECT co.Continent, FLOOR(AVG(ct.Population))
FROM COUNTRY AS co
INNER JOIN CITY AS ct ON co.CODE = ct.COUNTRYCODE
GROUP BY co.Continent
