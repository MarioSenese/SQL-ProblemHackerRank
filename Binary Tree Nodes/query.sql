/**
 *  Problem: https://www.hackerrank.com/challenges/binary-search-tree-1/problem
 *  Binary Tree Nodes
*/
SELECT (
    CASE 
        WHEN a.P IS NULL THEN CONCAT(a.N, ' Root') 
        WHEN a.N IN ( SELECT P FROM BST ) THEN CONCAT(a.N, ' Inner') ELSE CONCAT(a.N, ' Leaf') 
    END
) AS r
FROM BST AS a
ORDER BY a.N 
