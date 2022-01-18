/**
 *  Problem: https://www.hackerrank.com/challenges/contest-leaderboard/problem
 *  Contest Leaderboard
*/
SELECT h.hacker_id, h.name, SUM(s.score) AS scoreTot
FROM Hackers AS h
INNER JOIN (
    SELECT hacker_id, MAX(score) as score
    FROM Submissions 
    GROUP BY hacker_id, challenge_id
) AS s ON s.hacker_id = h.hacker_id
GROUP BY h.hacker_id, h.name
HAVING scoreTot > 0
ORDER BY scoreTot DESC, h.hacker_id
