/**
 *  Problem: https://www.hackerrank.com/challenges/sql-projects/problem
 *  SQL Project Planning
*/
SET sql_mode = '';

WITH startDateNotInEndDate AS (
    SELECT ps.Start_Date
    FROM Projects AS ps
    WHERE ps.Start_Date NOT IN (
        SELECT End_Date
        FROM Projects
    )
),

endDateNotInStartDate AS (
    SELECT pe.End_Date
    FROM Projects AS pe
    WHERE pe.End_Date NOT IN (
        SELECT Start_Date
        FROM Projects
    )
)


SELECT s.Start_Date, e.End_Date
FROM startDateNotInEndDate s, endDateNotInStartDate AS e
WHERE s.Start_Date < e.End_Date
GROUP BY s.Start_Date
ORDER BY DATEDIFF(e.End_Date, s.Start_Date)

--- oppure ---

SELECT p1.Start_Date, p2.End_Date
FROM (
    SELECT p11.Start_Date
    FROM Projects AS p11
    WHERE p11.Start_Date NOT IN (
        SELECT p12.End_Date
        FROM Projects AS p12
    )
    ) p1, 
    (
        SELECT p21.End_Date
        FROM Projects AS p21
        WHERE p21.End_Date NOT IN (
            SELECT p22.Start_Date
            FROM Projects AS p22
        )
    ) p2
WHERE p1.Start_Date < p2.End_Date
GROUP BY p1.Start_Date
ORDER BY DATEDIFF(p2.End_Date, p1.Start_Date)
