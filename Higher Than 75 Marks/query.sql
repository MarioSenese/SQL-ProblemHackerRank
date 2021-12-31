/*
 *	Problem: https://www.hackerrank.com/challenges/more-than-75-marks/problem
 *	Higher Than 75 Marks
*/
SELECT s.Name
FROM STUDENTS AS s
WHERE s.Marks > 75
ORDER BY RIGHT(s.Name, 3), s.ID ASC
