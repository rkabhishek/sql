-- https://leetcode.com/problems/game-play-analysis-i/description/

SELECT player_id, MIN(EVENT_DATE) AS FIRST_LOGIN
FROM ACTIVITY
GROUP BY player_id;