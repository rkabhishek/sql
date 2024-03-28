-- https://leetcode.com/problems/customers-who-bought-products-a-and-b-but-not-c/description/

SELECT customer_id, customer_name
FROM Customers
WHERE
customer_id IN (SELECT customer_id FROM Orders WHERE product_name = 'A')
AND
customer_id IN (SELECT customer_id FROM Orders WHERE product_name = 'B')
AND
customer_id NOT IN (SELECT customer_id FROM Orders WHERE product_name = 'C');

-- another solution
--SELECT customer_id, customer_name
--FROM Customers
--WHERE customer_id
--IN (
--    SELECT customer_id
--    FROM Orders
--    GROUP BY customer_id
--    HAVING SUM(product_name = 'A') > 0
--        AND SUM(product_name = 'B') > 0
--        AND SUM(product_name = 'C') = 0
--);

