/**
 *  Problem: https://www.hackerrank.com/challenges/challenges/problem
 *  Challenges
*/
SELECT h.hacker_id, h.name, COUNT(c.challenge_id) AS total
FROM Hackers AS h
INNER JOIN Challenges AS c ON c.hacker_id = h.hacker_id
GROUP BY h.hacker_id, h.name
HAVING total = ( -- rilevo tutti coloro che hanno il numero "massimo" di challenge create
    SELECT MAX(t.totalCh)
    FROM (
        SELECT COUNT(c1.challenge_id) AS totalCh
        FROM Challenges AS c1
        GROUP BY c1.hacker_id
    ) AS t
) OR total IN ( -- oppure rilevo tutti gli "unici" che hanno creato un numero di challenge, escludendo coloro che hanno creato lo stesso numero di challenge (inferiore al numero massimo di challenge)
    SELECT t1.totalCh AS tt
    FROM (
        SELECT COUNT(c1.challenge_id) AS totalCh
        FROM Challenges AS c1
        GROUP BY c1.hacker_id
    ) AS t1
    GROUP BY tt
    HAVING COUNT(tt) = 1
)
ORDER BY total DESC, h.hacker_id
