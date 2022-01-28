/**
 *  Problem: https://www.hackerrank.com/challenges/occupations/problem
 *  Occupations
*/

SELECT MIN(o1.Doctor), MIN(o1.Professor), MIN(o1.Singer), MIN(o1.Actor)
FROM (
    SELECT  (CASE WHEN o.Occupation = 'Doctor' THEN o.Name ELSE NULL END) AS Doctor, 
            (CASE WHEN o.Occupation = 'Professor' THEN o.Name ELSE NULL END) AS Professor,
            (CASE WHEN o.Occupation = 'Singer' THEN o.Name ELSE NULL END) AS Singer,
            (CASE WHEN o.Occupation = 'Actor' THEN o.Name ELSE NULL END) AS Actor, 
            ROW_NUMBER() OVER(PARTITION BY o.Occupation ORDER BY o.Name) AS numRow
    FROM Occupations AS o
) AS o1
GROUP BY o1.numRow

/* oppure */

WITH Pivot AS (
    
    SELECT  (CASE WHEN o.Occupation = 'Doctor' THEN o.Name ELSE NULL END) AS Doctor, 
            (CASE WHEN o.Occupation = 'Professor' THEN o.Name ELSE NULL END) AS Professor,
            (CASE WHEN o.Occupation = 'Singer' THEN o.Name ELSE NULL END) AS Singer,
            (CASE WHEN o.Occupation = 'Actor' THEN o.Name ELSE NULL END) AS Actor, 
            ROW_NUMBER() OVER(PARTITION BY o.Occupation ORDER BY o.Name) AS numRow
    FROM Occupations AS o
)

SELECT min(p.Doctor), min(p.Professor), min(p.Singer), min(p.Actor)
FROM Pivot AS p
GROUP BY p.numRow

