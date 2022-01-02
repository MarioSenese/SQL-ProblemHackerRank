/*
 *	Problem: https://www.hackerrank.com/challenges/what-type-of-triangle/problem
 *	Type of Triangle
*/
SELECT CASE
        WHEN (t.A+t.B > t.C) AND (t.B+t.C > t.A ) AND (t.A+t.C > t.B) THEN 
            CASE
                WHEN t.A = t.B AND t.B = t.C AND t.A = t.C THEN 'Equilateral'
                WHEN t.A = t.B OR t.A = t.C OR t.B = t.C THEN 'Isosceles'
                WHEN t.A <> t.B AND t.B <> t.C AND t.A <> t.C THEN 'Scalene'
            END
         ELSE 'Not A Triangle' 
    END
FROM TRIANGLES AS t
