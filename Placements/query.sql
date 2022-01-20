/**
 *  Problem: https://www.hackerrank.com/challenges/placements/problem
 *  Placements
*/

/*SELECT s.ID, s.Name, concat("| salary students: ", p.Salary, " |"), f.Friend_ID, concat("| salary friends: ", f.Salary, " |")*/

SELECT s.Name
FROM Students AS s
INNER JOIN (
    
    SELECT fr.ID, fr.Friend_ID, pk.Salary
    FROM Friends AS fr
    INNER JOIN Packages AS pk ON pk.ID = fr.Friend_ID

) AS f ON f.ID = s.ID
INNER JOIN Packages AS p ON p.ID = s.ID
WHERE p.Salary < f.Salary
ORDER BY f.Salary
