/**
 *  Problem: https://www.hackerrank.com/challenges/full-score/problem
 *  Top Competitors
*/
SELECT h.hacker_id, h.name 
FROM Hackers AS h
INNER JOIN Submissions AS s ON s.hacker_id = h.hacker_id
INNER JOIN Challenges AS c ON c.challenge_id = s.challenge_id
INNER JOIN Difficulty AS d ON d.difficulty_level = c.difficulty_level
WHERE s.score = d.score
GROUP BY h.hacker_id, h.name
HAVING COUNT(c.challenge_id) > 1
ORDER BY COUNT(c.challenge_id) DESC, h.hacker_id
