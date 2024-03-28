-- https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/description/


SELECT customer_number
FROM Orders
GROUP BY customer_number
HAVING count(order_number) >= ALL(
    SELECT count(order_number)
    FROM Orders
    GROUP BY customer_number
);

-- works only if there is 1 customer with largest number of orders
--SELECT customer_number
--FROM Orders
--GROUP BY customer_number
--ORDER BY COUNT(order_number) DESC
--LIMIT 1;

