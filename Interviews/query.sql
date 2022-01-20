/**
 *  Problem: https://www.hackerrank.com/challenges/interviews/problem
 *  Interviews
*/

SELECT c.contest_id, c.hacker_id, c.name, SUM(sub.sumTotalSubmissions), SUM(sub.subTotalAcceptedSubmissions), SUM(vs.sumTotalViews), SUM(vs.totalUniqueViews)
FROM Contests AS c
INNER JOIN Colleges AS coll ON coll.contest_id = c.contest_id
INNER JOIN Challenges AS chall ON chall.college_id = coll.college_id
LEFT JOIN ( 
    SELECT v.challenge_id, SUM(v.total_views) AS sumTotalViews, SUM(v.total_unique_views) AS totalUniqueViews
    FROM View_Stats AS v
    GROUP BY v.challenge_id
) AS vs ON vs.challenge_id = chall.challenge_id
LEFT JOIN (
    SELECT ss.challenge_id, SUM(ss.total_submissions) AS sumTotalSubmissions, SUM(ss.total_accepted_submissions) AS subTotalAcceptedSubmissions
    FROM Submission_Stats AS ss
    GROUP BY ss.challenge_id
) AS sub ON sub.challenge_id = chall.challenge_id
GROUP BY  c.contest_id, c.hacker_id, c.name
HAVING c.contest_id IS NOT NULL and (SUM(vs.sumTotalViews) > 0 OR SUM(vs.totalUniqueViews) > 0 OR SUM(sub.sumTotalSubmissions) > 0 OR SUM(sub.subTotalAcceptedSubmissions) > 0)
ORDER BY c.contest_id
