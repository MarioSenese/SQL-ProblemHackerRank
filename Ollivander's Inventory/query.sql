/**
 * Problem: https://www.hackerrank.com/challenges/harry-potter-and-wands/problem
 * Ollivander's Inventory
*/
SELECT w.id, wp.age, w.coins_needed, w.power
FROM Wands AS w
INNER JOIN Wands_Property AS wp ON wp.code = w.code
WHERE wp.is_evil = 0 AND w.coins_needed = (
        SELECT MIN(coins_needed)
        FROM wands w1 
        INNER JOIN wands_property wp1 ON w1.code = wp1.code
        WHERE w.power = w1.power AND wp.Age = wp1.age
    )
ORDER BY w.power DESC, wp.age DESC
