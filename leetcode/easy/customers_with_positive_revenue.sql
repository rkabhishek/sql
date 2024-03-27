-- https://leetcode.com/problems/find-customers-with-positive-revenue-this-year/description/

SELECT customer_id
FROM Customers
WHERE revenue > 0 AND year = 2021;