-- https://leetcode.com/problems/queries-quality-and-percentage/description/

SELECT query_name, ROUND(AVG(rating/position), 2) as quality, ROUND(SUM(rating < 3) * 100 / COUNT(*), 2) as poor_query_percentage
FROM Queries
WHERE query_name IS NOT NULL
GROUP BY query_name;