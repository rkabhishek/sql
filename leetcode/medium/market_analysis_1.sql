-- https://leetcode.com/problems/market-analysis-i/description/

SELECT Users.user_id as buyer_id, Users.join_date, COUNT(Orders.order_id) as orders_in_2019
FROM Users
LEFT JOIN Orders
ON Users.user_id = Orders.buyer_id AND YEAR(Orders.order_date) = '2019'
GROUP BY Users.user_id, Users.join_date
ORDER BY Users.user_id;