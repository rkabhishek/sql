-- https://leetcode.com/problems/duplicate-emails/description/

SELECT email
FROM PERSON
GROUP BY email
HAVING COUNT(email) > 1;