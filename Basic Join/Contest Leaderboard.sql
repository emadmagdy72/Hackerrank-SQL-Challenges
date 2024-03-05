SELECT HACKERS.HACKER_ID, HACKERS.NAME, S.TOTAL_SCORE
FROM 
    (
        SELECT HACKER_ID, SUM(MAX_SOCRE) as TOTAL_SCORE 
        FROM
            (
                SELECT HACKER_ID, MAX(SCORE) AS MAX_SOCRE FROM SUBMISSIONS
                GROUP BY HACKER_ID, CHALLENGE_ID
            ) AS SUB
        GROUP BY HACKER_ID
    ) AS S
INNER JOIN HACKERS ON HACKERS.HACKER_ID = S.HACKER_ID
WHERE S.TOTAL_SCORE > 0
ORDER BY S.TOTAL_SCORE DESC, S.HACKER_ID;