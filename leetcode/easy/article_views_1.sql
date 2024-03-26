-- https://leetcode.com/problems/article-views-i/description/

SELECT DISTINCT author_id AS id
FROM VIEWS
WHERE author_id = viewer_id
ORDER BY id;