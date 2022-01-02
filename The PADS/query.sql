
/*
 *	Problem: https://www.hackerrank.com/challenges/the-pads/problem
 *	The PADS
*/
SELECT CONCAT(o.Name, '(', LEFT(o.Occupation, 1), ')')
FROM OCCUPATIONS AS o
ORDER BY o.Name; 
SELECT CONCAT('There are a total of ', COUNT(oc.Occupation), ' ', LOWER(oc.Occupation), 's.')
FROM OCCUPATIONS AS oc
GROUP BY oc.Occupation
ORDER BY COUNT(oc.Occupation), oc.Occupation
