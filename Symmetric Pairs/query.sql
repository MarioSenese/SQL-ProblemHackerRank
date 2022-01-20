/**
 *  Problem: https://www.hackerrank.com/challenges/symmetric-pairs/problem
 *  Symmetric Pairs
*/
SELECT f1.X, f1.Y
FROM Functions AS f1
INNER JOIN Functions AS f2 ON f1.X = f2.Y AND f2.X = f1.Y
GROUP BY f1.X, f1.Y
HAVING COUNT(f1.X) > 1 -- se una coppia risulta piu di una, viene considerata e raggruppata. Altrimenti, no.
    OR f1.X < f1.Y
ORDER BY f1.X
