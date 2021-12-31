/*
 *	Problem: https://www.hackerrank.com/challenges/the-report/problem
 *	The Report
*/
SELECT (CASE WHEN g.Grade < 8 THEN 'NULL' ELSE s.Name END) AS Name, 
  g.Grade, s.Marks
FROM Students AS s
INNER JOIN Grades AS g ON s.Marks BETWEEN g.Min_Mark AND g.Max_Mark
ORDER BY g.Grade DESC, Name ASC, s.Marks ASC
