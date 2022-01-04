/*
 *  Problem: https://www.hackerrank.com/challenges/draw-the-triangle-1/problem
 *  Draw The Triangle 1
*/
SET @i = 21;
SELECT REPEAT(' * ', @i := @i - 1)
FROM INFORMATION_SCHEMA.TABLES
