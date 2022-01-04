/*
  * Problem: https://www.hackerrank.com/challenges/draw-the-triangle-2/problem
  * Draw The Triangle 2
*/
SET @i = 0;
SELECT REPEAT('* ', @i := @i + 1)
FROM INFORMATION_SCHEMA.TABLES
WHERE @i < 20;
